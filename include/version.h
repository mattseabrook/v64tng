#ifndef V64TNG_VERSION_H
#define V64TNG_VERSION_H

#define V64TNG_VERSION_MAJOR 1
#define V64TNG_VERSION_MINOR 0
#define V64TNG_VERSION_YEAR 2026
#define V64TNG_VERSION_DATE_CODE 904
#define V64TNG_VERSION_DAILY_BUILD 28
#define V64TNG_VERSION_STRING "1.0.20260904.28"
#define V64TNG_VERSION_WSTRING L"1.0.20260904.28"

// VS_FIXEDFILEINFO stores four 16-bit fields, so the human-facing build date
// remains exact in the string fields. The last numeric field packs the
// day-of-year times 100 plus the daily build number.
#define V64TNG_FILE_VERSION 1,0,2026,24728

#endif // V64TNG_VERSION_H
