/* eslint-disable unused-imports/no-unused-vars */
import { ViewContainerRef, Injector, ComponentRef } from '@angular/core';
import { Extent } from 'ol/extent';
import { FeatureLike } from 'ol/Feature';
import { Cluster } from 'ol/source';
import { ImageSourceEvent } from 'ol/source/Image';
import VectorSource from 'ol/source/Vector';
import { Style } from 'ol/style';

export type MapLayer = {
    key: string;
    group: string;
    draggable?: {
        draggableDisabled: boolean;
        groupDraggrableDisabled: boolean;
    };
    parentKey?: string;
    title: string;
    subTitle?: string;
    visible: boolean;
    hasOpacityControl: boolean;
    opacity: number;
    zIndex: number;
    layer?:
    | {
        type: 'tile';
        url: string;
        crossOrigin: string;
    }
    | {
        type: 'geojson';
        url: string;
    }
    | {
        type: 'assets';
        data: {
            id: string;
            name: string;
            coords: Coords;
        }[];
    };
    style?: {
        fill?: {
            color: string;
        };
        stroke?: {
            color: string;
            width: number;
        };
    };
    projection?: { name: string; projectionString: string };
    parseFeature?: (props: { [x: string]: unknown }) => MapFeature;
    popoverStrategy?: 'single' | 'multiple';
    useStyle?: (feature: FeatureLike) => void | Style | Style[];
    useCluster?: (source: VectorSource) => Cluster;
    getPopoverContent?: (
        viewContainerRef: ViewContainerRef,
        injector: Injector,
        props: { [x: string]: unknown },
    ) => ComponentRef<unknown>;
};

export type MapLayerStatus = {
    key: string;
    visible: boolean;
    opacity: number;
    zIndex: number;
};

export type Coords = [latitude: number, longitude: number];
