# Get Capabilities of the WMTS service to retrieve metadata about available layers, tile matrix sets, and operations.
curl -o GetCapabilitiesResponse.xml "http://example.com/wmts/service?SERVICE=WMTS&REQUEST=GetCapabilities"

# Get a specific map tile for a given layer, tile matrix set, and tile coordinates.
curl -o GetTileResponse.png "http://example.com/wmts/service?SERVICE=WMTS&REQUEST=GetTile&LAYER=my_layer&STYLE=default&TILEMATRIXSET=my_tile_matrix_set&TILEMATRIX=1&TILEROW=0&TILECOL=0&FORMAT=image/png"

# Get Feature Info for a specific layer to obtain information about features at a particular location.
curl -o FeatureInfoResponse.xml "http://example.com/wmts/service?SERVICE=WMTS&REQUEST=GetFeatureInfo&VERSION=1.0.0&LAYER=mylayer&STYLE=default&TILEMATRIXSET=mytilematrixset&TILEMATRIX=1&TILEROW=0&TILECOL=0&FORMAT=image/png&INFOFORMAT=text/xml&I=50&J=50"