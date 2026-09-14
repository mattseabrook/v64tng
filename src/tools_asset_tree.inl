// Registry-style, read-only asset inspector. Included by tools.cpp after its
// shared UI helpers. Tree expansion never decodes the complete video stream.
enum class BrowserKind { Root, Archive, Asset, Header, Chunks, Chunk, Decoded, Palette, Bytes };
struct BrowserNode {
    BrowserKind kind;
    size_t asset = SIZE_MAX, chunk = SIZE_MAX, start = 0, length = 0;
    bool unpacked = false, populated = false;
    std::wstring label;
};
static std::vector<BrowserNode> g_browserNodes;
static bool g_browserClearing = false;
static size_t g_browserCachedAsset = SIZE_MAX;
static std::vector<uint8_t> g_browserBytes;
static std::unique_ptr<VDXFile> g_browserVDX;
static std::vector<uint8_t> g_browserUnpacked;
static size_t g_browserCachedChunk = SIZE_MAX;
static std::wstring g_browserFilter;
static int g_browserFolderIcon = 0, g_browserOpenIcon = 0;

static void InitializeAssetTreeIcons()
{
    SHFILEINFOW info{};
    auto images = reinterpret_cast<HIMAGELIST>(SHGetFileInfoW(L"folder", FILE_ATTRIBUTE_DIRECTORY,
        &info, sizeof(info), SHGFI_SYSICONINDEX | SHGFI_SMALLICON | SHGFI_USEFILEATTRIBUTES));
    g_browserFolderIcon = info.iIcon;
    SHGetFileInfoW(L"folder", FILE_ATTRIBUTE_DIRECTORY, &info, sizeof(info),
        SHGFI_SYSICONINDEX | SHGFI_SMALLICON | SHGFI_USEFILEATTRIBUTES | SHGFI_OPENICON);
    g_browserOpenIcon = info.iIcon;
    TreeView_SetImageList(g_assetControls[6], images, TVSIL_NORMAL); // shared system list
}

static void ClearAssetTree()
{
    g_browserClearing = true;
    if (g_assetControls[6]) TreeView_DeleteAllItems(g_assetControls[6]);
    if (g_assetControls[4]) ListView_DeleteAllItems(g_assetControls[4]);
    g_browserNodes.clear();
    g_browserVDX.reset(); g_browserBytes.clear(); g_browserUnpacked.clear();
    g_browserCachedAsset = g_browserCachedChunk = SIZE_MAX;
    g_browserClearing = false;
}

static BrowserNode *BrowserItem(HTREEITEM item)
{
    if (!item || g_browserClearing) return nullptr;
    TVITEMW data{}; data.mask = TVIF_PARAM; data.hItem = item;
    if (!TreeView_GetItem(g_assetControls[6], &data) || data.lParam <= 0 ||
        size_t(data.lParam) > g_browserNodes.size()) return nullptr;
    return &g_browserNodes[size_t(data.lParam) - 1];
}

static HTREEITEM AddBrowserNode(HTREEITEM parent, BrowserNode node, bool children = false)
{
    g_browserNodes.push_back(std::move(node));
    auto &saved = g_browserNodes.back();
    TVINSERTSTRUCTW insert{};
    insert.hParent = parent; insert.hInsertAfter = TVI_LAST;
    insert.item.mask = TVIF_TEXT | TVIF_PARAM | TVIF_IMAGE | TVIF_SELECTEDIMAGE | TVIF_CHILDREN;
    insert.item.pszText = saved.label.data(); insert.item.lParam = g_browserNodes.size();
    insert.item.iImage = g_browserFolderIcon; insert.item.iSelectedImage = g_browserOpenIcon;
    insert.item.cChildren = children ? 1 : 0;
    return TreeView_InsertItem(g_assetControls[6], &insert);
}

