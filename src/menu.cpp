// menu.cpp

#include "../resource.h" // For resource IDs

#include "menu.h"
#include "window.h"
#include "config.h"
#include "game.h"
#include "music.h"
#include "audio.h"
#include "tools.h"
#include "grv_editor.h"

#include <commctrl.h>
#include <algorithm>
#include <cctype>
#include <string>

#ifndef DBG_LOG
#define DBG_LOG(msg) OutputDebugStringA("[v64tng:Menu] " msg "\n")
#define DBG_LOGF(fmt, ...) do { char _dbg_buf[4096]; snprintf(_dbg_buf, sizeof(_dbg_buf), "[v64tng:Menu] " fmt "\n", __VA_ARGS__); OutputDebugStringA(_dbg_buf); } while(0)
#endif

/*
===============================================================================
Function Name: initMenu

Description:
    - Initializes the menu for the main window.
    - Creates the File and Help menus with their respective items.

Parameters:
    - hwnd: Handle to the main window.
===============================================================================
*/
void initMenu(HWND hwnd)
{
    INITCOMMONCONTROLSEX commonControls{sizeof(commonControls), ICC_WIN95_CLASSES};
    InitCommonControlsEx(&commonControls);
    DBG_LOG("initMenu() entered");
    HMENU hMenu = CreateMenu();
    DBG_LOGF("CreateMenu() returned %p", (void*)hMenu);
    HMENU hFileMenu = CreatePopupMenu();
    DBG_LOGF("CreatePopupMenu() for File returned %p", (void*)hFileMenu);
    HMENU hHelpMenu = CreatePopupMenu();
    HMENU hToolsMenu = CreatePopupMenu();
    DBG_LOGF("CreatePopupMenu() for Help returned %p", (void*)hHelpMenu);

    DBG_LOG("Adding File menu items...");
    AppendMenu(hFileMenu, MF_STRING, static_cast<UINT>(MenuCommands::MC_FILE_LOAD), L"Load");
    AppendMenu(hFileMenu, MF_STRING, static_cast<UINT>(MenuCommands::MC_FILE_SAVE), L"Save");
    AppendMenu(hFileMenu, MF_SEPARATOR, 0, nullptr);
    AppendMenu(hFileMenu, MF_STRING, static_cast<UINT>(MenuCommands::MC_EDIT_SETTINGS), L"Config...");
    AppendMenu(hFileMenu, MF_SEPARATOR, 0, nullptr);
    AppendMenu(hFileMenu, MF_STRING, static_cast<UINT>(MenuCommands::MC_FILE_EXIT), L"Exit");
    AppendMenu(hToolsMenu, MF_STRING, static_cast<UINT>(MenuCommands::MC_TOOLS_WINDOW), L"Asset Browser...");
    AppendMenu(hToolsMenu, MF_STRING, static_cast<UINT>(MenuCommands::MC_GRV_EDITOR), L"GRV Editor...");
    DBG_LOG("Adding Help menu items...");
    AppendMenu(hHelpMenu, MF_STRING, static_cast<UINT>(MenuCommands::MC_HELP_ABOUT), L"About");

    DBG_LOG("Appending menus to menu bar...");
    AppendMenu(hMenu, MF_POPUP, reinterpret_cast<UINT_PTR>(hFileMenu), L"File");
    AppendMenu(hMenu, MF_POPUP, reinterpret_cast<UINT_PTR>(hToolsMenu), L"Tools");
    AppendMenu(hMenu, MF_POPUP, reinterpret_cast<UINT_PTR>(hHelpMenu), L"Help");

    DBG_LOG("Calling SetMenu()...");
    SetMenu(hwnd, hMenu);
    DBG_LOG("initMenu() complete");
}

static void addSettingsTooltip(HWND tooltip, HWND control, const wchar_t* text)
{
    if (!tooltip || !control || !text)
        return;
    TOOLINFOW tool{};
    tool.cbSize = sizeof(tool);
    tool.uFlags = TTF_IDISHWND | TTF_SUBCLASS;
    tool.hwnd = GetParent(control);
    tool.uId = reinterpret_cast<UINT_PTR>(control);
    tool.lpszText = const_cast<wchar_t*>(text);
    SendMessageW(tooltip, TTM_ADDTOOLW, 0, reinterpret_cast<LPARAM>(&tool));
}

