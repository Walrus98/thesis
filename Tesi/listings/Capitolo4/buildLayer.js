export const buildLayer = (mapLayer: MapLayer) => {

    if (!mapLayer.layer) {
        return undefined;
    }

    switch (mapLayer.layer.type) {
        //...
        case 'tile': {
            const layer = new TileLayer({
                source: new TileImage({
                    url: mapLayer.layer.url,
                    crossOrigin: mapLayer.layer.crossOrigin,
                }),
                opacity: mapLayer.opacity / 100,
                visible: mapLayer.visible,
                zIndex: mapLayer.zIndex,
            });
            layer.set('id', mapLayer.key);
            return layer;
        }
        case 'geojson': {
            const source = new VectorSource({
                format: new GeoJSON({
                    dataProjection: mapLayer.projection?.name,
                    featureProjection: mapLayer.projection?.name,
                }),
                url: mapLayer.layer.url,
            });

            layer.set('id', mapLayer.key);
            return layer;
        }
        //...
    }
}