static void BrowserValue(std::wstring name, std::wstring type, std::wstring data)
{
    LVITEMW item{}; item.mask = LVIF_TEXT; item.iItem = ListView_GetItemCount(g_assetControls[4]);
    item.pszText = name.data();
    const int row = ListView_InsertItem(g_assetControls[4], &item);
    ListView_SetItemText(g_assetControls[4], row, 1, type.data());
    ListView_SetItemText(g_assetControls[4], row, 2, data.data());
}

static void BrowserNumber(std::wstring name, uint64_t value, int bytes = 4)
{
    BrowserValue(std::move(name), std::format(L"UINT{}", bytes * 8),
        std::format(L"0x{:0{}X} ({})", value, bytes * 2, value));
}

static std::wstring BrowserHex(std::span<const uint8_t> bytes)
{
    std::wstring result;
    for (uint8_t byte : bytes) result += std::format(L"{:02X} ", byte);
    if (!result.empty()) result.pop_back();
    return result;
}

static bool BrowserIsVDX(size_t index)
{
    return index < g_assetCatalog.size() &&
        LowerAscii(std::filesystem::path(g_assetCatalog[index].name).extension().string()) == ".vdx";
}

static bool BrowserMatches(const AssetCatalogEntry &asset)
{
    std::wstring text(asset.name.begin(), asset.name.end());
    text += L" " + std::wstring(asset.archive.begin(), asset.archive.end());
    std::transform(text.begin(), text.end(), text.begin(), [](wchar_t c) { return std::towlower(c); });
    return g_browserFilter.empty() || text.find(g_browserFilter) != std::wstring::npos;
}

static void LoadBrowserAsset(size_t index)
{
    if (index == g_browserCachedAsset) return;
    g_browserCachedAsset = g_browserCachedChunk = SIZE_MAX;
    g_browserVDX.reset(); g_browserUnpacked.clear();
    const auto &asset = g_assetCatalog.at(index);
    std::ifstream input(asset.gjdPath, std::ios::binary);
    g_browserBytes.resize(asset.entry.length);
    if (!input.seekg(asset.entry.offset) || !input.read(reinterpret_cast<char*>(g_browserBytes.data()),
        std::streamsize(g_browserBytes.size()))) throw std::runtime_error("Cannot read archive resource");
    if (BrowserIsVDX(index))
        g_browserVDX = std::make_unique<VDXFile>(parseVDXFile(asset.name, g_browserBytes));
    g_browserCachedAsset = index;
}

static std::span<const uint8_t> BrowserPayload(const BrowserNode &node)
{
    LoadBrowserAsset(node.asset);
    if (node.chunk == SIZE_MAX) return g_browserBytes;
    const auto &chunk = g_browserVDX->chunks.at(node.chunk);
    if (!node.unpacked || !vdxChunkIsCompressed(chunk)) return chunk.data;
    if (g_browserCachedChunk != node.chunk) {
        auto result = lzssDecompressChecked(chunk.data, chunk.lengthMask, chunk.lengthBits);
        if (!result) throw std::runtime_error(result.error());
        g_browserUnpacked = std::move(*result);
        g_browserCachedChunk = node.chunk;
    }
    return g_browserUnpacked;
}

