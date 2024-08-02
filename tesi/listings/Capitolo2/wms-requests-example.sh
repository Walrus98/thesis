# Get Capabilities of the WMS service to retrieve metadata about available layers, formats, and operations.
curl -o GetCapabilitiesResponse.xml "http://example.com/wms?service=WMS&request=GetCapabilities"

# Get a map image of a specific region defined by the bounding box and other parameters.
curl -o GetMapResponse.png "http://example.com/wms?service=WMS&request=GetMap&layers=my_layer&width=800&height=600&bbox=10,20,30,40&format=image/png"

# Get Feature Info for a specific layer to obtain information about features at a particular location.
curl -o GetFeatureInfoResponse.xml "http://example.com/wms?service=WMS&request=GetFeatureInfo&layers=my_layer&query_layers=my_layer&info_format=text/xml&width=800&height=600&bbox=10,20,30,40&format=image/png&x=400&y=300"

# Describe the layer to retrieve detailed information about its properties and style.
curl -o DescribeLayerResponse.xml "http://example.com/wms?service=WMS&request=DescribeLayer&layers=my_layer&SLD_VERSION=1.1.0"

# Get the legend graphic for the layer to visualize the symbols used in the map legend.
curl -o GetLegendGraphicResponse.png "http://example.com/wms?service=WMS&request=GetLegendGraphic&layer=my_layer"
