export const clusterStyle = (size: number, geometry?: Geometry | RenderFeature): void | Style | Style[] => {

  if (!geometry) {
    return;
  }

  const styles: { [k in Type]?: Style | Style[] } = {
    Point: new Style({
      image: new CircleStyle({
        fill: new Fill({
          color: '#4338CA',
        }),
        stroke: new Stroke({
          color: 'rgba(255,255,255,0.4)',
          width: 4,
        }),
        radius: 20,
      }),
      text: new Text({
        font: 'Inter',
        text: size.toString(),
        fill: new Fill({
          color: '#FFFFFF',
        }),
        padding: [10, 10, 10, 10],
      }),
    }),
  };

  return styles[geometry.getType()];
};

export const landslideFeatureStyle = (): { [k in Type]?: Style | Style[] } => {
  return {
    Point: new Style({
      image: new RegularShape({
        fill: new Fill({ color: 'red' }),
        stroke: new Stroke({ color: 'black', width: 2 }),
        points: 3,
        radius: 10,
      }),
    }),
  };
};

export const defaultStyle = (): Style => {
  return new Style({
    image: new CircleStyle({
      fill: new Fill({ color: '#000000' }),
      stroke: new Stroke({
        color: '#FFFF00',
        width: 1.5,
      }),
      radius: 10,
    }),
    text: new Text({
      text: '⚠️',
      fill: new Fill({
        color: '#FFFFFF',
      }),
      padding: [13, 13, 13, 13],
    }),
  });
