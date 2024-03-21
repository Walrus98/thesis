# Get Capabilities: Retrieve metadata about available layers, formats, and operations.
curl -o GetCapabilitiesResponse.xml "http://example.com/wfs?service=WFS&request=GetCapabilities"

# DescribeFeatureType: Get a detailed description of the structure of the available vector data.
curl -o DescribeFeatureTypeResponse.xml "http://example.com/wfs?service=WFS&request=DescribeFeatureType&typeName=my_feature_type"

# GetFeature: Retrieve geographic features based on specific criteria.
curl -o GetFeatureResponse.xml "http://example.com/wfs?service=WFS&request=GetFeature&typeName=my_feature_type&bbox=10,20,30,40&outputFormat=GML"

# Transaction: Make changes on geographic data in the WFS service.
curl -X POST -H "Content-Type: application/xml" --data-binary "@TransactionRequest.xml" "http://example.com/wfs?service=WFS&request=Transaction"

# LockFeature: Acquire exclusive feature access lock for update operations.
curl -X POST -H "Content-Type: application/xml" --data-binary "@LockFeatureRequest.xml" "http://example.com/wfs?service=WFS&request=LockFeature"

# GetPropertyValue: Get the attribute values of one or more features without retrieving the entire geometry
curl -o GetPropertyValueResponse.xml "http://example.com/wfs?service=WFS&request=GetPropertyValue&typeName=my_feature_type&propertyName=my_property"

# GetFeatureWithLock: Get features with an exclusive access lock in a single operation
curl -o GetFeatureWithLockResponse.xml "http://example.com/wfs?service=WFS&request=GetFeatureWithLock&typeName=my_feature_type&bbox=10,20,30,40&outputFormat=GML"
