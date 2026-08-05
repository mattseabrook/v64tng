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
#include <cmath>
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
    HMENU hEditMenu = CreatePopupMenu();
    HMENU hToolsMenu = CreatePopupMenu();
    DBG_LOGF("CreatePopupMenu() for Help returned %p", (void*)hHelpMenu);

    DBG_LOG("Adding File menu items...");
    AppendMenu(hFileMenu, MF_STRING, static_cast<UINT>(MenuCommands::MC_FILE_LOAD), L"Load");
    AppendMenu(hFileMenu, MF_STRING, static_cast<UINT>(MenuCommands::MC_FILE_SAVE), L"Save");
    AppendMenu(hFileMenu, MF_SEPARATOR, 0, nullptr);
    AppendMenu(hFileMenu, MF_STRING, static_cast<UINT>(MenuCommands::MC_FILE_EXIT), L"Exit");
    AppendMenu(hEditMenu, MF_STRING, static_cast<UINT>(MenuCommands::MC_EDIT_SETTINGS), L"Settings...");
    AppendMenu(hToolsMenu, MF_STRING, static_cast<UINT>(MenuCommands::MC_TOOLS_WINDOW), L"Asset Browser...");
    AppendMenu(hToolsMenu, MF_STRING, static_cast<UINT>(MenuCommands::MC_GRV_EDITOR), L"GRV Editor...");
    DBG_LOG("Adding Help menu items...");
    AppendMenu(hHelpMenu, MF_STRING, static_cast<UINT>(MenuCommands::MC_HELP_ABOUT), L"About");

    DBG_LOG("Appending menus to menu bar...");
    AppendMenu(hMenu, MF_POPUP, reinterpret_cast<UINT_PTR>(hFileMenu), L"File");
    AppendMenu(hMenu, MF_POPUP, reinterpret_cast<UINT_PTR>(hEditMenu), L"Edit");
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

