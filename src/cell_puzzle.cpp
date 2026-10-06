#include "cell_puzzle.h"

#include <algorithm>
#include <cstdlib>
#include <utility>

namespace
{
using Neighbors = std::array<std::array<int8_t, 17>, 49>;
constexpr Neighbors makeNeighbors(int distance)
{
    Neighbors result{};
    for (int source = 0; source < 49; ++source)
    {
        result[source].fill(-1);
        size_t count = 0;
        for (int destination = 0; destination < 49; ++destination)
        {
            const int signedX = source % 7 - destination % 7;
            const int signedY = source / 7 - destination / 7;
            const int dx = signedX < 0 ? -signedX : signedX;
            const int dy = signedY < 0 ? -signedY : signedY;
            if (std::max(dx, dy) == distance)
                result[source][count++] = static_cast<int8_t>(destination);
        }
    }
    return result;
}
// All decoded DOS/Win32 lists use this ascending cell order. Preserve it:
// iterator order affects pruning, tie selection, and ranked insertion order.
constexpr auto adjacent = makeNeighbors(1);
constexpr auto distanceTwo = makeNeighbors(2);
constexpr std::array<std::array<int, 3>, 7> strategies{{
    {{1, 1, 1}}, {{2, 1, 1}}, {{2, 2, 1}}, {{2, 2, 2}},
    {{3, 2, 2}}, {{3, 3, 2}}, {{3, 3, 3}}
}};
int signedScore(int score)
{
    const auto byte = static_cast<uint8_t>(score);
    return byte < 128 ? byte : static_cast<int>(byte) - 256;
}
}

void CellPuzzle::countBoardPieces(Board &board)
{
    board.counts.fill(0);
    for (const auto piece : board.cells)
        if (piece >= 1 && piece <= 4)
            ++board.counts[piece - 1];
}

void CellPuzzle::convertAdjacentPieces(Board &board, uint8_t destination, uint8_t piece)
{
    for (const int neighbor : adjacent[destination])
    {
        if (neighbor < 0) break;
        auto &old = board.cells[neighbor];
        if (old >= 1 && old <= 4)
        {
            --board.counts[old - 1];
            old = piece;
            ++board.counts[piece - 1];
        }
    }
}

CellPuzzle::Board CellPuzzle::applyMoveToScratchBoard(
    const Board &board, Move move, uint8_t piece)
{
    Board scratch = board; // Native copy is 49 cells plus four counters.
    scratch.cells[move.destination] = piece;
    ++scratch.counts[piece - 1];
    if (move.kind == 2)
    {
        scratch.cells[move.source] = 0;
        --scratch.counts[piece - 1];
    }
    convertAdjacentPieces(scratch, move.destination, piece);
    return scratch;
}

int CellPuzzle::scoreBoard(const Board &board, uint8_t root, int cloneBias)
{
    int occupied = 0;
    for (const int count : board.counts) occupied += count;
    return signedScore(2 * (2 * board.counts[root - 1] - occupied) + cloneBias);
}

int CellPuzzle::scoreCandidateMove(const Board &board, Move move,
    uint8_t root, uint8_t mover, int cloneBias)
{
    return scoreBoard(applyMoveToScratchBoard(board, move, mover), root, cloneBias);
}

int CellPuzzle::countAdjacentCloneOpportunities(const Board &board, uint8_t piece)
{
    int opportunities = 0;
    for (size_t source = 0; source < board.cells.size(); ++source)
        if (board.cells[source] == piece)
            for (const int destination : adjacent[source])
            {
                if (destination < 0) break;
                if (!board.cells[destination]) ++opportunities;
            }
    return opportunities; // Counts incidences, not unique empty destinations.
}

CellPuzzle::Iterator CellPuzzle::beginMoveIteration(
    const Board &board, uint8_t piece, bool deduplicateJumps)
{
    Iterator iterator;
    int occupied = 0;
    for (const int count : board.counts) occupied += count;
    iterator.reverse = 49 - occupied <= board.counts[piece - 1];
    if (iterator.reverse)
    {
        for (uint8_t destination = 0; destination < 49; ++destination)
        {
            if (board.cells[destination]) continue;
            for (const int source : adjacent[destination])
            {
                if (source < 0) break;
                if (board.cells[source] == piece)
                {
                    iterator.moves.push_back({static_cast<uint8_t>(source), destination, 1});
                    break; // Native reverse iterator emits one clone per destination.
                }
            }
            for (const int source : distanceTwo[destination])
            {
                if (source < 0) break;
                if (board.cells[source] == piece)
                    iterator.moves.push_back({static_cast<uint8_t>(source), destination, 2});
            }
        }
        return iterator;
    }
    std::array<bool, 49> yielded{};
    for (uint8_t source = 0; source < 49; ++source)
    {
        if (board.cells[source] != piece) continue;
        for (const int destination : adjacent[source])
        {
            if (destination < 0) break;
            if (!board.cells[destination] && !yielded[destination])
            {
                yielded[destination] = true;
                iterator.moves.push_back({source, static_cast<uint8_t>(destination), 1});
            }
        }
    }
    yielded.fill(false); // The native deduplicating jump pass refreshes its board.
    for (uint8_t source = 0; source < 49; ++source)
    {
        if (board.cells[source] != piece) continue;
        for (const int destination : distanceTwo[source])
        {
            if (destination < 0) break;
            if (!board.cells[destination] && (!deduplicateJumps || !yielded[destination]))
            {
                yielded[destination] = true;
                iterator.moves.push_back({source, static_cast<uint8_t>(destination), 2});
            }
        }
    }
    return iterator;
}

