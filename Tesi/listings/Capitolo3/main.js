import './style.css';
import { Map, View } from 'ol';
import TileLayer from 'ol/layer/Tile';
import OSM from 'ol/source/OSM';
import TileWMS from 'ol/source/TileWMS.js';

new Map({
  target: 'map',
  view: new View({
    center: [0, 0],
    zoom: 2
  }),
  layers: [
    new TileLayer({
      source: new OSM()
    }),
  ]
});
