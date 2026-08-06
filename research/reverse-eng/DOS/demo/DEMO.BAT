@echo off
echo Loading...
playtlc TRIPRO.tlc -l1 -g >nul
playtlc GUEST.tlc -l1 -g >nul
mode co80
playtlc HDINT061.tlc -l1 -g >nul
playtlc HGSEE001.tlc -l3 -g >nul
mode co80
echo Loading...
vdx face.vdx
mode co80
@echo on