static void ExpandBrowserNode(HTREEITEM item)
{
    const auto *found = BrowserItem(item);
    if (!found || found->populated) return;
    const size_t id = size_t(found - g_browserNodes.data());
    const BrowserNode node = *found; // insertion can reallocate the node vector
    auto child = [&](BrowserKind kind, std::wstring label, bool expand = false,
                     size_t chunk = SIZE_MAX, bool unpacked = false, size_t start = 0, size_t length = 0) {
        return AddBrowserNode(item, {kind, node.asset, chunk, start, length, unpacked, false, std::move(label)}, expand);
    };
    if (node.kind == BrowserKind::Archive) {
        const auto archive = g_assetCatalog.at(node.asset).archive;
        for (size_t i = 0; i < g_assetCatalog.size(); ++i) {
            const auto &asset = g_assetCatalog[i];
            if (asset.archive == archive && BrowserMatches(asset))
                AddBrowserNode(item, {BrowserKind::Asset, i, SIZE_MAX, 0, 0, false, false,
                    std::wstring(asset.name.begin(), asset.name.end())}, true);
        }
    } else if (node.kind == BrowserKind::Asset) {
        LoadBrowserAsset(node.asset);
        if (g_browserVDX) {
            child(BrowserKind::Header, L"Header");
            child(BrowserKind::Chunks, L"Chunks", true);
        }
        child(BrowserKind::Bytes, L"Raw resource bytes", true, SIZE_MAX, false, 0, g_browserBytes.size());
    } else if (node.kind == BrowserKind::Chunks) {
        LoadBrowserAsset(node.asset);
        for (size_t i = 0; i < g_browserVDX->chunks.size(); ++i)
            child(BrowserKind::Chunk, std::format(L"{:05} - 0x{:02X}", i, g_browserVDX->chunks[i].chunkType), true, i);
    } else if (node.kind == BrowserKind::Chunk) {
        LoadBrowserAsset(node.asset);
        const auto &chunk = g_browserVDX->chunks.at(node.chunk);
        child(BrowserKind::Bytes, L"Stored payload", true, node.chunk, false, 0, chunk.data.size());
        child(BrowserKind::Decoded, L"Decoded payload", true, node.chunk, true);
    } else if (node.kind == BrowserKind::Decoded) {
        auto payload = BrowserPayload(node);
        const auto type = g_browserVDX->chunks.at(node.chunk).chunkType;
        const size_t bytes = payload.size();
        if (type == 0x20 && bytes >= 6)
            child(BrowserKind::Palette, L"Palette", false, node.chunk, true);
        if (type == 0x25 && bytes >= 2 && readLittleEndian16(payload) != 0)
            child(BrowserKind::Palette, L"Local palette updates", false, node.chunk, true);
        child(BrowserKind::Bytes, L"Bytes", true, node.chunk, true, 0, bytes);
    } else if (node.kind == BrowserKind::Bytes && node.length > 4096) {
        for (size_t start = node.start; start < node.start + node.length; start += 4096) {
            const size_t length = (std::min)(size_t(4096), node.start + node.length - start);
            child(BrowserKind::Bytes, std::format(L"0x{:08X} - 0x{:08X}", start, start + length - 1),
                false, node.chunk, node.unpacked, start, length);
        }
    }
    g_browserNodes[id].populated = true;
}