static INT_PTR CALLBACK SettingsDialogProc(HWND dialog, UINT message, WPARAM wParam, LPARAM)
{
    switch (message)
    {
    case WM_INITDIALOG:
    {
        g_menuActive = true;
        KillTimer(g_hwnd, 0x7C0B);
        centerDialogInParent(dialog);

        HWND midiMode = GetDlgItem(dialog, IDC_SETTINGS_MIDI_MODE);
        SendMessageW(midiMode, CB_ADDSTRING, 0, reinterpret_cast<LPARAM>(L"OPL (FM synthesis)"));
        SendMessageW(midiMode, CB_ADDSTRING, 0, reinterpret_cast<LPARAM>(L"General MIDI device"));
        SendMessageW(midiMode, CB_ADDSTRING, 0, reinterpret_cast<LPARAM>(L"Wavetable / SoundFont"));
        const std::string_view configuredMidi = config.value("midiMode", std::string{"opl3"});
        SendMessageW(midiMode, CB_SETCURSEL,
                     configuredMidi == "general" ? 1 : configuredMidi == "wavetable" ? 2 : 0, 0);

        HWND supersample = GetDlgItem(dialog, IDC_SETTINGS_SUPERSAMPLE);
        const int supersampleValues[] = {1, 2, 4, 8, 16};
        const int configuredSupersample = std::clamp(config.value("raycastSupersample", 1), 1, 16);
        int supersampleSelection = 0;
        for (int i = 0; i < 5; ++i)
        {
            const std::wstring label = std::to_wstring(supersampleValues[i]) + L"x";
            const LRESULT item = SendMessageW(supersample, CB_ADDSTRING, 0, reinterpret_cast<LPARAM>(label.c_str()));
            SendMessageW(supersample, CB_SETITEMDATA, item, supersampleValues[i]);
            if (supersampleValues[i] == configuredSupersample)
                supersampleSelection = i;
        }
        SendMessageW(supersample, CB_SETCURSEL, supersampleSelection, 0);

        HWND rendererControl = GetDlgItem(dialog, IDC_SETTINGS_RENDERER);
        SendMessageW(rendererControl, CB_ADDSTRING, 0, reinterpret_cast<LPARAM>(L"Vulkan"));
        SendMessageW(rendererControl, CB_ADDSTRING, 0, reinterpret_cast<LPARAM>(L"DirectX 11"));
        std::string configuredRenderer = config.value("renderer", std::string("Vulkan"));
        std::transform(configuredRenderer.begin(), configuredRenderer.end(), configuredRenderer.begin(),
                       [](unsigned char ch) { return static_cast<char>(std::toupper(ch)); });
        SendMessageW(rendererControl, CB_SETCURSEL, configuredRenderer == "VULKAN" ? 0 : 1, 0);

        SetDlgItemInt(dialog, IDC_SETTINGS_MIDI_VOLUME, std::clamp(config.value("midiVolume", 100), 0, 100), FALSE);
        SetDlgItemInt(dialog, IDC_SETTINGS_MLOOK, std::clamp(config.value("mlookSensitivity", 50), 1, 200), FALSE);
        CheckDlgButton(dialog, IDC_SETTINGS_PCM_ENABLED,
                       config.value("pcmEnabled", true) ? BST_CHECKED : BST_UNCHECKED);
        SetDlgItemInt(dialog, IDC_SETTINGS_PCM_VOLUME, std::clamp(config.value("pcmVolume", 100), 0, 100), FALSE);
        SetDlgItemInt(dialog, IDC_SETTINGS_RAYCAST_FOV, std::clamp(config.value("raycastFov", 90), 30, 170), FALSE);

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
        tip(IDC_SETTINGS_MLOOK, IDC_SETTINGS_LABEL_MLOOK,
            L"Controls raw-mouse look sensitivity in raycast games. Higher values turn the camera farther for the same physical mouse movement. The valid range is 1 through 200 and changes take effect immediately.");
        tip(IDC_SETTINGS_PCM_ENABLED, 0,
            L"Enables or disables PCM digital audio such as voices and sound effects. Disabling it immediately stops active PCM playback and prevents new PCM sounds from starting. MIDI music is controlled separately.");
        tip(IDC_SETTINGS_PCM_VOLUME, IDC_SETTINGS_LABEL_PCM_VOL,
            L"Controls PCM digital-audio gain from 0 (silent) to 100 (full volume). Active WASAPI playback reads this value continuously, so volume changes take effect without restarting the sound. This does not change MIDI music volume.");
        tip(IDC_SETTINGS_RAYCAST_FOV, IDC_SETTINGS_LABEL_FOV,
            L"Sets the horizontal raycast field of view in degrees. Lower values zoom in; higher values show more of the room but introduce stronger wide-angle perspective. The accepted range is 30 through 170 degrees and applies immediately.");
        tip(IDC_SETTINGS_SUPERSAMPLE, IDC_SETTINGS_LABEL_SS,
            L"Sets how many sub-pixel rays are evaluated per output pixel. 1x is the fastest and is recommended for high frame rates; larger values reduce edge aliasing at a directly proportional GPU or CPU cost. High-resolution Vulkan rendering may clamp excessive values to protect frame time.");
        tip(IDC_SETTINGS_RENDERER, IDC_SETTINGS_LABEL_RENDERER,
            L"Selects the graphics backend used by v64tng. Vulkan uses the native compute and GPU model pipeline; DirectX 11 provides the Windows fallback renderer. The engine safely tears down the old backend and activates the new one when you press OK.");
        return TRUE;
    }
    case WM_COMMAND:
        if (LOWORD(wParam) == IDOK)
        {
            auto readBounded = [&](int id, int minimum, int maximum, const wchar_t* label, int& value) {
                BOOL valid = FALSE;
                const UINT raw = GetDlgItemInt(dialog, id, &valid, FALSE);
                if (!valid || raw < static_cast<UINT>(minimum) || raw > static_cast<UINT>(maximum))
                {
                    std::wstring message = std::wstring(label) + L" must be between " +
                                           std::to_wstring(minimum) + L" and " + std::to_wstring(maximum) + L".";
                    MessageBoxW(dialog, message.c_str(), L"Invalid setting", MB_OK | MB_ICONWARNING);
                    SetFocus(GetDlgItem(dialog, id));
                    return false;
                }
                value = static_cast<int>(raw);
                return true;
            };
            int midiVolume = 0, sensitivity = 0, pcmVolume = 0, fov = 0;
            if (!readBounded(IDC_SETTINGS_MIDI_VOLUME, 0, 100, L"MIDI volume", midiVolume) ||
                !readBounded(IDC_SETTINGS_MLOOK, 1, 200, L"Mouse-look sensitivity", sensitivity) ||
                !readBounded(IDC_SETTINGS_PCM_VOLUME, 0, 100, L"PCM volume", pcmVolume) ||
                !readBounded(IDC_SETTINGS_RAYCAST_FOV, 30, 170, L"Raycast FOV", fov))
                return TRUE;

            const int midiSelection = static_cast<int>(SendDlgItemMessageW(dialog, IDC_SETTINGS_MIDI_MODE, CB_GETCURSEL, 0, 0));
            const int ssSelection = static_cast<int>(SendDlgItemMessageW(dialog, IDC_SETTINGS_SUPERSAMPLE, CB_GETCURSEL, 0, 0));
            const int rendererSelection = static_cast<int>(SendDlgItemMessageW(dialog, IDC_SETTINGS_RENDERER, CB_GETCURSEL, 0, 0));
            const LRESULT supersample = SendDlgItemMessageW(dialog, IDC_SETTINGS_SUPERSAMPLE, CB_GETITEMDATA, ssSelection, 0);

            // v64tng keeps its native libADLMIDI OPL3 mode name. The core
            // engine's public "opl" alias would otherwise select OPL2 here.
            config["midiMode"] = midiSelection == 1 ? "general" : midiSelection == 2 ? "wavetable" : "opl3";
            config["midiVolume"] = midiVolume;
            config["mlookSensitivity"] = sensitivity;
            config["pcmEnabled"] = IsDlgButtonChecked(dialog, IDC_SETTINGS_PCM_ENABLED) == BST_CHECKED;
            config["pcmVolume"] = pcmVolume;
            config["raycastFov"] = fov;
            config["raycastSupersample"] = static_cast<int>(supersample);
            config["renderer"] = rendererSelection == 0 ? "Vulkan" : "DirectX";
            EndDialog(dialog, IDOK);
            return TRUE;
        }
        if (LOWORD(wParam) == IDCANCEL)
        {
            EndDialog(dialog, IDCANCEL);
            return TRUE;
        }
        break;
    case WM_CLOSE:
        EndDialog(dialog, IDCANCEL);
        return TRUE;
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
        ::PostQuitMessage(0);
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
            if (state.raycast.enabled)
                state.raycast.player.fov = deg2rad(static_cast<float>(config.value("raycastFov", 90)));
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