static void centerDialogInParent(HWND dialog)
{
    HWND parent = GetParent(dialog);
    if (!parent)
        return;
    RECT dialogRect{}, parentRect{};
    GetWindowRect(dialog, &dialogRect);
    GetWindowRect(parent, &parentRect);
    const int x = parentRect.left + ((parentRect.right - parentRect.left) - (dialogRect.right - dialogRect.left)) / 2;
    const int y = parentRect.top + ((parentRect.bottom - parentRect.top) - (dialogRect.bottom - dialogRect.top)) / 2;
    SetWindowPos(dialog, HWND_TOP, x, y, 0, 0, SWP_NOSIZE | SWP_NOZORDER);
}

static void applyLiveMusicSelection(HWND dialog)
{
    const int selection = static_cast<int>(SendDlgItemMessageW(
        dialog, IDC_SETTINGS_MIDI_MODE, CB_GETCURSEL, 0, 0));
    config["midiMode"] = selection == 1
        ? "general" : selection == 2 ? "wavetable" : "opl3";
    config["midiEnabled"] =
        IsDlgButtonChecked(dialog, IDC_SETTINGS_MIDI_ENABLED) == BST_CHECKED;
    applyMusicRuntimeSettings();
}

static void applyLiveRendererSelection(HWND dialog)
{
    const int selection = static_cast<int>(SendDlgItemMessageW(
        dialog, IDC_SETTINGS_RENDERER, CB_GETCURSEL, 0, 0));
    config["renderer"] = selection == 0 ? "Vulkan" : "DirectX";
    applyConfiguredRenderer();
}

static nlohmann::json* settingsSnapshot(HWND dialog)
{
    return reinterpret_cast<nlohmann::json*>(
        GetWindowLongPtrW(dialog, GWLP_USERDATA));
}

static void restoreSettingsSnapshot(HWND dialog)
{
    if (const auto* original = settingsSnapshot(dialog))
    {
        config = *original;
        applyMusicRuntimeSettings();
        applyPcmRuntimeSettings();
        applyConfiguredRenderer();
    }
}

