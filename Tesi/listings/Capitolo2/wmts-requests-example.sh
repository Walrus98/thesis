# Get Capabilities of the WMTS service to retrieve metadata about available layers, tile matrix sets, and operations.
curl -o GetCapabilitiesResponse.xml "http://example.com/wmts/service?service=WMTS&request=GetCapabilities"

# Get a specific map tile for a given layer, tile matrix set, and tile coordinates.
curl -o GetTileResponse.png "http://example.com/wmts/service?service=WMTS&request=GetTile&layer=my_layer&tileMatrixSet=my_tile_matrix_set&tileMatrix=1&tileRow=0&tileCol=0&format=image/png"

# Get Feature Info for a specific layer to obtain information about features at a particular location.
curl -o FeatureInfoResponse.xml "http://example.com/wmts/service?SERVICE=WMTS&request=GetFeatureInfo&layer=mylayer&tileMatrixSet=mytilematrixset&tileMatrix=1&tileRow=0&tileCol=0&format=image/png&infoFormat=text/xml&I=50&J=50"