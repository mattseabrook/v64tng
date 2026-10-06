#ifndef CELL_PUZZLE_H
#define CELL_PUZZLE_H

#include <array>
#include <cstdint>
#include <expected>
#include <functional>
#include <optional>
#include <span>
#include <string>
#include <vector>

// Recovered microscope solver. Entry contracts and counterparts are recorded
// in disassembly/semantic_roles.json and T7GMac/resources/semantic_functions.csv.
class CellPuzzle
{
public:
    enum class Flavor { Dos, Windows };
    struct Move
    {
        uint8_t source = 0;
        uint8_t destination = 0;
        uint8_t kind = 1; // 1 clones; 2 jumps.
    };
    using RandomByte = std::function<uint8_t()>;

    // Native GRV board bytes: ASCII '2' (32h) and 'B' (42h) identify players.
    // Search selects a move; the GRV script commits and animates it afterwards.
    std::expected<std::optional<Move>, std::string> search(
        std::span<const uint8_t, 49> variables, uint8_t mode,
        const RandomByte &random, Flavor flavor = Flavor::Dos);
    void requestSearchAbort() { abortRequested_ = true; }

private:
    struct Board
    {
        std::array<uint8_t, 49> cells{};
        std::array<int, 4> counts{};
    };
    struct Iterator
    {
        std::vector<Move> moves;
        bool reverse = false;
    };
    struct RankedMove { Move move; int score = 0; };

    static void countBoardPieces(Board &board);
    static void convertAdjacentPieces(Board &board, uint8_t destination, uint8_t piece);
    static Board applyMoveToScratchBoard(const Board &board, Move move, uint8_t piece);
    static int scoreBoard(const Board &board, uint8_t root, int cloneBias);
    static int scoreCandidateMove(const Board &board, Move move,
        uint8_t root, uint8_t mover, int cloneBias);
    static int countAdjacentCloneOpportunities(const Board &board, uint8_t piece);
    static Iterator beginMoveIteration(const Board &board, uint8_t piece,
        bool deduplicateJumps = false);
    static void resetBestMoveList(std::vector<Move> &best, Move move);
    static void appendTiedBestMove(std::vector<Move> &best, Move move);
    int searchRecursive(const Board &board, uint8_t root, uint8_t previousOwner,
        int depth, int bound, int cloneBias) const;
    std::vector<Move> searchBestMove(const Board &board, uint8_t piece, int depth) const;
    std::vector<RankedMove> buildRankedMoveList(const Board &board, uint8_t piece) const;
    static void insertRankedMove(std::vector<RankedMove> &ranked, RankedMove move);
    std::vector<Move> searchRankedMoves(const Board &board, uint8_t piece,
        int depth, const std::vector<RankedMove> &ranked) const;
    Move chooseBestMove(const Board &board, uint8_t piece, std::vector<Move> best,
        bool secondaryTieBreak, const RandomByte &random, Flavor flavor) const;

    uint16_t searchCount_ = 0;
    bool abortRequested_ = false;
};

#endif