static void ShowBrowserNode(HTREEITEM item)
{
    const auto *found = BrowserItem(item);
    if (!found) return;
    const BrowserNode node = *found;
    ListView_DeleteAllItems(g_assetControls[4]);
    EnableWindow(g_assetControls[7], node.kind != BrowserKind::Archive && BrowserIsVDX(node.asset));
    std::wstring path = node.label;
    for (auto parent = TreeView_GetParent(g_assetControls[6], item); parent;
         parent = TreeView_GetParent(g_assetControls[6], parent))
        if (const auto *part = BrowserItem(parent)) path = part->label + L"\\" + path;
    SetWindowTextW(g_assetControls[5], path.c_str());
    if (node.kind == BrowserKind::Root) {
        BrowserValue(L"Folder", L"STRING", g_assetFolder.wstring());
        BrowserNumber(L"Resources", g_assetCatalog.size());
        BrowserValue(L"Navigation", L"STRING", L"Expand an archive, then a VDX, to inspect its header and chunks.");
        return;
    }
    const auto &asset = g_assetCatalog.at(node.asset);
    if (node.kind == BrowserKind::Archive) {
        BrowserValue(L"GJD file", L"STRING", asset.gjdPath.wstring());
        BrowserValue(L"RL file", L"STRING", FindSiblingWithExtension(asset.gjdPath, ".rl").wstring());
        BrowserNumber(L"GJD size (bytes)", std::filesystem::file_size(asset.gjdPath), 8);
        BrowserNumber(L"Resources", std::count_if(g_assetCatalog.begin(), g_assetCatalog.end(),
            [&](const auto &entry) { return entry.archive == asset.archive; }));
        return;
    }
    LoadBrowserAsset(node.asset);
    if (node.kind == BrowserKind::Asset) {
        BrowserValue(L"Filename", L"STRING", std::wstring(asset.name.begin(), asset.name.end()));
        BrowserNumber(L"Archive offset", asset.entry.offset);
        BrowserNumber(L"Length (bytes)", asset.entry.length);
        if (g_browserVDX) {
            BrowserNumber(L"FPS (header)", g_browserVDX->frameRate, 2);
            BrowserNumber(L"Chunks", g_browserVDX->chunks.size());
        }
    } else if (node.kind == BrowserKind::Header) {
        BrowserNumber(L"Identifier [+0x00]", g_browserVDX->identifier, 2);
        for (size_t i = 0; i < 4; ++i)
            BrowserNumber(std::format(L"Unknown {} [+0x{:02X}]", i, i + 2), g_browserVDX->unknown[i], 1);
        BrowserNumber(L"FPS [+0x06]", g_browserVDX->frameRate, 2);
        BrowserNumber(L"Header size (bytes)", 8);
    } else if (node.kind == BrowserKind::Chunks) {
        std::map<uint8_t, size_t> counts;
        for (const auto &chunk : g_browserVDX->chunks) ++counts[chunk.chunkType];
        BrowserNumber(L"Total chunks", g_browserVDX->chunks.size());
        for (auto [type, count] : counts) BrowserNumber(std::format(L"Type 0x{:02X}", type), count);
    } else if (node.kind == BrowserKind::Chunk) {
        const auto &chunk = g_browserVDX->chunks.at(node.chunk);
        size_t offset = 8;
        for (size_t i = 0; i < node.chunk; ++i) offset += 8 + g_browserVDX->chunks[i].dataSize;
        BrowserNumber(L"Index", node.chunk);
        BrowserNumber(L"VDX offset", offset);
        BrowserNumber(L"GJD offset", asset.entry.offset + offset, 8);
        BrowserNumber(L"Type [+0x00]", chunk.chunkType, 1);
        BrowserNumber(L"Coding [+0x01]", chunk.coding, 1);
        BrowserNumber(L"Data size [+0x02]", chunk.dataSize);
        BrowserNumber(L"Length mask [+0x06]", chunk.lengthMask, 1);
        BrowserNumber(L"Length bits [+0x07]", chunk.lengthBits, 1);
        BrowserValue(L"Compression", L"STRING", vdxChunkIsCompressed(chunk) ? L"LZSS" : L"Uncompressed");
    } else if (node.kind == BrowserKind::Decoded || node.kind == BrowserKind::Palette) {
        const auto payload = BrowserPayload(node);
        const auto type = g_browserVDX->chunks.at(node.chunk).chunkType;
        BrowserNumber(L"Decoded length (bytes)", payload.size());
        if (type == 0x20 && payload.size() >= 6) {
            const auto depth = readLittleEndian16(payload.subspan(4));
            BrowserNumber(L"Horizontal tiles [+0x00]", readLittleEndian16(payload), 2);
            BrowserNumber(L"Vertical tiles [+0x02]", readLittleEndian16(payload.subspan(2)), 2);
            BrowserNumber(L"Width (pixels)", readLittleEndian16(payload) * 4);
            BrowserNumber(L"Height (pixels)", readLittleEndian16(payload.subspan(2)) * 4);
            BrowserNumber(L"Colour depth [+0x04]", depth, 2);
            if (node.kind == BrowserKind::Palette && depth <= 8) {
                for (size_t i = 0; i < (size_t(1) << depth) && 6 + i * 3 + 3 <= payload.size(); ++i) {
                    auto c = payload.subspan(6 + i * 3, 3);
                    BrowserValue(std::format(L"{:03} [+0x{:04X}]", i, 6 + i * 3), L"RGB8",
                        std::format(L"#{:02X}{:02X}{:02X} ({}, {}, {})", c[0], c[1], c[2], c[0], c[1], c[2]));
                }
            }
        } else if (type == 0x25 && payload.size() >= 2) {
            const size_t length = readLittleEndian16(payload);
            BrowserNumber(L"Local palette size [+0x00]", length, 2);
            BrowserNumber(L"Image opcodes offset", length + 2);
            if (length && length + 2 <= payload.size() && length >= 32) {
                BrowserValue(L"Palette bit field [+0x02]", L"BINARY", BrowserHex(payload.subspan(2, 32)));
                if (node.kind == BrowserKind::Palette) {
                    size_t offset = 34;
                    for (size_t i = 0; i < 256; ++i)
                        if (readLittleEndian16(payload.subspan(2 + (i / 16) * 2)) & (0x8000 >> (i % 16))) {
                            if (offset + 3 > length + 2) throw std::runtime_error("Truncated palette update");
                            auto c = payload.subspan(offset, 3);
                            BrowserValue(std::format(L"{:03} [+0x{:04X}]", i, offset), L"RGB8",
                                std::format(L"#{:02X}{:02X}{:02X} ({}, {}, {})", c[0], c[1], c[2], c[0], c[1], c[2]));
                            offset += 3;
                        }
                }
            }
        } else if (type == 0x80) {
            BrowserValue(L"Audio format", L"STRING", L"PCM unsigned 8-bit mono, 22050 Hz");
            BrowserValue(L"Duration", L"SECONDS", std::format(L"{:.6f}", payload.size() / 22050.0));
        } else if (type == 0x00) {
            BrowserValue(L"Meaning", L"STRING", L"Duplicate frame (no image change)");
        }
    } else if (node.kind == BrowserKind::Bytes) {
        auto payload = BrowserPayload(node);
        if (node.start > payload.size() || node.length > payload.size() - node.start)
            throw std::runtime_error("Byte range outside payload");
        BrowserValue(L"Offsets", L"STRING", node.chunk == SIZE_MAX ? L"Relative to resource start" :
            (node.unpacked ? L"Relative to decompressed payload" : L"Relative to stored payload"));
        BrowserNumber(L"Length (bytes)", node.length);
        if (node.length > 4096) {
            BrowserValue(L"Contents", L"STRING", L"Expand this key to inspect 4 KB ranges.");
        } else {
            for (size_t p = node.start; p < node.start + node.length; p += 16)
                BrowserValue(std::format(L"0x{:08X}", p), L"BINARY",
                    BrowserHex(payload.subspan(p, (std::min)(size_t(16), node.start + node.length - p))));
        }
    }
}

