# Get Capabilities: Retrieve metadata about available layers, formats, and operations.
curl -o GetCapabilities.xml "http://example.com/wfs?service=WFS&request=GetCapabilities"

# GetFeature: Retrieve geographic features based on specific criteria.
curl -o GetFeature.xml "http://example.com/wfs?service=WFS&request=GetFeature&typeName=my_feature_type&bbox=10,20,30,40&outputFormat=GML"

# DescribeFeatureType: Get a detailed description of the structure of the available vector data.
curl -o DescribeFeatureType.xml "http://example.com/wfs?service=WFS&request=DescribeFeatureType&typeName=my_feature_type"

# Transaction: Make changes on geographic data in the WFS service.
curl -X POST -H "Content-Type: application/xml" --data-binary "@TransactionRequest.xml" "http://example.com/wfs?service=WFS&request=Transaction"

# GetPropertyValue: Get the attribute values of one or more features without retrieving the entire geometry
curl -o GetPropertyValue.xml "http://example.com/wfs?service=WFS&request=GetPropertyValue&typeName=my_feature_type&propertyName=my_property"

# LockFeature: Acquire exclusive feature access lock for update operations.
curl -X POST -H "Content-Type: application/xml" --data-binary "@LockFeatureRequest.xml" "http://example.com/wfs?service=WFS&request=LockFeature"

# GetFeatureWithLock: Get features with an exclusive access lock in a single operation
curl -o GetFeatureWithLock.xml "http://example.com/wfs?service=WFS&request=GetFeatureWithLock&typeName=my_feature_type&bbox=10,20,30,40&outputFormat=GML"
