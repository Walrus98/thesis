# Get capabilities of a map
curl -o GetCapabilitiesResponse.xml "http://example.com/wms?service=WMS&version=1.3.0&request=GetCapabilities"

# Get a map image of a specific region
curl -o GetMapResponse.png "http://example.com/wms?service=WMS&request=GetMap&layers=my_layer&width=800&height=600&bbox=10,20,30,40&format=image/png"

# Get Feature Info for a specific layer
curl -o GetFeatureInfoResponse.xml "http://example.com/wms?service=WMS&request=GetFeatureInfo&layers=my_layer&query_layers=my_layer&info_format=text/xml&width=800&height=600&bbox=10,20,30,40&format=image/png&x=400&y=300"

