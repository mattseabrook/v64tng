#ifndef V64TNG_UPDATE_H
#define V64TNG_UPDATE_H

#include <windows.h>
#include <optional>
#include <string>
#include <vector>

void openProjectGitHub(HWND owner);
void showUpdateDialog(HWND owner);

// Private, inherited-handle startup protocol; handled before config/game setup.
std::optional<int> handleUpdateStartup(std::vector<std::string>& arguments);
void completeUpdateStartup();

#endif
