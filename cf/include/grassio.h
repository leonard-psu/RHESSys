#ifndef GRASSIO_H
#define GRASSIO_H

//ORG #include <grass/gis.h>
#include <grass/gis.h>
#include <grass/raster.h>

void* raster2array(const char* name, struct Cell_head* header, int* rows,
		int* cols, RASTER_MAP_TYPE out_type);

void array2raster(const void* data, const char* name,
		const RASTER_MAP_TYPE type, const int maxr, const int maxc);

#endif // GRASSIO_H