static INT_PTR CALLBACK SettingsDialogProc(HWND dialog, UINT message, WPARAM wParam, LPARAM)
{
    switch (message)
    {
    case WM_INITDIALOG:
    {
        SetWindowLongPtrW(dialog, GWLP_USERDATA,
            reinterpret_cast<LONG_PTR>(new nlohmann::json(config)));
        g_menuActive = true;
        KillTimer(g_hwnd, 0x7C0B);
        centerDialogInParent(dialog);

        HWND midiMode = GetDlgItem(dialog, IDC_SETTINGS_MIDI_MODE);
        SendMessageW(midiMode, CB_ADDSTRING, 0, reinterpret_cast<LPARAM>(L"OPL (FM synthesis)"));
        SendMessageW(midiMode, CB_ADDSTRING, 0, reinterpret_cast<LPARAM>(L"General MIDI device"));
        SendMessageW(midiMode, CB_ADDSTRING, 0, reinterpret_cast<LPARAM>(L"Wavetable / SoundFont"));
        const std::string configuredMidi = config.value("midiMode", std::string{"opl3"});
        SendMessageW(midiMode, CB_SETCURSEL,
                     configuredMidi == "general" ? 1 : configuredMidi == "wavetable" ? 2 : 0, 0);

        CheckDlgButton(dialog, IDC_SETTINGS_MIDI_ENABLED,
                       config.value("midiEnabled", true) ? BST_CHECKED : BST_UNCHECKED);

        HWND rendererControl = GetDlgItem(dialog, IDC_SETTINGS_RENDERER);
        SendMessageW(rendererControl, CB_ADDSTRING, 0, reinterpret_cast<LPARAM>(L"Vulkan"));
        SendMessageW(rendererControl, CB_ADDSTRING, 0, reinterpret_cast<LPARAM>(L"DirectX 11"));
        std::string configuredRenderer = config.value("renderer", std::string("Vulkan"));
        std::transform(configuredRenderer.begin(), configuredRenderer.end(), configuredRenderer.begin(),
                       [](unsigned char ch) { return static_cast<char>(std::toupper(ch)); });
        SendMessageW(rendererControl, CB_SETCURSEL, configuredRenderer == "VULKAN" ? 0 : 1, 0);

        CheckDlgButton(dialog, IDC_SETTINGS_FULLSCREEN,
                       config.value("fullscreen", false) ? BST_CHECKED : BST_UNCHECKED);
        SetDlgItemInt(dialog, IDC_SETTINGS_MIDI_VOLUME, std::clamp(config.value("midiVolume", 100), 0, 100), FALSE);
        SetDlgItemInt(dialog, IDC_SETTINGS_MIDI_BANK, std::clamp(config.value("midiBank", 0), 0, 999), FALSE);
        CheckDlgButton(dialog, IDC_SETTINGS_PCM_ENABLED,
                       config.value("pcmEnabled", true) ? BST_CHECKED : BST_UNCHECKED);
        SetDlgItemInt(dialog, IDC_SETTINGS_PCM_VOLUME, std::clamp(config.value("pcmVolume", 100), 0, 100), FALSE);

        HWND tooltip = CreateWindowExW(WS_EX_TOPMOST, TOOLTIPS_CLASSW, nullptr,
                                       WS_POPUP | TTS_ALWAYSTIP | TTS_NOPREFIX,
                                       CW_USEDEFAULT, CW_USEDEFAULT, CW_USEDEFAULT, CW_USEDEFAULT,
                                       dialog, nullptr, GetModuleHandleW(nullptr), nullptr);
        SendMessageW(tooltip, TTM_SETMAXTIPWIDTH, 0, 430);
        SendMessageW(tooltip, TTM_SETDELAYTIME, TTDT_INITIAL, 350);
        auto tip = [&](int controlId, int labelId, const wchar_t* text) {
            addSettingsTooltip(tooltip, GetDlgItem(dialog, controlId), text);
            if (labelId)
                addSettingsTooltip(tooltip, GetDlgItem(dialog, labelId), text);
        };
        tip(IDC_SETTINGS_MIDI_MODE, IDC_SETTINGS_LABEL_MIDI_MODE,
            L"Selects the MIDI synthesis backend. OPL recreates FM-synthesized DOS music, General MIDI uses the Windows MIDI output device, and Wavetable renders through the configured SoundFont. Changing this setting restarts an active MIDI track so the new backend takes effect immediately.");
        tip(IDC_SETTINGS_MIDI_VOLUME, IDC_SETTINGS_LABEL_MIDI_VOL,
            L"Controls MIDI playback gain from 0 (silent) to 100 (full volume). The value is applied immediately to OPL, Wavetable, and an open General MIDI device. It does not change PCM sound-effect volume.");
        tip(IDC_SETTINGS_PCM_ENABLED, 0,
            L"Enables or disables PCM digital audio such as voices and sound effects. Disabling it immediately stops active PCM playback and prevents new PCM sounds from starting. MIDI music is controlled separately.");
        tip(IDC_SETTINGS_PCM_VOLUME, IDC_SETTINGS_LABEL_PCM_VOL,
            L"Controls PCM digital-audio gain from 0 (silent) to 100 (full volume). Active WASAPI playback reads this value continuously, so volume changes take effect without restarting the sound. This does not change MIDI music volume.");
        tip(IDC_SETTINGS_RENDERER, IDC_SETTINGS_LABEL_RENDERER,
            L"Selects the graphics backend used by v64tng. Vulkan uses the native compute and GPU model pipeline; DirectX 11 provides the Windows fallback renderer. The selection takes effect immediately and Cancel restores the previous backend.");
        return TRUE;
    }
    case WM_COMMAND:
        if (HIWORD(wParam) == CBN_SELCHANGE &&
            LOWORD(wParam) == IDC_SETTINGS_MIDI_MODE)
        {
            applyLiveMusicSelection(dialog);
            return TRUE;
        }
        if (HIWORD(wParam) == BN_CLICKED &&
            LOWORD(wParam) == IDC_SETTINGS_MIDI_ENABLED)
        {
            applyLiveMusicSelection(dialog);
            return TRUE;
        }
        if (HIWORD(wParam) == CBN_SELCHANGE &&
            LOWORD(wParam) == IDC_SETTINGS_RENDERER)
        {
            applyLiveRendererSelection(dialog);
            return TRUE;
        }
        if (LOWORD(wParam) == IDOK)
        {
            auto readBounded = [&](int id, int minimum, int maximum, const wchar_t* label, int& value) {
                BOOL valid = FALSE;
                const int raw = static_cast<int>(GetDlgItemInt(dialog, id, &valid, TRUE));
                if (!valid || raw < minimum || raw > maximum)
                {
                    std::wstring message = std::wstring(label) + L" must be between " +
                                           std::to_wstring(minimum) + L" and " + std::to_wstring(maximum) + L".";
                    MessageBoxW(dialog, message.c_str(), L"Invalid setting", MB_OK | MB_ICONWARNING);
                    SetFocus(GetDlgItem(dialog, id));
                    return false;
                }
                value = raw;
                return true;
            };
            int midiVolume = 0, midiBank = 0, pcmVolume = 0;
            if (!readBounded(IDC_SETTINGS_MIDI_BANK, 0, 999, L"MIDI bank", midiBank) ||
                !readBounded(IDC_SETTINGS_MIDI_VOLUME, 0, 100, L"MIDI volume", midiVolume) ||
                !readBounded(IDC_SETTINGS_PCM_VOLUME, 0, 100, L"PCM volume", pcmVolume))
                return TRUE;

            const int midiSelection = static_cast<int>(SendDlgItemMessageW(dialog, IDC_SETTINGS_MIDI_MODE, CB_GETCURSEL, 0, 0));
            const int rendererSelection = static_cast<int>(SendDlgItemMessageW(dialog, IDC_SETTINGS_RENDERER, CB_GETCURSEL, 0, 0));

            if (midiSelection == CB_ERR || rendererSelection == CB_ERR)
            {
                MessageBoxW(dialog, L"Select a value in every drop-down list.",
                            L"Invalid setting", MB_OK | MB_ICONWARNING);
                return TRUE;
            }

            const bool oldFullscreen = config.value("fullscreen", false);
            const bool newFullscreen =
                IsDlgButtonChecked(dialog, IDC_SETTINGS_FULLSCREEN) == BST_CHECKED;
            config["fullscreen"] = newFullscreen;
            config["midiMode"] = midiSelection == 1 ? "general" : midiSelection == 2 ? "wavetable" : "opl3";
            config["midiEnabled"] =
                IsDlgButtonChecked(dialog, IDC_SETTINGS_MIDI_ENABLED) == BST_CHECKED;
            config["midiBank"] = midiBank;
            config["midiVolume"] = midiVolume;
            config["pcmEnabled"] = IsDlgButtonChecked(dialog, IDC_SETTINGS_PCM_ENABLED) == BST_CHECKED;
            config["pcmVolume"] = pcmVolume;
            config["renderer"] = rendererSelection == 0 ? "Vulkan" : "DirectX";

            applyMusicRuntimeSettings();
            applyPcmRuntimeSettings();
            applyConfiguredRenderer();

            if (oldFullscreen != newFullscreen)
            {
                // toggleFullscreen derives the desired state by inversion.
                config["fullscreen"] = oldFullscreen;
                toggleFullscreen();
            }
            EndDialog(dialog, IDOK);
            return TRUE;
        }
        if (LOWORD(wParam) == IDCANCEL)
        {
            restoreSettingsSnapshot(dialog);
            EndDialog(dialog, IDCANCEL);
            return TRUE;
        }
        break;
    case WM_CLOSE:
        restoreSettingsSnapshot(dialog);
        EndDialog(dialog, IDCANCEL);
        return TRUE;
    case WM_NCDESTROY:
        delete settingsSnapshot(dialog);
        SetWindowLongPtrW(dialog, GWLP_USERDATA, 0);
        return FALSE;
    }
    return FALSE;
}