void CellPuzzle::resetBestMoveList(std::vector<Move> &best, Move move)
{
    best.assign(1, move);
}
void CellPuzzle::appendTiedBestMove(std::vector<Move> &best, Move move)
{
    best.push_back(move);
}

int CellPuzzle::searchRecursive(const Board &board, uint8_t root,
    uint8_t previousOwner, int depth, int bound, int cloneBias) const
{
    // Board and iterator snapshots are local values. A recursive return cannot
    // overwrite the parent's 57-byte board/state or iterator snapshot.
    uint8_t owner = previousOwner;
    Iterator iterator;
    for (int skipped = 0; skipped < 4; ++skipped)
    {
        owner = owner == 4 ? 1 : static_cast<uint8_t>(owner + 1);
        if (!board.counts[owner - 1]) continue;
        iterator = beginMoveIteration(board, owner, depth == 1);
        if (!iterator.moves.empty()) break;
    }
    if (iterator.moves.empty()) return scoreBoard(board, root, cloneBias);
    if (abortRequested_) return signedScore(bound + 1);
    const int remaining = depth - 1;
    const auto evaluate = [&](Move move)
    {
        return remaining > 0
            ? searchRecursive(applyMoveToScratchBoard(board, move, owner),
                root, owner, remaining, bound, cloneBias)
            : scoreCandidateMove(board, move, root, owner, cloneBias);
    };
    int best = evaluate(iterator.moves.front());
    if (owner != root && best < bound) return best;
    const int baseline = scoreBoard(board, root, cloneBias);
    for (size_t i = 1; i < iterator.moves.size(); ++i)
    {
        if (abortRequested_) return signedScore(bound + 1);
        const auto move = iterator.moves[i];
        if (move.kind == 2 &&
            scoreCandidateMove(board, move, root, owner, cloneBias) == baseline)
            continue; // Original search skips jumps that leave the score unchanged.
        const int score = evaluate(move);
        best = owner == root ? std::max(best, score) : std::min(best, score);
        if (owner != root && best < bound) return best;
        if (remaining == 0 && iterator.reverse && move.kind == 2)
            while (i + 1 < iterator.moves.size() &&
                iterator.moves[i + 1].destination == move.destination &&
                iterator.moves[i + 1].kind == 2) ++i;
    }
    return best;
}

std::vector<CellPuzzle::Move> CellPuzzle::searchBestMove(
    const Board &board, uint8_t piece, int depth) const
{
    const auto iterator = beginMoveIteration(board, piece);
    if (iterator.moves.empty()) return {};
    int occupied = 0;
    for (const int count : board.counts) occupied += count;
    if (occupied == board.counts[piece - 1]) depth = 0;
    std::vector<Move> best;
    int bestScore = -127;
    const int baseline = scoreBoard(board, piece, 0);
    for (size_t i = 0; i < iterator.moves.size(); ++i)
    {
        if (abortRequested_ && !best.empty()) break;
        const auto move = iterator.moves[i];
        if (i && move.kind == 2 && scoreCandidateMove(board, move, piece, piece, 0) == baseline)
            continue;
        const int bias = move.kind == 1 ? 1 : 0;
        const int score = depth > 0
            ? searchRecursive(applyMoveToScratchBoard(board, move, piece),
                piece, piece, depth, bestScore, bias)
            : scoreCandidateMove(board, move, piece, piece, bias);
        if (best.empty() || score > bestScore)
        {
            bestScore = score;
            resetBestMoveList(best, move);
        }
        else if (score == bestScore) appendTiedBestMove(best, move);
    }
    return best;
}

void CellPuzzle::insertRankedMove(std::vector<RankedMove> &ranked, RankedMove move)
{
    // Equal scores follow existing entries, matching the native linked list.
    const auto position = std::find_if(ranked.begin(), ranked.end(),
        [&](const RankedMove &existing) { return existing.score < move.score; });
    ranked.insert(position, move);
}