static void PopulateAssetList()
{
    ClearAssetTree();
    wchar_t filter[256]{};
    GetWindowTextW(g_assetControls[3], filter, 256);
    g_browserFilter = filter;
    std::transform(g_browserFilter.begin(), g_browserFilter.end(), g_browserFilter.begin(),
        [](wchar_t c) { return std::towlower(c); });
    SendMessageW(g_assetControls[6], WM_SETREDRAW, FALSE, 0);
    const auto root = AddBrowserNode(TVI_ROOT, {BrowserKind::Root, SIZE_MAX, SIZE_MAX, 0, 0, false, true, L"T7G Assets"}, true);
    std::map<std::string, size_t> archives;
    for (size_t i = 0; i < g_assetCatalog.size(); ++i)
        if (BrowserMatches(g_assetCatalog[i])) archives.try_emplace(g_assetCatalog[i].archive, i);
    for (auto [archive, index] : archives) {
        std::wstring name(archive.begin(), archive.end());
        AddBrowserNode(root, {BrowserKind::Archive, index, SIZE_MAX, 0, 0, false, false,
            name + L".RL / " + name + L".GJD"}, true);
    }
    TreeView_Expand(g_assetControls[6], root, TVE_EXPAND);
    TreeView_SelectItem(g_assetControls[6], root);
    SendMessageW(g_assetControls[6], WM_SETREDRAW, TRUE, 0);
    InvalidateRect(g_assetControls[6], nullptr, TRUE);
}