/*
===============================================================================
Function Name: AboutDialogProc

Description:
    - Handles the About dialog box messages.
    - Displays information about the application.

Parameters:
    - hDlg: Handle to the dialog box.
    - message: Message identifier.
    - wParam: Additional message information.
    - lParam: Additional message information.
===============================================================================
*/
LRESULT CALLBACK AboutDialogProc(HWND hDlg, UINT message, WPARAM wParam, LPARAM lParam)
{
    (void)lParam;
    switch (message)
    {
    case WM_INITDIALOG:
    {
        g_menuActive = true;
        KillTimer(g_hwnd, 0x7C0B);
        HWND hParent = GetParent(hDlg);
        if (hParent)
        {
            RECT dlgRect, parentClient;
            GetWindowRect(hDlg, &dlgRect);
            GetClientRect(hParent, &parentClient);
            POINT pt = {parentClient.left, parentClient.top};
            ClientToScreen(hParent, &pt);
            OffsetRect(&parentClient, pt.x, pt.y);
            int x = parentClient.left + ((parentClient.right - parentClient.left) - (dlgRect.right - dlgRect.left)) / 2;
            int y = parentClient.top + ((parentClient.bottom - parentClient.top) - (dlgRect.bottom - dlgRect.top)) / 2;
            SetWindowPos(hDlg, HWND_TOP, x, y, 0, 0, SWP_NOSIZE | SWP_NOZORDER);
        }
        HICON hIcon = static_cast<HICON>(LoadImage(GetModuleHandle(nullptr), MAKEINTRESOURCE(IDI_ICON1), IMAGE_ICON, 0, 0, LR_DEFAULTSIZE));
        SendDlgItemMessage(hDlg, IDC_ABOUT_ICON, STM_SETICON, reinterpret_cast<WPARAM>(hIcon), 0);
        return TRUE;
    }
    case WM_COMMAND:
        if (LOWORD(wParam) == IDOK || LOWORD(wParam) == IDCANCEL)
        {
            g_menuActive = false;
            EndDialog(hDlg, LOWORD(wParam));
            return TRUE;
        }
        break;
    case WM_CLOSE:
        g_menuActive = false;
        EndDialog(hDlg, IDCANCEL);
        return TRUE;
    }
    return FALSE;
}

