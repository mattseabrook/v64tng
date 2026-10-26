#ifndef GRV_HOTSPOT_H
#define GRV_HOTSPOT_H

// Independent of save-file and microscope policies. DOS rectangles include
// their final row/column; the Windows convention uses half-open bounds.
enum class GrvHotspotConvention { Dos, Windows };

#endif