static void OpenSelectedBrowserAsset()
{
    const auto *node = BrowserItem(TreeView_GetSelection(g_assetControls[6]));
    if (node && node->kind != BrowserKind::Archive && BrowserIsVDX(node->asset)) OpenCatalogAsset(node->asset);
}

static void CopyAssetValue(HWND owner)
{
    const int selected = ListView_GetNextItem(g_assetControls[4], -1, LVNI_SELECTED);
    if (selected < 0) return;
    POINT point{}; GetCursorPos(&point);
    HMENU menu = CreatePopupMenu(); AppendMenuW(menu, MF_STRING, 1, L"Copy value");
    const int command = TrackPopupMenu(menu, TPM_RETURNCMD | TPM_RIGHTBUTTON, point.x, point.y, 0, owner, nullptr);
    DestroyMenu(menu);
    if (command != 1) return;
    wchar_t value[4096]{};
    ListView_GetItemText(g_assetControls[4], selected, 2, value, 4096);
    const size_t bytes = (wcslen(value) + 1) * sizeof(wchar_t);
    HGLOBAL text = GlobalAlloc(GMEM_MOVEABLE, bytes);
    if (!text) return;
    void *buffer = GlobalLock(text);
    if (!buffer) { GlobalFree(text); return; }
    memcpy(buffer, value, bytes); GlobalUnlock(text);
    if (OpenClipboard(owner)) {
        EmptyClipboard();
        if (SetClipboardData(CF_UNICODETEXT, text)) text = nullptr;
        CloseClipboard();
    }
    if (text) GlobalFree(text);
}

static LRESULT HandleAssetTreeNotify(HWND owner, NMHDR *header)
{
    if (g_browserClearing) return 0;
    try {
        if (header->code == TVN_ITEMEXPANDINGW) {
            auto *change = reinterpret_cast<NMTREEVIEWW*>(header);
            if (change->action == TVE_EXPAND) ExpandBrowserNode(change->itemNew.hItem);
        } else if (header->code == TVN_SELCHANGEDW) {
            ShowBrowserNode(reinterpret_cast<NMTREEVIEWW*>(header)->itemNew.hItem);
        } else if (header->code == NM_RCLICK) {
            POINT screen{}; GetCursorPos(&screen);
            TVHITTESTINFO hit{}; hit.pt = screen; ScreenToClient(g_assetControls[6], &hit.pt);
            if (auto item = TreeView_HitTest(g_assetControls[6], &hit)) TreeView_SelectItem(g_assetControls[6], item);
            const auto *node = BrowserItem(TreeView_GetSelection(g_assetControls[6]));
            if (!node || node->asset == SIZE_MAX || node->kind == BrowserKind::Archive) return 0;
            const size_t index = node->asset;
            HMENU menu = CreatePopupMenu();
            AppendMenuW(menu, MF_STRING | (BrowserIsVDX(index) ? 0 : MF_GRAYED), 1, L"Open in VDX Info...");
            AppendMenuW(menu, MF_STRING, 2, L"Save Resource As...");
            const int command = TrackPopupMenu(menu, TPM_RETURNCMD | TPM_RIGHTBUTTON,
                screen.x, screen.y, 0, owner, nullptr);
            DestroyMenu(menu);
            if (command == 1) OpenCatalogAsset(index);
            if (command == 2) SaveCatalogAsset(owner, index);
        }
    } catch (const std::exception &error) {
        BrowserValue(L"Error", L"STRING", std::wstring(error.what(), error.what() + strlen(error.what())));
        SetWindowTextA(g_assetControls[5], error.what());
        return header->code == TVN_ITEMEXPANDINGW ? TRUE : 0;
    }
    return 0;
}