/*
===============================================================================
Function Name: HandleMenuCommand

Description:
    - Handles menu commands from the main window.
    - Processes commands for File and Help menus.

Parameters:
    - hwnd: Handle to the main window.
    - wParam: Command identifier from the menu selection.
===============================================================================
*/
LRESULT HandleMenuCommand(HWND hwnd, WPARAM wParam)
{
    switch (static_cast<int>(LOWORD(wParam)))
    {
    case static_cast<int>(MenuCommands::MC_FILE_LOAD):
        // Reserved for game-state loading.
        break;
    case static_cast<int>(MenuCommands::MC_FILE_SAVE):
        // Reserved for game-state saving.
        break;
    case static_cast<int>(MenuCommands::MC_FILE_EXIT):
        save_config("config.json");
        // Mirror the WM_CLOSE path: flag the quit and signal every audio
        // backend before the message loop unwinds, so the legacy music worker
        // can never re-arm a new song between loop passes. Posting WM_CLOSE
        // (instead of a bare WM_QUIT) also runs the window teardown path.
        g_quitRequested = true;
        musicRequestStop();
        audioRequestStop();
        ::PostMessage(hwnd, WM_CLOSE, 0, 0);
        break;
    case static_cast<int>(MenuCommands::MC_TOOLS_WINDOW):
        ShowToolsWindow(hwnd);
        break;
    case static_cast<int>(MenuCommands::MC_GRV_EDITOR):
        ShowGrvEditor(hwnd);
        break;
    case static_cast<int>(MenuCommands::MC_EDIT_SETTINGS):
        if (DialogBoxW(GetModuleHandleW(nullptr), MAKEINTRESOURCEW(IDD_SETTINGS_DIALOG), hwnd, SettingsDialogProc) == IDOK)
        {
            applyMusicRuntimeSettings();
            applyPcmRuntimeSettings();
            applyConfiguredRenderer();
            state.frameTiming.dirtyFrame = true;
            save_config("config.json");
        }
        g_menuActive = false;
        break;
    case static_cast<int>(MenuCommands::MC_HELP_ABOUT):
        DialogBox(GetModuleHandle(nullptr), MAKEINTRESOURCE(IDD_ABOUT_DIALOG), hwnd, AboutDialogProc);
        break;
    }
    return 0;
}