std::vector<CellPuzzle::RankedMove> CellPuzzle::buildRankedMoveList(
    const Board &board, uint8_t piece) const
{
    std::vector<RankedMove> ranked; // Native reset initializes head FFFF and count zero.
    const auto iterator = beginMoveIteration(board, piece);
    int occupied = 0;
    for (const int count : board.counts) occupied += count;
    const int depth = occupied == board.counts[piece - 1] ? 0 : 1;
    int bound = -127;
    const int baseline = scoreBoard(board, piece, 0);
    for (size_t i = 0; i < iterator.moves.size(); ++i)
    {
        if (abortRequested_ && !ranked.empty()) break;
        const auto move = iterator.moves[i];
        if (i && move.kind == 2 && scoreCandidateMove(board, move, piece, piece, 0) == baseline)
            continue;
        const int bias = move.kind == 1 ? 1 : 0;
        const int score = depth
            ? searchRecursive(applyMoveToScratchBoard(board, move, piece), piece, piece, depth, bound, bias)
            : scoreCandidateMove(board, move, piece, piece, bias);
        insertRankedMove(ranked, {move, score});
        bound = std::max(bound, score);
    }
    return ranked;
}

std::vector<CellPuzzle::Move> CellPuzzle::searchRankedMoves(
    const Board &board, uint8_t piece, int depth, const std::vector<RankedMove> &ranked) const
{
    int occupied = 0;
    for (const int count : board.counts) occupied += count;
    if (occupied == board.counts[piece - 1]) depth = 0;
    std::vector<Move> best;
    int bound = -127;
    for (const auto &candidate : ranked)
    {
        if (abortRequested_ && !best.empty()) break;
        const auto move = candidate.move;
        const int bias = move.kind == 1 ? 1 : 0;
        const int score = depth
            ? searchRecursive(applyMoveToScratchBoard(board, move, piece), piece, piece, depth, bound, bias)
            : scoreCandidateMove(board, move, piece, piece, bias);
        if (best.empty() || score > bound)
        {
            bound = score;
            resetBestMoveList(best, move);
        }
        else if (score == bound) appendTiedBestMove(best, move);
    }
    return best;
}

CellPuzzle::Move CellPuzzle::chooseBestMove(const Board &board, uint8_t piece,
    std::vector<Move> best, bool secondaryTieBreak, const RandomByte &random, Flavor flavor) const
{
    if (secondaryTieBreak)
    {
        std::vector<Move> survivors;
        int fewest = 32767;
        for (const auto move : best)
        {
            const int score = countAdjacentCloneOpportunities(applyMoveToScratchBoard(board, move, piece), piece);
            if (score < fewest) { survivors.clear(); fewest = score; }
            if (score == fewest) survivors.push_back(move);
        }
        best = std::move(survivors);
    }
    const auto index = flavor == Flavor::Windows ? size_t{0} : random() % best.size();
    Move result = best[index];
    if (result.kind == 1 && flavor != Flavor::Windows)
    {
        std::vector<uint8_t> sources;
        for (const int source : adjacent[result.destination])
        {
            if (source < 0) break;
            if (board.cells[source] == piece) sources.push_back(static_cast<uint8_t>(source));
        }
        if (sources.size() > 1)
        {
            const auto sourceIndex = random() % sources.size();
            if (sourceIndex) result.source = sources[sourceIndex];
        }
    }
    return result;
}

std::expected<std::optional<CellPuzzle::Move>, std::string> CellPuzzle::search(
    std::span<const uint8_t, 49> variables, uint8_t mode, const RandomByte &random, Flavor flavor)
{
    if (mode > 8) return std::unexpected("Microscope search mode is outside the recovered 0..8 strategy table");
    if (flavor != Flavor::Windows && !random)
        return std::unexpected("Microscope search requires a random-byte source");
    Board board;
    for (size_t i = 0; i < 49; ++i)
    {
        const auto value = variables[i];
        if (value == 0x32) board.cells[i] = 1;
        else if (value == 0x42) board.cells[i] = 2;
        else if (flavor == Flavor::Dos)
        {
            // DOS passes other ASCII bytes through. They are blockers, not
            // counters or players; normalize those blockers without indexing
            // the native four-counter array using an arbitrary character.
            board.cells[i] = value <= 4 ? value : 255;
        }
        // Win32 clears every unrecognized character to zero.
    }
    countBoardPieces(board);
    abortRequested_ = false;
    ++searchCount_;
    const bool secondary = mode != 0;
    const int depth = mode < 2 ? 0 : strategies[mode - 2][searchCount_ % 3];
    const int rankedThreshold = flavor == Flavor::Windows ? 20 : 2;
    auto best = depth >= rankedThreshold
        ? searchRankedMoves(board, 2, depth, buildRankedMoveList(board, 2))
        : searchBestMove(board, 2, depth);
    if (best.empty()) return std::optional<Move>{};
    return std::optional<Move>{chooseBestMove(board, 2, std::move(best), secondary, random, flavor)};
}
