part of '_package.dart';

// Keep the original format.
// ignore_for_file: prefer_single_quotes, require_trailing_commas

/// https://docs.protomaps.com/basemaps/themes#black
const themeBlack = [
  {
    "id": "background",
    "type": "background",
    "paint": {"background-color": "#2b2b2b"}
  },
  {
    "id": "earth",
    "type": "fill",
    "filter": [
      "==",
      ["geometry-type"],
      "Polygon"
    ],
    "source": "protomaps",
    "source-layer": "earth",
    "paint": {"fill-color": "#141414"}
  },
  {
    "id": "landuse_park",
    "type": "fill",
    "source": "protomaps",
    "source-layer": "landuse",
    "filter": [
      "in",
      "kind",
      "national_park",
      "park",
      "cemetery",
      "protected_area",
      "nature_reserve",
      "forest",
      "golf_course"
    ],
    "paint": {
      "fill-color": [
        "interpolate",
        ["linear"],
        ["zoom"],
        0,
        "#181818",
        12,
        "#181818"
      ]
    }
  },
  {
    "id": "landuse_urban_green",
    "type": "fill",
    "source": "protomaps",
    "source-layer": "landuse",
    "filter": ["in", "kind", "allotments", "village_green", "playground"],
    "paint": {"fill-color": "#181818", "fill-opacity": 0.7}
  },
  {
    "id": "landuse_hospital",
    "type": "fill",
    "source": "protomaps",
    "source-layer": "landuse",
    "filter": ["==", "kind", "hospital"],
    "paint": {"fill-color": "#1d1d1d"}
  },
  {
    "id": "landuse_industrial",
    "type": "fill",
    "source": "protomaps",
    "source-layer": "landuse",
    "filter": ["==", "kind", "industrial"],
    "paint": {"fill-color": "#101010"}
  },
  {
    "id": "landuse_school",
    "type": "fill",
    "source": "protomaps",
    "source-layer": "landuse",
    "filter": ["in", "kind", "school", "university", "college"],
    "paint": {"fill-color": "#111111"}
  },
  {
    "id": "landuse_beach",
    "type": "fill",
    "source": "protomaps",
    "source-layer": "landuse",
    "filter": ["in", "kind", "beach"],
    "paint": {"fill-color": "#1f1f1f"}
  },
  {
    "id": "landuse_zoo",
    "type": "fill",
    "source": "protomaps",
    "source-layer": "landuse",
    "filter": ["in", "kind", "zoo"],
    "paint": {"fill-color": "#191919"}
  },
  {
    "id": "landuse_military",
    "type": "fill",
    "source": "protomaps",
    "source-layer": "landuse",
    "filter": ["in", "kind", "military", "naval_base", "airfield"],
    "paint": {"fill-color": "#191919"}
  },
  {
    "id": "landuse_wood",
    "type": "fill",
    "source": "protomaps",
    "source-layer": "landuse",
    "filter": ["in", "kind", "wood", "nature_reserve", "forest"],
    "paint": {
      "fill-color": [
        "interpolate",
        ["linear"],
        ["zoom"],
        0,
        "#1a1a1a",
        12,
        "#1a1a1a"
      ]
    }
  },
  {
    "id": "landuse_scrub",
    "type": "fill",
    "source": "protomaps",
    "source-layer": "landuse",
    "filter": ["in", "kind", "scrub", "grassland", "grass"],
    "paint": {
      "fill-color": [
        "interpolate",
        ["linear"],
        ["zoom"],
        0,
        "#1c1c1c",
        12,
        "#1c1c1c"
      ]
    }
  },
  {
    "id": "landuse_glacier",
    "type": "fill",
    "source": "protomaps",
    "source-layer": "landuse",
    "filter": ["==", "kind", "glacier"],
    "paint": {"fill-color": "#191919"}
  },
  {
    "id": "landuse_sand",
    "type": "fill",
    "source": "protomaps",
    "source-layer": "landuse",
    "filter": ["==", "kind", "sand"],
    "paint": {"fill-color": "#161616"}
  },
  {
    "id": "landuse_aerodrome",
    "type": "fill",
    "source": "protomaps",
    "source-layer": "landuse",
    "filter": ["in", "kind", "aerodrome"],
    "paint": {"fill-color": "#191919"}
  },
  {
    "id": "roads_runway",
    "type": "line",
    "source": "protomaps",
    "source-layer": "roads",
    "filter": ["==", "kind_detail", "runway"],
    "paint": {
      "line-color": "#323232",
      "line-width": [
        "interpolate",
        ["exponential", 1.6],
        ["zoom"],
        10,
        0,
        12,
        4,
        18,
        30
      ]
    }
  },
  {
    "id": "roads_taxiway",
    "type": "line",
    "source": "protomaps",
    "source-layer": "roads",
    "minzoom": 13,
    "filter": ["==", "kind_detail", "taxiway"],
    "paint": {
      "line-color": "#323232",
      "line-width": [
        "interpolate",
        ["exponential", 1.6],
        ["zoom"],
        13,
        0,
        13.5,
        1,
        15,
        6
      ]
    }
  },
  {
    "id": "landuse_runway",
    "type": "fill",
    "source": "protomaps",
    "source-layer": "landuse",
    "filter": [
      "any",
      ["in", "kind", "runway", "taxiway"]
    ],
    "paint": {"fill-color": "#323232"}
  },
  {
    "id": "water",
    "type": "fill",
    "filter": [
      "==",
      ["geometry-type"],
      "Polygon"
    ],
    "source": "protomaps",
    "source-layer": "water",
    "paint": {"fill-color": "#333333"}
  },
  {
    "id": "water_stream",
    "type": "line",
    "source": "protomaps",
    "source-layer": "water",
    "minzoom": 14,
    "filter": ["in", "kind", "stream"],
    "paint": {"line-color": "#333333", "line-width": 0.5}
  },
  {
    "id": "water_river",
    "type": "line",
    "source": "protomaps",
    "source-layer": "water",
    "minzoom": 9,
    "filter": ["in", "kind", "river"],
    "paint": {
      "line-color": "#333333",
      "line-width": [
        "interpolate",
        ["exponential", 1.6],
        ["zoom"],
        9,
        0,
        9.5,
        1,
        18,
        12
      ]
    }
  },
  {
    "id": "landuse_pedestrian",
    "type": "fill",
    "source": "protomaps",
    "source-layer": "landuse",
    "filter": ["==", "kind", "pedestrian"],
    "paint": {"fill-color": "#191919"}
  },
  {
    "id": "landuse_pier",
    "type": "fill",
    "source": "protomaps",
    "source-layer": "landuse",
    "filter": ["==", "kind", "pier"],
    "paint": {"fill-color": "#0a0a0a"}
  },
  {
    "id": "roads_tunnels_other_casing",
    "type": "line",
    "source": "protomaps",
    "source-layer": "roads",
    "filter": [
      "all",
      ["has", "is_tunnel"],
      ["in", "kind", "other", "path"]
    ],
    "paint": {
      "line-color": "#101010",
      "line-gap-width": [
        "interpolate",
        ["exponential", 1.6],
        ["zoom"],
        14,
        0,
        20,
        7
      ]
    }
  },
  {
    "id": "roads_tunnels_minor_casing",
    "type": "line",
    "source": "protomaps",
    "source-layer": "roads",
    "filter": [
      "all",
      ["has", "is_tunnel"],
      ["==", "kind", "minor_road"]
    ],
    "paint": {
      "line-color": "#101010",
      "line-dasharray": [3, 2],
      "line-gap-width": [
        "interpolate",
        ["exponential", 1.6],
        ["zoom"],
        11,
        0,
        12.5,
        0.5,
        15,
        2,
        18,
        11
      ],
      "line-width": [
        "interpolate",
        ["exponential", 1.6],
        ["zoom"],
        12,
        0,
        12.5,
        1
      ]
    }
  },
  {
    "id": "roads_tunnels_link_casing",
    "type": "line",
    "source": "protomaps",
    "source-layer": "roads",
    "filter": [
      "all",
      ["has", "is_tunnel"],
      ["has", "is_link"]
    ],
    "paint": {
      "line-color": "#101010",
      "line-dasharray": [3, 2],
      "line-gap-width": [
        "interpolate",
        ["exponential", 1.6],
        ["zoom"],
        13,
        0,
        13.5,
        1,
        18,
        11
      ],
      "line-width": [
        "interpolate",
        ["exponential", 1.6],
        ["zoom"],
        12,
        0,
        12.5,
        1
      ]
    }
  },
  {
    "id": "roads_tunnels_major_casing",
    "type": "line",
    "source": "protomaps",
    "source-layer": "roads",
    "filter": [
      "all",
      ["!has", "is_tunnel"],
      ["!has", "is_bridge"],
      ["==", "kind", "major_road"]
    ],
    "paint": {
      "line-color": "#101010",
      "line-dasharray": [3, 2],
      "line-gap-width": [
        "interpolate",
        ["exponential", 1.6],
        ["zoom"],
        7,
        0,
        7.5,
        0.5,
        18,
        13
      ],
      "line-width": [
        "interpolate",
        ["exponential", 1.6],
        ["zoom"],
        9,
        0,
        9.5,
        1
      ]
    }
  },
  {
    "id": "roads_tunnels_highway_casing",
    "type": "line",
    "source": "protomaps",
    "source-layer": "roads",
    "filter": [
      "all",
      ["!has", "is_tunnel"],
      ["!has", "is_bridge"],
      ["==", "kind", "highway"],
      ["!has", "is_link"]
    ],
    "paint": {
      "line-color": "#101010",
      "line-dasharray": [6, 0.5],
      "line-gap-width": [
        "interpolate",
        ["exponential", 1.6],
        ["zoom"],
        3,
        0,
        3.5,
        0.5,
        18,
        15
      ],
      "line-width": [
        "interpolate",
        ["exponential", 1.6],
        ["zoom"],
        7,
        0,
        7.5,
        1,
        20,
        15
      ]
    }
  },
  {
    "id": "roads_tunnels_other",
    "type": "line",
    "source": "protomaps",
    "source-layer": "roads",
    "filter": [
      "all",
      ["has", "is_tunnel"],
      ["in", "kind", "other", "path"]
    ],
    "paint": {
      "line-color": "#292929",
      "line-dasharray": [4.5, 0.5],
      "line-width": [
        "interpolate",
        ["exponential", 1.6],
        ["zoom"],
        14,
        0,
        20,
        7
      ]
    }
  },
  {
    "id": "roads_tunnels_minor",
    "type": "line",
    "source": "protomaps",
    "source-layer": "roads",
    "filter": [
      "all",
      ["has", "is_tunnel"],
      ["==", "kind", "minor_road"]
    ],
    "paint": {
      "line-color": "#292929",
      "line-width": [
        "interpolate",
        ["exponential", 1.6],
        ["zoom"],
        11,
        0,
        12.5,
        0.5,
        15,
        2,
        18,
        11
      ]
    }
  },
  {
    "id": "roads_tunnels_link",
    "type": "line",
    "source": "protomaps",
    "source-layer": "roads",
    "filter": [
      "all",
      ["has", "is_tunnel"],
      ["has", "is_link"]
    ],
    "paint": {
      "line-color": "#292929",
      "line-width": [
        "interpolate",
        ["exponential", 1.6],
        ["zoom"],
        13,
        0,
        13.5,
        1,
        18,
        11
      ]
    }
  },
  {
    "id": "roads_tunnels_major",
    "type": "line",
    "source": "protomaps",
    "source-layer": "roads",
    "filter": [
      "all",
      ["has", "is_tunnel"],
      ["==", "kind", "major_road"]
    ],
    "paint": {
      "line-color": "#292929",
      "line-width": [
        "interpolate",
        ["exponential", 1.6],
        ["zoom"],
        6,
        0,
        12,
        1.6,
        15,
        3,
        18,
        13
      ]
    }
  },
  {
    "id": "roads_tunnels_highway",
    "type": "line",
    "source": "protomaps",
    "source-layer": "roads",
    "filter": [
      "all",
      ["has", "is_tunnel"],
      [
        "==",
        ["get", "kind"],
        "highway"
      ],
      [
        "!",
        ["has", "is_link"]
      ]
    ],
    "paint": {
      "line-color": "#292929",
      "line-width": [
        "interpolate",
        ["exponential", 1.6],
        ["zoom"],
        3,
        0,
        6,
        1.1,
        12,
        1.6,
        15,
        5,
        18,
        15
      ]
    }
  },
  {
    "id": "buildings",
    "type": "fill",
    "source": "protomaps",
    "source-layer": "buildings",
    "paint": {"fill-color": "#0a0a0a", "fill-opacity": 0.5}
  },
  {
    "id": "roads_pier",
    "type": "line",
    "source": "protomaps",
    "source-layer": "roads",
    "filter": ["==", "kind_detail", "pier"],
    "paint": {
      "line-color": "#0a0a0a",
      "line-width": [
        "interpolate",
        ["exponential", 1.6],
        ["zoom"],
        12,
        0,
        12.5,
        0.5,
        20,
        16
      ]
    }
  },
  {
    "id": "roads_minor_service_casing",
    "type": "line",
    "source": "protomaps",
    "source-layer": "roads",
    "minzoom": 13,
    "filter": [
      "all",
      ["!has", "is_tunnel"],
      ["!has", "is_bridge"],
      ["==", "kind", "minor_road"],
      ["==", "kind_detail", "service"]
    ],
    "paint": {
      "line-color": "#141414",
      "line-gap-width": [
        "interpolate",
        ["exponential", 1.6],
        ["zoom"],
        13,
        0,
        18,
        8
      ],
      "line-width": [
        "interpolate",
        ["exponential", 1.6],
        ["zoom"],
        13,
        0,
        13.5,
        0.8
      ]
    }
  },
  {
    "id": "roads_minor_casing",
    "type": "line",
    "source": "protomaps",
    "source-layer": "roads",
    "filter": [
      "all",
      ["!has", "is_tunnel"],
      ["!has", "is_bridge"],
      ["==", "kind", "minor_road"],
      ["!=", "kind_detail", "service"]
    ],
    "paint": {
      "line-color": "#141414",
      "line-gap-width": [
        "interpolate",
        ["exponential", 1.6],
        ["zoom"],
        11,
        0,
        12.5,
        0.5,
        15,
        2,
        18,
        11
      ],
      "line-width": [
        "interpolate",
        ["exponential", 1.6],
        ["zoom"],
        12,
        0,
        12.5,
        1
      ]
    }
  },
  {
    "id": "roads_link_casing",
    "type": "line",
    "source": "protomaps",
    "source-layer": "roads",
    "minzoom": 13,
    "filter": ["has", "is_link"],
    "paint": {
      "line-color": "#141414",
      "line-gap-width": [
        "interpolate",
        ["exponential", 1.6],
        ["zoom"],
        13,
        0,
        13.5,
        1,
        18,
        11
      ],
      "line-width": [
        "interpolate",
        ["exponential", 1.6],
        ["zoom"],
        13,
        0,
        13.5,
        1.5
      ]
    }
  },
  {
    "id": "roads_major_casing_late",
    "type": "line",
    "source": "protomaps",
    "source-layer": "roads",
    "minzoom": 12,
    "filter": [
      "all",
      ["!has", "is_tunnel"],
      ["!has", "is_bridge"],
      ["==", "kind", "major_road"]
    ],
    "paint": {
      "line-color": "#141414",
      "line-gap-width": [
        "interpolate",
        ["exponential", 1.6],
        ["zoom"],
        6,
        0,
        12,
        1.6,
        15,
        3,
        18,
        13
      ],
      "line-width": [
        "interpolate",
        ["exponential", 1.6],
        ["zoom"],
        9,
        0,
        9.5,
        1
      ]
    }
  },
  {
    "id": "roads_highway_casing_late",
    "type": "line",
    "source": "protomaps",
    "source-layer": "roads",
    "minzoom": 12,
    "filter": [
      "all",
      ["!has", "is_tunnel"],
      ["!has", "is_bridge"],
      ["==", "kind", "highway"],
      ["!has", "is_link"]
    ],
    "paint": {
      "line-color": "#141414",
      "line-gap-width": [
        "interpolate",
        ["exponential", 1.6],
        ["zoom"],
        3,
        0,
        3.5,
        0.5,
        18,
        15
      ],
      "line-width": [
        "interpolate",
        ["exponential", 1.6],
        ["zoom"],
        7,
        0,
        7.5,
        1,
        20,
        15
      ]
    }
  },
  {
    "id": "roads_other",
    "type": "line",
    "source": "protomaps",
    "source-layer": "roads",
    "filter": [
      "all",
      ["!has", "is_tunnel"],
      ["!has", "is_bridge"],
      ["in", "kind", "other", "path"],
      ["!=", "kind_detail", "pier"]
    ],
    "paint": {
      "line-color": "#1f1f1f",
      "line-dasharray": [3, 1],
      "line-width": [
        "interpolate",
        ["exponential", 1.6],
        ["zoom"],
        14,
        0,
        20,
        7
      ]
    }
  },
  {
    "id": "roads_link",
    "type": "line",
    "source": "protomaps",
    "source-layer": "roads",
    "filter": ["has", "is_link"],
    "paint": {
      "line-color": "#1f1f1f",
      "line-width": [
        "interpolate",
        ["exponential", 1.6],
        ["zoom"],
        13,
        0,
        13.5,
        1,
        18,
        11
      ]
    }
  },
  {
    "id": "roads_minor_service",
    "type": "line",
    "source": "protomaps",
    "source-layer": "roads",
    "filter": [
      "all",
      ["!has", "is_tunnel"],
      ["!has", "is_bridge"],
      ["==", "kind", "minor_road"],
      ["==", "kind_detail", "service"]
    ],
    "paint": {
      "line-color": "#1f1f1f",
      "line-width": [
        "interpolate",
        ["exponential", 1.6],
        ["zoom"],
        13,
        0,
        18,
        8
      ]
    }
  },
  {
    "id": "roads_minor",
    "type": "line",
    "source": "protomaps",
    "source-layer": "roads",
    "filter": [
      "all",
      ["!has", "is_tunnel"],
      ["!has", "is_bridge"],
      ["==", "kind", "minor_road"],
      ["!=", "kind_detail", "service"]
    ],
    "paint": {
      "line-color": [
        "interpolate",
        ["exponential", 1.6],
        ["zoom"],
        11,
        "#292929",
        16,
        "#1f1f1f"
      ],
      "line-width": [
        "interpolate",
        ["exponential", 1.6],
        ["zoom"],
        11,
        0,
        12.5,
        0.5,
        15,
        2,
        18,
        11
      ]
    }
  },
  {
    "id": "roads_major_casing_early",
    "type": "line",
    "source": "protomaps",
    "source-layer": "roads",
    "maxzoom": 12,
    "filter": [
      "all",
      ["!has", "is_tunnel"],
      ["!has", "is_bridge"],
      ["==", "kind", "major_road"]
    ],
    "paint": {
      "line-color": "#141414",
      "line-gap-width": [
        "interpolate",
        ["exponential", 1.6],
        ["zoom"],
        7,
        0,
        7.5,
        0.5,
        18,
        13
      ],
      "line-width": [
        "interpolate",
        ["exponential", 1.6],
        ["zoom"],
        9,
        0,
        9.5,
        1
      ]
    }
  },
  {
    "id": "roads_major",
    "type": "line",
    "source": "protomaps",
    "source-layer": "roads",
    "filter": [
      "all",
      ["!has", "is_tunnel"],
      ["!has", "is_bridge"],
      ["==", "kind", "major_road"]
    ],
    "paint": {
      "line-color": "#292929",
      "line-width": [
        "interpolate",
        ["exponential", 1.6],
        ["zoom"],
        6,
        0,
        12,
        1.6,
        15,
        3,
        18,
        13
      ]
    }
  },
  {
    "id": "roads_highway_casing_early",
    "type": "line",
    "source": "protomaps",
    "source-layer": "roads",
    "maxzoom": 12,
    "filter": [
      "all",
      ["!has", "is_tunnel"],
      ["!has", "is_bridge"],
      ["==", "kind", "highway"],
      ["!has", "is_link"]
    ],
    "paint": {
      "line-color": "#141414",
      "line-gap-width": [
        "interpolate",
        ["exponential", 1.6],
        ["zoom"],
        3,
        0,
        3.5,
        0.5,
        18,
        15
      ],
      "line-width": [
        "interpolate",
        ["exponential", 1.6],
        ["zoom"],
        7,
        0,
        7.5,
        1
      ]
    }
  },
  {
    "id": "roads_highway",
    "type": "line",
    "source": "protomaps",
    "source-layer": "roads",
    "filter": [
      "all",
      ["!has", "is_tunnel"],
      ["!has", "is_bridge"],
      ["==", "kind", "highway"],
      ["!has", "is_link"]
    ],
    "paint": {
      "line-color": "#292929",
      "line-width": [
        "interpolate",
        ["exponential", 1.6],
        ["zoom"],
        3,
        0,
        6,
        1.1,
        12,
        1.6,
        15,
        5,
        18,
        15
      ]
    }
  },
  {
    "id": "roads_rail",
    "type": "line",
    "source": "protomaps",
    "source-layer": "roads",
    "filter": ["==", "kind", "rail"],
    "paint": {
      "line-dasharray": [0.3, 0.75],
      "line-opacity": 0.5,
      "line-color": "#292929",
      "line-width": [
        "interpolate",
        ["exponential", 1.6],
        ["zoom"],
        3,
        0,
        6,
        0.15,
        18,
        9
      ]
    }
  },
  {
    "id": "boundaries_country",
    "type": "line",
    "source": "protomaps",
    "source-layer": "boundaries",
    "filter": ["<=", "kind_detail", 2],
    "paint": {
      "line-color": "#707070",
      "line-width": 1,
      "line-dasharray": [3, 2]
    }
  },
  {
    "id": "boundaries",
    "type": "line",
    "source": "protomaps",
    "source-layer": "boundaries",
    "filter": [">", "kind_detail", 2],
    "paint": {
      "line-color": "#707070",
      "line-width": 0.5,
      "line-dasharray": [3, 2]
    }
  },
  {
    "id": "roads_bridges_other_casing",
    "type": "line",
    "source": "protomaps",
    "source-layer": "roads",
    "minzoom": 12,
    "filter": [
      "all",
      ["has", "is_bridge"],
      ["in", "kind", "other", "path"]
    ],
    "paint": {
      "line-color": "#141414",
      "line-gap-width": [
        "interpolate",
        ["exponential", 1.6],
        ["zoom"],
        14,
        0,
        20,
        7
      ]
    }
  },
  {
    "id": "roads_bridges_link_casing",
    "type": "line",
    "source": "protomaps",
    "source-layer": "roads",
    "minzoom": 12,
    "filter": [
      "all",
      ["has", "is_bridge"],
      ["has", "is_link"]
    ],
    "paint": {
      "line-color": "#141414",
      "line-gap-width": [
        "interpolate",
        ["exponential", 1.6],
        ["zoom"],
        13,
        0,
        13.5,
        1,
        18,
        11
      ],
      "line-width": [
        "interpolate",
        ["exponential", 1.6],
        ["zoom"],
        12,
        0,
        12.5,
        1.5
      ]
    }
  },
  {
    "id": "roads_bridges_minor_casing",
    "type": "line",
    "source": "protomaps",
    "source-layer": "roads",
    "minzoom": 12,
    "filter": [
      "all",
      ["has", "is_bridge"],
      ["==", "kind", "minor_road"]
    ],
    "paint": {
      "line-color": "#141414",
      "line-gap-width": [
        "interpolate",
        ["exponential", 1.6],
        ["zoom"],
        11,
        0,
        12.5,
        0.5,
        15,
        2,
        18,
        11
      ],
      "line-width": [
        "interpolate",
        ["exponential", 1.6],
        ["zoom"],
        13,
        0,
        13.5,
        0.8
      ]
    }
  },
  {
    "id": "roads_bridges_major_casing",
    "type": "line",
    "source": "protomaps",
    "source-layer": "roads",
    "minzoom": 12,
    "filter": [
      "all",
      ["has", "is_bridge"],
      ["==", "kind", "major_road"]
    ],
    "paint": {
      "line-color": "#141414",
      "line-gap-width": [
        "interpolate",
        ["exponential", 1.6],
        ["zoom"],
        7,
        0,
        7.5,
        0.5,
        18,
        10
      ],
      "line-width": [
        "interpolate",
        ["exponential", 1.6],
        ["zoom"],
        9,
        0,
        9.5,
        1.5
      ]
    }
  },
  {
    "id": "roads_bridges_other",
    "type": "line",
    "source": "protomaps",
    "source-layer": "roads",
    "minzoom": 12,
    "filter": [
      "all",
      ["has", "is_bridge"],
      ["in", "kind", "other", "path"]
    ],
    "paint": {
      "line-color": "#1f1f1f",
      "line-dasharray": [2, 1],
      "line-width": [
        "interpolate",
        ["exponential", 1.6],
        ["zoom"],
        14,
        0,
        20,
        7
      ]
    }
  },
  {
    "id": "roads_bridges_minor",
    "type": "line",
    "source": "protomaps",
    "source-layer": "roads",
    "minzoom": 12,
    "filter": [
      "all",
      ["has", "is_bridge"],
      ["==", "kind", "minor_road"]
    ],
    "paint": {
      "line-color": "#1f1f1f",
      "line-width": [
        "interpolate",
        ["exponential", 1.6],
        ["zoom"],
        11,
        0,
        12.5,
        0.5,
        15,
        2,
        18,
        11
      ]
    }
  },
  {
    "id": "roads_bridges_link",
    "type": "line",
    "source": "protomaps",
    "source-layer": "roads",
    "minzoom": 12,
    "filter": [
      "all",
      ["has", "is_bridge"],
      ["has", "is_link"]
    ],
    "paint": {
      "line-color": "#1f1f1f",
      "line-width": [
        "interpolate",
        ["exponential", 1.6],
        ["zoom"],
        13,
        0,
        13.5,
        1,
        18,
        11
      ]
    }
  },
  {
    "id": "roads_bridges_major",
    "type": "line",
    "source": "protomaps",
    "source-layer": "roads",
    "minzoom": 12,
    "filter": [
      "all",
      ["has", "is_bridge"],
      ["==", "kind", "major_road"]
    ],
    "paint": {
      "line-color": "#292929",
      "line-width": [
        "interpolate",
        ["exponential", 1.6],
        ["zoom"],
        6,
        0,
        12,
        1.6,
        15,
        3,
        18,
        13
      ]
    }
  },
  {
    "id": "roads_bridges_highway_casing",
    "type": "line",
    "source": "protomaps",
    "source-layer": "roads",
    "minzoom": 12,
    "filter": [
      "all",
      ["has", "is_bridge"],
      ["==", "kind", "highway"],
      ["!has", "is_link"]
    ],
    "paint": {
      "line-color": "#141414",
      "line-gap-width": [
        "interpolate",
        ["exponential", 1.6],
        ["zoom"],
        3,
        0,
        3.5,
        0.5,
        18,
        15
      ],
      "line-width": [
        "interpolate",
        ["exponential", 1.6],
        ["zoom"],
        7,
        0,
        7.5,
        1,
        20,
        15
      ]
    }
  },
  {
    "id": "roads_bridges_highway",
    "type": "line",
    "source": "protomaps",
    "source-layer": "roads",
    "filter": [
      "all",
      ["has", "is_bridge"],
      ["==", "kind", "highway"],
      ["!has", "is_link"]
    ],
    "paint": {
      "line-color": "#292929",
      "line-width": [
        "interpolate",
        ["exponential", 1.6],
        ["zoom"],
        3,
        0,
        6,
        1.1,
        12,
        1.6,
        15,
        5,
        18,
        15
      ]
    }
  },
  {
    "id": "water_waterway_label",
    "type": "symbol",
    "source": "protomaps",
    "source-layer": "water",
    "minzoom": 13,
    "filter": ["in", "kind", "river", "stream"],
    "layout": {
      "symbol-placement": "line",
      "text-font": ["Noto Sans Italic"],
      "text-field": [
        "case",
        [
          "all",
          [
            "any",
            ["has", "name"],
            ["has", "pgf:name"]
          ],
          [
            "!",
            [
              "any",
              ["has", "name2"],
              ["has", "pgf:name2"]
            ]
          ],
          [
            "!",
            [
              "any",
              ["has", "name3"],
              ["has", "pgf:name3"]
            ]
          ]
        ],
        [
          "case",
          ["has", "script"],
          [
            "case",
            [
              "any",
              [
                "is-supported-script",
                ["get", "name"]
              ],
              ["has", "pgf:name"]
            ],
            [
              "format",
              [
                "coalesce",
                ["get", "name:en"],
                ["get", "name:en"]
              ],
              {},
              "\n",
              {},
              [
                "case",
                [
                  "all",
                  [
                    "!",
                    ["has", "name:en"]
                  ],
                  ["has", "name:en"],
                  [
                    "!",
                    ["has", "script"]
                  ]
                ],
                "",
                [
                  "coalesce",
                  ["get", "pgf:name"],
                  ["get", "name"]
                ]
              ],
              {
                "text-font": [
                  "case",
                  [
                    "==",
                    ["get", "script"],
                    "Devanagari"
                  ],
                  [
                    "literal",
                    ["Noto Sans Devanagari Regular v1"]
                  ],
                  [
                    "literal",
                    ["Noto Sans Regular"]
                  ]
                ]
              }
            ],
            ["get", "name:en"]
          ],
          [
            "format",
            [
              "coalesce",
              ["get", "name:en"],
              ["get", "pgf:name"],
              ["get", "name"]
            ],
            {}
          ]
        ],
        [
          "all",
          [
            "any",
            ["has", "name"],
            ["has", "pgf:name"]
          ],
          [
            "any",
            ["has", "name2"],
            ["has", "pgf:name2"]
          ],
          [
            "!",
            [
              "any",
              ["has", "name3"],
              ["has", "pgf:name3"]
            ]
          ]
        ],
        [
          "case",
          [
            "all",
            ["has", "script"],
            ["has", "script2"]
          ],
          [
            "format",
            ["get", "name:en"],
            {},
            "\n",
            {},
            [
              "coalesce",
              ["get", "pgf:name"],
              ["get", "name"]
            ],
            {
              "text-font": [
                "case",
                [
                  "==",
                  ["get", "script"],
                  "Devanagari"
                ],
                [
                  "literal",
                  ["Noto Sans Devanagari Regular v1"]
                ],
                [
                  "literal",
                  ["Noto Sans Regular"]
                ]
              ]
            },
            "\n",
            {},
            [
              "coalesce",
              ["get", "pgf:name2"],
              ["get", "name2"]
            ],
            {
              "text-font": [
                "case",
                [
                  "==",
                  ["get", "script2"],
                  "Devanagari"
                ],
                [
                  "literal",
                  ["Noto Sans Devanagari Regular v1"]
                ],
                [
                  "literal",
                  ["Noto Sans Regular"]
                ]
              ]
            }
          ],
          [
            "case",
            ["has", "script2"],
            [
              "format",
              [
                "coalesce",
                ["get", "name:en"],
                ["get", "pgf:name"],
                ["get", "name"]
              ],
              {},
              "\n",
              {},
              [
                "coalesce",
                ["get", "pgf:name2"],
                ["get", "name2"]
              ],
              {
                "text-font": [
                  "case",
                  [
                    "==",
                    ["get", "script2"],
                    "Devanagari"
                  ],
                  [
                    "literal",
                    ["Noto Sans Devanagari Regular v1"]
                  ],
                  [
                    "literal",
                    ["Noto Sans Regular"]
                  ]
                ]
              }
            ],
            [
              "format",
              [
                "coalesce",
                ["get", "name:en"],
                ["get", "pgf:name2"],
                ["get", "name2"]
              ],
              {},
              "\n",
              {},
              [
                "coalesce",
                ["get", "pgf:name"],
                ["get", "name"]
              ],
              {
                "text-font": [
                  "case",
                  [
                    "==",
                    ["get", "script"],
                    "Devanagari"
                  ],
                  [
                    "literal",
                    ["Noto Sans Devanagari Regular v1"]
                  ],
                  [
                    "literal",
                    ["Noto Sans Regular"]
                  ]
                ]
              }
            ]
          ]
        ],
        [
          "case",
          [
            "all",
            ["has", "script"],
            ["has", "script2"],
            ["has", "script3"]
          ],
          [
            "format",
            ["get", "name:en"],
            {},
            "\n",
            {},
            [
              "coalesce",
              ["get", "pgf:name"],
              ["get", "name"]
            ],
            {
              "text-font": [
                "case",
                [
                  "==",
                  ["get", "script"],
                  "Devanagari"
                ],
                [
                  "literal",
                  ["Noto Sans Devanagari Regular v1"]
                ],
                [
                  "literal",
                  ["Noto Sans Regular"]
                ]
              ]
            },
            "\n",
            {},
            [
              "coalesce",
              ["get", "pgf:name2"],
              ["get", "name2"]
            ],
            {
              "text-font": [
                "case",
                [
                  "==",
                  ["get", "script2"],
                  "Devanagari"
                ],
                [
                  "literal",
                  ["Noto Sans Devanagari Regular v1"]
                ],
                [
                  "literal",
                  ["Noto Sans Regular"]
                ]
              ]
            },
            "\n",
            {},
            [
              "coalesce",
              ["get", "pgf:name3"],
              ["get", "name3"]
            ],
            {
              "text-font": [
                "case",
                [
                  "==",
                  ["get", "script3"],
                  "Devanagari"
                ],
                [
                  "literal",
                  ["Noto Sans Devanagari Regular v1"]
                ],
                [
                  "literal",
                  ["Noto Sans Regular"]
                ]
              ]
            }
          ],
          [
            "case",
            [
              "!",
              ["has", "script"]
            ],
            [
              "format",
              [
                "coalesce",
                ["get", "name:en"],
                ["get", "pgf:name"],
                ["get", "name"]
              ],
              {},
              "\n",
              {},
              [
                "coalesce",
                ["get", "pgf:name2"],
                ["get", "name2"]
              ],
              {
                "text-font": [
                  "case",
                  [
                    "==",
                    ["get", "script2"],
                    "Devanagari"
                  ],
                  [
                    "literal",
                    ["Noto Sans Devanagari Regular v1"]
                  ],
                  [
                    "literal",
                    ["Noto Sans Regular"]
                  ]
                ]
              },
              "\n",
              {},
              [
                "coalesce",
                ["get", "pgf:name3"],
                ["get", "name3"]
              ],
              {
                "text-font": [
                  "case",
                  [
                    "==",
                    ["get", "script3"],
                    "Devanagari"
                  ],
                  [
                    "literal",
                    ["Noto Sans Devanagari Regular v1"]
                  ],
                  [
                    "literal",
                    ["Noto Sans Regular"]
                  ]
                ]
              }
            ],
            [
              "!",
              ["has", "script2"]
            ],
            [
              "format",
              [
                "coalesce",
                ["get", "name:en"],
                ["get", "pgf:name2"],
                ["get", "name2"]
              ],
              {},
              "\n",
              {},
              [
                "coalesce",
                ["get", "pgf:name"],
                ["get", "name"]
              ],
              {
                "text-font": [
                  "case",
                  [
                    "==",
                    ["get", "script"],
                    "Devanagari"
                  ],
                  [
                    "literal",
                    ["Noto Sans Devanagari Regular v1"]
                  ],
                  [
                    "literal",
                    ["Noto Sans Regular"]
                  ]
                ]
              },
              "\n",
              {},
              [
                "coalesce",
                ["get", "pgf:name3"],
                ["get", "name3"]
              ],
              {
                "text-font": [
                  "case",
                  [
                    "==",
                    ["get", "script3"],
                    "Devanagari"
                  ],
                  [
                    "literal",
                    ["Noto Sans Devanagari Regular v1"]
                  ],
                  [
                    "literal",
                    ["Noto Sans Regular"]
                  ]
                ]
              }
            ],
            [
              "format",
              [
                "coalesce",
                ["get", "name:en"],
                ["get", "pgf:name3"],
                ["get", "name3"]
              ],
              {},
              "\n",
              {},
              [
                "coalesce",
                ["get", "pgf:name"],
                ["get", "name"]
              ],
              {
                "text-font": [
                  "case",
                  [
                    "==",
                    ["get", "script"],
                    "Devanagari"
                  ],
                  [
                    "literal",
                    ["Noto Sans Devanagari Regular v1"]
                  ],
                  [
                    "literal",
                    ["Noto Sans Regular"]
                  ]
                ]
              },
              "\n",
              {},
              [
                "coalesce",
                ["get", "pgf:name2"],
                ["get", "name2"]
              ],
              {
                "text-font": [
                  "case",
                  [
                    "==",
                    ["get", "script2"],
                    "Devanagari"
                  ],
                  [
                    "literal",
                    ["Noto Sans Devanagari Regular v1"]
                  ],
                  [
                    "literal",
                    ["Noto Sans Regular"]
                  ]
                ]
              }
            ]
          ]
        ]
      ],
      "text-size": 12,
      "text-letter-spacing": 0.2
    },
    "paint": {"text-color": "#707070"}
  },
  {
    "id": "roads_labels_minor",
    "type": "symbol",
    "source": "protomaps",
    "source-layer": "roads",
    "minzoom": 15,
    "filter": ["in", "kind", "minor_road", "other", "path"],
    "layout": {
      "symbol-sort-key": ["get", "min_zoom"],
      "symbol-placement": "line",
      "text-font": ["Noto Sans Regular"],
      "text-field": [
        "case",
        [
          "all",
          [
            "any",
            ["has", "name"],
            ["has", "pgf:name"]
          ],
          [
            "!",
            [
              "any",
              ["has", "name2"],
              ["has", "pgf:name2"]
            ]
          ],
          [
            "!",
            [
              "any",
              ["has", "name3"],
              ["has", "pgf:name3"]
            ]
          ]
        ],
        [
          "case",
          ["has", "script"],
          [
            "case",
            [
              "any",
              [
                "is-supported-script",
                ["get", "name"]
              ],
              ["has", "pgf:name"]
            ],
            [
              "format",
              [
                "coalesce",
                ["get", "name:en"],
                ["get", "name:en"]
              ],
              {},
              "\n",
              {},
              [
                "case",
                [
                  "all",
                  [
                    "!",
                    ["has", "name:en"]
                  ],
                  ["has", "name:en"],
                  [
                    "!",
                    ["has", "script"]
                  ]
                ],
                "",
                [
                  "coalesce",
                  ["get", "pgf:name"],
                  ["get", "name"]
                ]
              ],
              {
                "text-font": [
                  "case",
                  [
                    "==",
                    ["get", "script"],
                    "Devanagari"
                  ],
                  [
                    "literal",
                    ["Noto Sans Devanagari Regular v1"]
                  ],
                  [
                    "literal",
                    ["Noto Sans Regular"]
                  ]
                ]
              }
            ],
            ["get", "name:en"]
          ],
          [
            "format",
            [
              "coalesce",
              ["get", "name:en"],
              ["get", "pgf:name"],
              ["get", "name"]
            ],
            {}
          ]
        ],
        [
          "all",
          [
            "any",
            ["has", "name"],
            ["has", "pgf:name"]
          ],
          [
            "any",
            ["has", "name2"],
            ["has", "pgf:name2"]
          ],
          [
            "!",
            [
              "any",
              ["has", "name3"],
              ["has", "pgf:name3"]
            ]
          ]
        ],
        [
          "case",
          [
            "all",
            ["has", "script"],
            ["has", "script2"]
          ],
          [
            "format",
            ["get", "name:en"],
            {},
            "\n",
            {},
            [
              "coalesce",
              ["get", "pgf:name"],
              ["get", "name"]
            ],
            {
              "text-font": [
                "case",
                [
                  "==",
                  ["get", "script"],
                  "Devanagari"
                ],
                [
                  "literal",
                  ["Noto Sans Devanagari Regular v1"]
                ],
                [
                  "literal",
                  ["Noto Sans Regular"]
                ]
              ]
            },
            "\n",
            {},
            [
              "coalesce",
              ["get", "pgf:name2"],
              ["get", "name2"]
            ],
            {
              "text-font": [
                "case",
                [
                  "==",
                  ["get", "script2"],
                  "Devanagari"
                ],
                [
                  "literal",
                  ["Noto Sans Devanagari Regular v1"]
                ],
                [
                  "literal",
                  ["Noto Sans Regular"]
                ]
              ]
            }
          ],
          [
            "case",
            ["has", "script2"],
            [
              "format",
              [
                "coalesce",
                ["get", "name:en"],
                ["get", "pgf:name"],
                ["get", "name"]
              ],
              {},
              "\n",
              {},
              [
                "coalesce",
                ["get", "pgf:name2"],
                ["get", "name2"]
              ],
              {
                "text-font": [
                  "case",
                  [
                    "==",
                    ["get", "script2"],
                    "Devanagari"
                  ],
                  [
                    "literal",
                    ["Noto Sans Devanagari Regular v1"]
                  ],
                  [
                    "literal",
                    ["Noto Sans Regular"]
                  ]
                ]
              }
            ],
            [
              "format",
              [
                "coalesce",
                ["get", "name:en"],
                ["get", "pgf:name2"],
                ["get", "name2"]
              ],
              {},
              "\n",
              {},
              [
                "coalesce",
                ["get", "pgf:name"],
                ["get", "name"]
              ],
              {
                "text-font": [
                  "case",
                  [
                    "==",
                    ["get", "script"],
                    "Devanagari"
                  ],
                  [
                    "literal",
                    ["Noto Sans Devanagari Regular v1"]
                  ],
                  [
                    "literal",
                    ["Noto Sans Regular"]
                  ]
                ]
              }
            ]
          ]
        ],
        [
          "case",
          [
            "all",
            ["has", "script"],
            ["has", "script2"],
            ["has", "script3"]
          ],
          [
            "format",
            ["get", "name:en"],
            {},
            "\n",
            {},
            [
              "coalesce",
              ["get", "pgf:name"],
              ["get", "name"]
            ],
            {
              "text-font": [
                "case",
                [
                  "==",
                  ["get", "script"],
                  "Devanagari"
                ],
                [
                  "literal",
                  ["Noto Sans Devanagari Regular v1"]
                ],
                [
                  "literal",
                  ["Noto Sans Regular"]
                ]
              ]
            },
            "\n",
            {},
            [
              "coalesce",
              ["get", "pgf:name2"],
              ["get", "name2"]
            ],
            {
              "text-font": [
                "case",
                [
                  "==",
                  ["get", "script2"],
                  "Devanagari"
                ],
                [
                  "literal",
                  ["Noto Sans Devanagari Regular v1"]
                ],
                [
                  "literal",
                  ["Noto Sans Regular"]
                ]
              ]
            },
            "\n",
            {},
            [
              "coalesce",
              ["get", "pgf:name3"],
              ["get", "name3"]
            ],
            {
              "text-font": [
                "case",
                [
                  "==",
                  ["get", "script3"],
                  "Devanagari"
                ],
                [
                  "literal",
                  ["Noto Sans Devanagari Regular v1"]
                ],
                [
                  "literal",
                  ["Noto Sans Regular"]
                ]
              ]
            }
          ],
          [
            "case",
            [
              "!",
              ["has", "script"]
            ],
            [
              "format",
              [
                "coalesce",
                ["get", "name:en"],
                ["get", "pgf:name"],
                ["get", "name"]
              ],
              {},
              "\n",
              {},
              [
                "coalesce",
                ["get", "pgf:name2"],
                ["get", "name2"]
              ],
              {
                "text-font": [
                  "case",
                  [
                    "==",
                    ["get", "script2"],
                    "Devanagari"
                  ],
                  [
                    "literal",
                    ["Noto Sans Devanagari Regular v1"]
                  ],
                  [
                    "literal",
                    ["Noto Sans Regular"]
                  ]
                ]
              },
              "\n",
              {},
              [
                "coalesce",
                ["get", "pgf:name3"],
                ["get", "name3"]
              ],
              {
                "text-font": [
                  "case",
                  [
                    "==",
                    ["get", "script3"],
                    "Devanagari"
                  ],
                  [
                    "literal",
                    ["Noto Sans Devanagari Regular v1"]
                  ],
                  [
                    "literal",
                    ["Noto Sans Regular"]
                  ]
                ]
              }
            ],
            [
              "!",
              ["has", "script2"]
            ],
            [
              "format",
              [
                "coalesce",
                ["get", "name:en"],
                ["get", "pgf:name2"],
                ["get", "name2"]
              ],
              {},
              "\n",
              {},
              [
                "coalesce",
                ["get", "pgf:name"],
                ["get", "name"]
              ],
              {
                "text-font": [
                  "case",
                  [
                    "==",
                    ["get", "script"],
                    "Devanagari"
                  ],
                  [
                    "literal",
                    ["Noto Sans Devanagari Regular v1"]
                  ],
                  [
                    "literal",
                    ["Noto Sans Regular"]
                  ]
                ]
              },
              "\n",
              {},
              [
                "coalesce",
                ["get", "pgf:name3"],
                ["get", "name3"]
              ],
              {
                "text-font": [
                  "case",
                  [
                    "==",
                    ["get", "script3"],
                    "Devanagari"
                  ],
                  [
                    "literal",
                    ["Noto Sans Devanagari Regular v1"]
                  ],
                  [
                    "literal",
                    ["Noto Sans Regular"]
                  ]
                ]
              }
            ],
            [
              "format",
              [
                "coalesce",
                ["get", "name:en"],
                ["get", "pgf:name3"],
                ["get", "name3"]
              ],
              {},
              "\n",
              {},
              [
                "coalesce",
                ["get", "pgf:name"],
                ["get", "name"]
              ],
              {
                "text-font": [
                  "case",
                  [
                    "==",
                    ["get", "script"],
                    "Devanagari"
                  ],
                  [
                    "literal",
                    ["Noto Sans Devanagari Regular v1"]
                  ],
                  [
                    "literal",
                    ["Noto Sans Regular"]
                  ]
                ]
              },
              "\n",
              {},
              [
                "coalesce",
                ["get", "pgf:name2"],
                ["get", "name2"]
              ],
              {
                "text-font": [
                  "case",
                  [
                    "==",
                    ["get", "script2"],
                    "Devanagari"
                  ],
                  [
                    "literal",
                    ["Noto Sans Devanagari Regular v1"]
                  ],
                  [
                    "literal",
                    ["Noto Sans Regular"]
                  ]
                ]
              }
            ]
          ]
        ]
      ],
      "text-size": 12
    },
    "paint": {
      "text-color": "#525252",
      "text-halo-color": "#141414",
      "text-halo-width": 1,
      "text-halo-blur": 1
    }
  },
  {
    "id": "water_label_ocean",
    "type": "symbol",
    "source": "protomaps",
    "source-layer": "water",
    "filter": [
      "in",
      "kind",
      "sea",
      "ocean",
      "lake",
      "water",
      "bay",
      "strait",
      "fjord"
    ],
    "layout": {
      "text-font": ["Noto Sans Italic"],
      "text-field": [
        "case",
        [
          "all",
          [
            "any",
            ["has", "name"],
            ["has", "pgf:name"]
          ],
          [
            "!",
            [
              "any",
              ["has", "name2"],
              ["has", "pgf:name2"]
            ]
          ],
          [
            "!",
            [
              "any",
              ["has", "name3"],
              ["has", "pgf:name3"]
            ]
          ]
        ],
        [
          "case",
          ["has", "script"],
          [
            "case",
            [
              "any",
              [
                "is-supported-script",
                ["get", "name"]
              ],
              ["has", "pgf:name"]
            ],
            [
              "format",
              [
                "coalesce",
                ["get", "name:en"],
                ["get", "name:en"]
              ],
              {},
              "\n",
              {},
              [
                "case",
                [
                  "all",
                  [
                    "!",
                    ["has", "name:en"]
                  ],
                  ["has", "name:en"],
                  [
                    "!",
                    ["has", "script"]
                  ]
                ],
                "",
                [
                  "coalesce",
                  ["get", "pgf:name"],
                  ["get", "name"]
                ]
              ],
              {
                "text-font": [
                  "case",
                  [
                    "==",
                    ["get", "script"],
                    "Devanagari"
                  ],
                  [
                    "literal",
                    ["Noto Sans Devanagari Regular v1"]
                  ],
                  [
                    "literal",
                    ["Noto Sans Regular"]
                  ]
                ]
              }
            ],
            ["get", "name:en"]
          ],
          [
            "format",
            [
              "coalesce",
              ["get", "name:en"],
              ["get", "pgf:name"],
              ["get", "name"]
            ],
            {}
          ]
        ],
        [
          "all",
          [
            "any",
            ["has", "name"],
            ["has", "pgf:name"]
          ],
          [
            "any",
            ["has", "name2"],
            ["has", "pgf:name2"]
          ],
          [
            "!",
            [
              "any",
              ["has", "name3"],
              ["has", "pgf:name3"]
            ]
          ]
        ],
        [
          "case",
          [
            "all",
            ["has", "script"],
            ["has", "script2"]
          ],
          [
            "format",
            ["get", "name:en"],
            {},
            "\n",
            {},
            [
              "coalesce",
              ["get", "pgf:name"],
              ["get", "name"]
            ],
            {
              "text-font": [
                "case",
                [
                  "==",
                  ["get", "script"],
                  "Devanagari"
                ],
                [
                  "literal",
                  ["Noto Sans Devanagari Regular v1"]
                ],
                [
                  "literal",
                  ["Noto Sans Regular"]
                ]
              ]
            },
            "\n",
            {},
            [
              "coalesce",
              ["get", "pgf:name2"],
              ["get", "name2"]
            ],
            {
              "text-font": [
                "case",
                [
                  "==",
                  ["get", "script2"],
                  "Devanagari"
                ],
                [
                  "literal",
                  ["Noto Sans Devanagari Regular v1"]
                ],
                [
                  "literal",
                  ["Noto Sans Regular"]
                ]
              ]
            }
          ],
          [
            "case",
            ["has", "script2"],
            [
              "format",
              [
                "coalesce",
                ["get", "name:en"],
                ["get", "pgf:name"],
                ["get", "name"]
              ],
              {},
              "\n",
              {},
              [
                "coalesce",
                ["get", "pgf:name2"],
                ["get", "name2"]
              ],
              {
                "text-font": [
                  "case",
                  [
                    "==",
                    ["get", "script2"],
                    "Devanagari"
                  ],
                  [
                    "literal",
                    ["Noto Sans Devanagari Regular v1"]
                  ],
                  [
                    "literal",
                    ["Noto Sans Regular"]
                  ]
                ]
              }
            ],
            [
              "format",
              [
                "coalesce",
                ["get", "name:en"],
                ["get", "pgf:name2"],
                ["get", "name2"]
              ],
              {},
              "\n",
              {},
              [
                "coalesce",
                ["get", "pgf:name"],
                ["get", "name"]
              ],
              {
                "text-font": [
                  "case",
                  [
                    "==",
                    ["get", "script"],
                    "Devanagari"
                  ],
                  [
                    "literal",
                    ["Noto Sans Devanagari Regular v1"]
                  ],
                  [
                    "literal",
                    ["Noto Sans Regular"]
                  ]
                ]
              }
            ]
          ]
        ],
        [
          "case",
          [
            "all",
            ["has", "script"],
            ["has", "script2"],
            ["has", "script3"]
          ],
          [
            "format",
            ["get", "name:en"],
            {},
            "\n",
            {},
            [
              "coalesce",
              ["get", "pgf:name"],
              ["get", "name"]
            ],
            {
              "text-font": [
                "case",
                [
                  "==",
                  ["get", "script"],
                  "Devanagari"
                ],
                [
                  "literal",
                  ["Noto Sans Devanagari Regular v1"]
                ],
                [
                  "literal",
                  ["Noto Sans Regular"]
                ]
              ]
            },
            "\n",
            {},
            [
              "coalesce",
              ["get", "pgf:name2"],
              ["get", "name2"]
            ],
            {
              "text-font": [
                "case",
                [
                  "==",
                  ["get", "script2"],
                  "Devanagari"
                ],
                [
                  "literal",
                  ["Noto Sans Devanagari Regular v1"]
                ],
                [
                  "literal",
                  ["Noto Sans Regular"]
                ]
              ]
            },
            "\n",
            {},
            [
              "coalesce",
              ["get", "pgf:name3"],
              ["get", "name3"]
            ],
            {
              "text-font": [
                "case",
                [
                  "==",
                  ["get", "script3"],
                  "Devanagari"
                ],
                [
                  "literal",
                  ["Noto Sans Devanagari Regular v1"]
                ],
                [
                  "literal",
                  ["Noto Sans Regular"]
                ]
              ]
            }
          ],
          [
            "case",
            [
              "!",
              ["has", "script"]
            ],
            [
              "format",
              [
                "coalesce",
                ["get", "name:en"],
                ["get", "pgf:name"],
                ["get", "name"]
              ],
              {},
              "\n",
              {},
              [
                "coalesce",
                ["get", "pgf:name2"],
                ["get", "name2"]
              ],
              {
                "text-font": [
                  "case",
                  [
                    "==",
                    ["get", "script2"],
                    "Devanagari"
                  ],
                  [
                    "literal",
                    ["Noto Sans Devanagari Regular v1"]
                  ],
                  [
                    "literal",
                    ["Noto Sans Regular"]
                  ]
                ]
              },
              "\n",
              {},
              [
                "coalesce",
                ["get", "pgf:name3"],
                ["get", "name3"]
              ],
              {
                "text-font": [
                  "case",
                  [
                    "==",
                    ["get", "script3"],
                    "Devanagari"
                  ],
                  [
                    "literal",
                    ["Noto Sans Devanagari Regular v1"]
                  ],
                  [
                    "literal",
                    ["Noto Sans Regular"]
                  ]
                ]
              }
            ],
            [
              "!",
              ["has", "script2"]
            ],
            [
              "format",
              [
                "coalesce",
                ["get", "name:en"],
                ["get", "pgf:name2"],
                ["get", "name2"]
              ],
              {},
              "\n",
              {},
              [
                "coalesce",
                ["get", "pgf:name"],
                ["get", "name"]
              ],
              {
                "text-font": [
                  "case",
                  [
                    "==",
                    ["get", "script"],
                    "Devanagari"
                  ],
                  [
                    "literal",
                    ["Noto Sans Devanagari Regular v1"]
                  ],
                  [
                    "literal",
                    ["Noto Sans Regular"]
                  ]
                ]
              },
              "\n",
              {},
              [
                "coalesce",
                ["get", "pgf:name3"],
                ["get", "name3"]
              ],
              {
                "text-font": [
                  "case",
                  [
                    "==",
                    ["get", "script3"],
                    "Devanagari"
                  ],
                  [
                    "literal",
                    ["Noto Sans Devanagari Regular v1"]
                  ],
                  [
                    "literal",
                    ["Noto Sans Regular"]
                  ]
                ]
              }
            ],
            [
              "format",
              [
                "coalesce",
                ["get", "name:en"],
                ["get", "pgf:name3"],
                ["get", "name3"]
              ],
              {},
              "\n",
              {},
              [
                "coalesce",
                ["get", "pgf:name"],
                ["get", "name"]
              ],
              {
                "text-font": [
                  "case",
                  [
                    "==",
                    ["get", "script"],
                    "Devanagari"
                  ],
                  [
                    "literal",
                    ["Noto Sans Devanagari Regular v1"]
                  ],
                  [
                    "literal",
                    ["Noto Sans Regular"]
                  ]
                ]
              },
              "\n",
              {},
              [
                "coalesce",
                ["get", "pgf:name2"],
                ["get", "name2"]
              ],
              {
                "text-font": [
                  "case",
                  [
                    "==",
                    ["get", "script2"],
                    "Devanagari"
                  ],
                  [
                    "literal",
                    ["Noto Sans Devanagari Regular v1"]
                  ],
                  [
                    "literal",
                    ["Noto Sans Regular"]
                  ]
                ]
              }
            ]
          ]
        ]
      ],
      "text-size": [
        "interpolate",
        ["linear"],
        ["zoom"],
        3,
        10,
        10,
        12
      ],
      "text-letter-spacing": 0.1,
      "text-max-width": 9,
      "text-transform": "uppercase"
    },
    "paint": {"text-color": "#707070"}
  },
  {
    "id": "water_label_lakes",
    "type": "symbol",
    "source": "protomaps",
    "source-layer": "water",
    "filter": ["in", "kind", "lake", "water"],
    "layout": {
      "text-font": ["Noto Sans Italic"],
      "text-field": [
        "case",
        [
          "all",
          [
            "any",
            ["has", "name"],
            ["has", "pgf:name"]
          ],
          [
            "!",
            [
              "any",
              ["has", "name2"],
              ["has", "pgf:name2"]
            ]
          ],
          [
            "!",
            [
              "any",
              ["has", "name3"],
              ["has", "pgf:name3"]
            ]
          ]
        ],
        [
          "case",
          ["has", "script"],
          [
            "case",
            [
              "any",
              [
                "is-supported-script",
                ["get", "name"]
              ],
              ["has", "pgf:name"]
            ],
            [
              "format",
              [
                "coalesce",
                ["get", "name:en"],
                ["get", "name:en"]
              ],
              {},
              "\n",
              {},
              [
                "case",
                [
                  "all",
                  [
                    "!",
                    ["has", "name:en"]
                  ],
                  ["has", "name:en"],
                  [
                    "!",
                    ["has", "script"]
                  ]
                ],
                "",
                [
                  "coalesce",
                  ["get", "pgf:name"],
                  ["get", "name"]
                ]
              ],
              {
                "text-font": [
                  "case",
                  [
                    "==",
                    ["get", "script"],
                    "Devanagari"
                  ],
                  [
                    "literal",
                    ["Noto Sans Devanagari Regular v1"]
                  ],
                  [
                    "literal",
                    ["Noto Sans Regular"]
                  ]
                ]
              }
            ],
            ["get", "name:en"]
          ],
          [
            "format",
            [
              "coalesce",
              ["get", "name:en"],
              ["get", "pgf:name"],
              ["get", "name"]
            ],
            {}
          ]
        ],
        [
          "all",
          [
            "any",
            ["has", "name"],
            ["has", "pgf:name"]
          ],
          [
            "any",
            ["has", "name2"],
            ["has", "pgf:name2"]
          ],
          [
            "!",
            [
              "any",
              ["has", "name3"],
              ["has", "pgf:name3"]
            ]
          ]
        ],
        [
          "case",
          [
            "all",
            ["has", "script"],
            ["has", "script2"]
          ],
          [
            "format",
            ["get", "name:en"],
            {},
            "\n",
            {},
            [
              "coalesce",
              ["get", "pgf:name"],
              ["get", "name"]
            ],
            {
              "text-font": [
                "case",
                [
                  "==",
                  ["get", "script"],
                  "Devanagari"
                ],
                [
                  "literal",
                  ["Noto Sans Devanagari Regular v1"]
                ],
                [
                  "literal",
                  ["Noto Sans Regular"]
                ]
              ]
            },
            "\n",
            {},
            [
              "coalesce",
              ["get", "pgf:name2"],
              ["get", "name2"]
            ],
            {
              "text-font": [
                "case",
                [
                  "==",
                  ["get", "script2"],
                  "Devanagari"
                ],
                [
                  "literal",
                  ["Noto Sans Devanagari Regular v1"]
                ],
                [
                  "literal",
                  ["Noto Sans Regular"]
                ]
              ]
            }
          ],
          [
            "case",
            ["has", "script2"],
            [
              "format",
              [
                "coalesce",
                ["get", "name:en"],
                ["get", "pgf:name"],
                ["get", "name"]
              ],
              {},
              "\n",
              {},
              [
                "coalesce",
                ["get", "pgf:name2"],
                ["get", "name2"]
              ],
              {
                "text-font": [
                  "case",
                  [
                    "==",
                    ["get", "script2"],
                    "Devanagari"
                  ],
                  [
                    "literal",
                    ["Noto Sans Devanagari Regular v1"]
                  ],
                  [
                    "literal",
                    ["Noto Sans Regular"]
                  ]
                ]
              }
            ],
            [
              "format",
              [
                "coalesce",
                ["get", "name:en"],
                ["get", "pgf:name2"],
                ["get", "name2"]
              ],
              {},
              "\n",
              {},
              [
                "coalesce",
                ["get", "pgf:name"],
                ["get", "name"]
              ],
              {
                "text-font": [
                  "case",
                  [
                    "==",
                    ["get", "script"],
                    "Devanagari"
                  ],
                  [
                    "literal",
                    ["Noto Sans Devanagari Regular v1"]
                  ],
                  [
                    "literal",
                    ["Noto Sans Regular"]
                  ]
                ]
              }
            ]
          ]
        ],
        [
          "case",
          [
            "all",
            ["has", "script"],
            ["has", "script2"],
            ["has", "script3"]
          ],
          [
            "format",
            ["get", "name:en"],
            {},
            "\n",
            {},
            [
              "coalesce",
              ["get", "pgf:name"],
              ["get", "name"]
            ],
            {
              "text-font": [
                "case",
                [
                  "==",
                  ["get", "script"],
                  "Devanagari"
                ],
                [
                  "literal",
                  ["Noto Sans Devanagari Regular v1"]
                ],
                [
                  "literal",
                  ["Noto Sans Regular"]
                ]
              ]
            },
            "\n",
            {},
            [
              "coalesce",
              ["get", "pgf:name2"],
              ["get", "name2"]
            ],
            {
              "text-font": [
                "case",
                [
                  "==",
                  ["get", "script2"],
                  "Devanagari"
                ],
                [
                  "literal",
                  ["Noto Sans Devanagari Regular v1"]
                ],
                [
                  "literal",
                  ["Noto Sans Regular"]
                ]
              ]
            },
            "\n",
            {},
            [
              "coalesce",
              ["get", "pgf:name3"],
              ["get", "name3"]
            ],
            {
              "text-font": [
                "case",
                [
                  "==",
                  ["get", "script3"],
                  "Devanagari"
                ],
                [
                  "literal",
                  ["Noto Sans Devanagari Regular v1"]
                ],
                [
                  "literal",
                  ["Noto Sans Regular"]
                ]
              ]
            }
          ],
          [
            "case",
            [
              "!",
              ["has", "script"]
            ],
            [
              "format",
              [
                "coalesce",
                ["get", "name:en"],
                ["get", "pgf:name"],
                ["get", "name"]
              ],
              {},
              "\n",
              {},
              [
                "coalesce",
                ["get", "pgf:name2"],
                ["get", "name2"]
              ],
              {
                "text-font": [
                  "case",
                  [
                    "==",
                    ["get", "script2"],
                    "Devanagari"
                  ],
                  [
                    "literal",
                    ["Noto Sans Devanagari Regular v1"]
                  ],
                  [
                    "literal",
                    ["Noto Sans Regular"]
                  ]
                ]
              },
              "\n",
              {},
              [
                "coalesce",
                ["get", "pgf:name3"],
                ["get", "name3"]
              ],
              {
                "text-font": [
                  "case",
                  [
                    "==",
                    ["get", "script3"],
                    "Devanagari"
                  ],
                  [
                    "literal",
                    ["Noto Sans Devanagari Regular v1"]
                  ],
                  [
                    "literal",
                    ["Noto Sans Regular"]
                  ]
                ]
              }
            ],
            [
              "!",
              ["has", "script2"]
            ],
            [
              "format",
              [
                "coalesce",
                ["get", "name:en"],
                ["get", "pgf:name2"],
                ["get", "name2"]
              ],
              {},
              "\n",
              {},
              [
                "coalesce",
                ["get", "pgf:name"],
                ["get", "name"]
              ],
              {
                "text-font": [
                  "case",
                  [
                    "==",
                    ["get", "script"],
                    "Devanagari"
                  ],
                  [
                    "literal",
                    ["Noto Sans Devanagari Regular v1"]
                  ],
                  [
                    "literal",
                    ["Noto Sans Regular"]
                  ]
                ]
              },
              "\n",
              {},
              [
                "coalesce",
                ["get", "pgf:name3"],
                ["get", "name3"]
              ],
              {
                "text-font": [
                  "case",
                  [
                    "==",
                    ["get", "script3"],
                    "Devanagari"
                  ],
                  [
                    "literal",
                    ["Noto Sans Devanagari Regular v1"]
                  ],
                  [
                    "literal",
                    ["Noto Sans Regular"]
                  ]
                ]
              }
            ],
            [
              "format",
              [
                "coalesce",
                ["get", "name:en"],
                ["get", "pgf:name3"],
                ["get", "name3"]
              ],
              {},
              "\n",
              {},
              [
                "coalesce",
                ["get", "pgf:name"],
                ["get", "name"]
              ],
              {
                "text-font": [
                  "case",
                  [
                    "==",
                    ["get", "script"],
                    "Devanagari"
                  ],
                  [
                    "literal",
                    ["Noto Sans Devanagari Regular v1"]
                  ],
                  [
                    "literal",
                    ["Noto Sans Regular"]
                  ]
                ]
              },
              "\n",
              {},
              [
                "coalesce",
                ["get", "pgf:name2"],
                ["get", "name2"]
              ],
              {
                "text-font": [
                  "case",
                  [
                    "==",
                    ["get", "script2"],
                    "Devanagari"
                  ],
                  [
                    "literal",
                    ["Noto Sans Devanagari Regular v1"]
                  ],
                  [
                    "literal",
                    ["Noto Sans Regular"]
                  ]
                ]
              }
            ]
          ]
        ]
      ],
      "text-size": [
        "interpolate",
        ["linear"],
        ["zoom"],
        3,
        0,
        6,
        12,
        10,
        12
      ],
      "text-letter-spacing": 0.1,
      "text-max-width": 9
    },
    "paint": {"text-color": "#707070"}
  },
  {
    "id": "roads_labels_major",
    "type": "symbol",
    "source": "protomaps",
    "source-layer": "roads",
    "minzoom": 11,
    "filter": ["in", "kind", "highway", "major_road"],
    "layout": {
      "symbol-sort-key": ["get", "min_zoom"],
      "symbol-placement": "line",
      "text-font": ["Noto Sans Regular"],
      "text-field": [
        "case",
        [
          "all",
          [
            "any",
            ["has", "name"],
            ["has", "pgf:name"]
          ],
          [
            "!",
            [
              "any",
              ["has", "name2"],
              ["has", "pgf:name2"]
            ]
          ],
          [
            "!",
            [
              "any",
              ["has", "name3"],
              ["has", "pgf:name3"]
            ]
          ]
        ],
        [
          "case",
          ["has", "script"],
          [
            "case",
            [
              "any",
              [
                "is-supported-script",
                ["get", "name"]
              ],
              ["has", "pgf:name"]
            ],
            [
              "format",
              [
                "coalesce",
                ["get", "name:en"],
                ["get", "name:en"]
              ],
              {},
              "\n",
              {},
              [
                "case",
                [
                  "all",
                  [
                    "!",
                    ["has", "name:en"]
                  ],
                  ["has", "name:en"],
                  [
                    "!",
                    ["has", "script"]
                  ]
                ],
                "",
                [
                  "coalesce",
                  ["get", "pgf:name"],
                  ["get", "name"]
                ]
              ],
              {
                "text-font": [
                  "case",
                  [
                    "==",
                    ["get", "script"],
                    "Devanagari"
                  ],
                  [
                    "literal",
                    ["Noto Sans Devanagari Regular v1"]
                  ],
                  [
                    "literal",
                    ["Noto Sans Regular"]
                  ]
                ]
              }
            ],
            ["get", "name:en"]
          ],
          [
            "format",
            [
              "coalesce",
              ["get", "name:en"],
              ["get", "pgf:name"],
              ["get", "name"]
            ],
            {}
          ]
        ],
        [
          "all",
          [
            "any",
            ["has", "name"],
            ["has", "pgf:name"]
          ],
          [
            "any",
            ["has", "name2"],
            ["has", "pgf:name2"]
          ],
          [
            "!",
            [
              "any",
              ["has", "name3"],
              ["has", "pgf:name3"]
            ]
          ]
        ],
        [
          "case",
          [
            "all",
            ["has", "script"],
            ["has", "script2"]
          ],
          [
            "format",
            ["get", "name:en"],
            {},
            "\n",
            {},
            [
              "coalesce",
              ["get", "pgf:name"],
              ["get", "name"]
            ],
            {
              "text-font": [
                "case",
                [
                  "==",
                  ["get", "script"],
                  "Devanagari"
                ],
                [
                  "literal",
                  ["Noto Sans Devanagari Regular v1"]
                ],
                [
                  "literal",
                  ["Noto Sans Regular"]
                ]
              ]
            },
            "\n",
            {},
            [
              "coalesce",
              ["get", "pgf:name2"],
              ["get", "name2"]
            ],
            {
              "text-font": [
                "case",
                [
                  "==",
                  ["get", "script2"],
                  "Devanagari"
                ],
                [
                  "literal",
                  ["Noto Sans Devanagari Regular v1"]
                ],
                [
                  "literal",
                  ["Noto Sans Regular"]
                ]
              ]
            }
          ],
          [
            "case",
            ["has", "script2"],
            [
              "format",
              [
                "coalesce",
                ["get", "name:en"],
                ["get", "pgf:name"],
                ["get", "name"]
              ],
              {},
              "\n",
              {},
              [
                "coalesce",
                ["get", "pgf:name2"],
                ["get", "name2"]
              ],
              {
                "text-font": [
                  "case",
                  [
                    "==",
                    ["get", "script2"],
                    "Devanagari"
                  ],
                  [
                    "literal",
                    ["Noto Sans Devanagari Regular v1"]
                  ],
                  [
                    "literal",
                    ["Noto Sans Regular"]
                  ]
                ]
              }
            ],
            [
              "format",
              [
                "coalesce",
                ["get", "name:en"],
                ["get", "pgf:name2"],
                ["get", "name2"]
              ],
              {},
              "\n",
              {},
              [
                "coalesce",
                ["get", "pgf:name"],
                ["get", "name"]
              ],
              {
                "text-font": [
                  "case",
                  [
                    "==",
                    ["get", "script"],
                    "Devanagari"
                  ],
                  [
                    "literal",
                    ["Noto Sans Devanagari Regular v1"]
                  ],
                  [
                    "literal",
                    ["Noto Sans Regular"]
                  ]
                ]
              }
            ]
          ]
        ],
        [
          "case",
          [
            "all",
            ["has", "script"],
            ["has", "script2"],
            ["has", "script3"]
          ],
          [
            "format",
            ["get", "name:en"],
            {},
            "\n",
            {},
            [
              "coalesce",
              ["get", "pgf:name"],
              ["get", "name"]
            ],
            {
              "text-font": [
                "case",
                [
                  "==",
                  ["get", "script"],
                  "Devanagari"
                ],
                [
                  "literal",
                  ["Noto Sans Devanagari Regular v1"]
                ],
                [
                  "literal",
                  ["Noto Sans Regular"]
                ]
              ]
            },
            "\n",
            {},
            [
              "coalesce",
              ["get", "pgf:name2"],
              ["get", "name2"]
            ],
            {
              "text-font": [
                "case",
                [
                  "==",
                  ["get", "script2"],
                  "Devanagari"
                ],
                [
                  "literal",
                  ["Noto Sans Devanagari Regular v1"]
                ],
                [
                  "literal",
                  ["Noto Sans Regular"]
                ]
              ]
            },
            "\n",
            {},
            [
              "coalesce",
              ["get", "pgf:name3"],
              ["get", "name3"]
            ],
            {
              "text-font": [
                "case",
                [
                  "==",
                  ["get", "script3"],
                  "Devanagari"
                ],
                [
                  "literal",
                  ["Noto Sans Devanagari Regular v1"]
                ],
                [
                  "literal",
                  ["Noto Sans Regular"]
                ]
              ]
            }
          ],
          [
            "case",
            [
              "!",
              ["has", "script"]
            ],
            [
              "format",
              [
                "coalesce",
                ["get", "name:en"],
                ["get", "pgf:name"],
                ["get", "name"]
              ],
              {},
              "\n",
              {},
              [
                "coalesce",
                ["get", "pgf:name2"],
                ["get", "name2"]
              ],
              {
                "text-font": [
                  "case",
                  [
                    "==",
                    ["get", "script2"],
                    "Devanagari"
                  ],
                  [
                    "literal",
                    ["Noto Sans Devanagari Regular v1"]
                  ],
                  [
                    "literal",
                    ["Noto Sans Regular"]
                  ]
                ]
              },
              "\n",
              {},
              [
                "coalesce",
                ["get", "pgf:name3"],
                ["get", "name3"]
              ],
              {
                "text-font": [
                  "case",
                  [
                    "==",
                    ["get", "script3"],
                    "Devanagari"
                  ],
                  [
                    "literal",
                    ["Noto Sans Devanagari Regular v1"]
                  ],
                  [
                    "literal",
                    ["Noto Sans Regular"]
                  ]
                ]
              }
            ],
            [
              "!",
              ["has", "script2"]
            ],
            [
              "format",
              [
                "coalesce",
                ["get", "name:en"],
                ["get", "pgf:name2"],
                ["get", "name2"]
              ],
              {},
              "\n",
              {},
              [
                "coalesce",
                ["get", "pgf:name"],
                ["get", "name"]
              ],
              {
                "text-font": [
                  "case",
                  [
                    "==",
                    ["get", "script"],
                    "Devanagari"
                  ],
                  [
                    "literal",
                    ["Noto Sans Devanagari Regular v1"]
                  ],
                  [
                    "literal",
                    ["Noto Sans Regular"]
                  ]
                ]
              },
              "\n",
              {},
              [
                "coalesce",
                ["get", "pgf:name3"],
                ["get", "name3"]
              ],
              {
                "text-font": [
                  "case",
                  [
                    "==",
                    ["get", "script3"],
                    "Devanagari"
                  ],
                  [
                    "literal",
                    ["Noto Sans Devanagari Regular v1"]
                  ],
                  [
                    "literal",
                    ["Noto Sans Regular"]
                  ]
                ]
              }
            ],
            [
              "format",
              [
                "coalesce",
                ["get", "name:en"],
                ["get", "pgf:name3"],
                ["get", "name3"]
              ],
              {},
              "\n",
              {},
              [
                "coalesce",
                ["get", "pgf:name"],
                ["get", "name"]
              ],
              {
                "text-font": [
                  "case",
                  [
                    "==",
                    ["get", "script"],
                    "Devanagari"
                  ],
                  [
                    "literal",
                    ["Noto Sans Devanagari Regular v1"]
                  ],
                  [
                    "literal",
                    ["Noto Sans Regular"]
                  ]
                ]
              },
              "\n",
              {},
              [
                "coalesce",
                ["get", "pgf:name2"],
                ["get", "name2"]
              ],
              {
                "text-font": [
                  "case",
                  [
                    "==",
                    ["get", "script2"],
                    "Devanagari"
                  ],
                  [
                    "literal",
                    ["Noto Sans Devanagari Regular v1"]
                  ],
                  [
                    "literal",
                    ["Noto Sans Regular"]
                  ]
                ]
              }
            ]
          ]
        ]
      ],
      "text-size": 12
    },
    "paint": {
      "text-color": "#5c5c5c",
      "text-halo-color": "#141414",
      "text-halo-width": 1,
      "text-halo-blur": 1
    }
  },
  {
    "id": "places_subplace",
    "type": "symbol",
    "source": "protomaps",
    "source-layer": "places",
    "filter": ["==", "kind", "neighbourhood"],
    "layout": {
      "symbol-sort-key": ["get", "min_zoom"],
      "text-field": [
        "case",
        [
          "all",
          [
            "any",
            ["has", "name"],
            ["has", "pgf:name"]
          ],
          [
            "!",
            [
              "any",
              ["has", "name2"],
              ["has", "pgf:name2"]
            ]
          ],
          [
            "!",
            [
              "any",
              ["has", "name3"],
              ["has", "pgf:name3"]
            ]
          ]
        ],
        [
          "case",
          ["has", "script"],
          [
            "case",
            [
              "any",
              [
                "is-supported-script",
                ["get", "name"]
              ],
              ["has", "pgf:name"]
            ],
            [
              "format",
              [
                "coalesce",
                ["get", "name:en"],
                ["get", "name:en"]
              ],
              {},
              "\n",
              {},
              [
                "case",
                [
                  "all",
                  [
                    "!",
                    ["has", "name:en"]
                  ],
                  ["has", "name:en"],
                  [
                    "!",
                    ["has", "script"]
                  ]
                ],
                "",
                [
                  "coalesce",
                  ["get", "pgf:name"],
                  ["get", "name"]
                ]
              ],
              {
                "text-font": [
                  "case",
                  [
                    "==",
                    ["get", "script"],
                    "Devanagari"
                  ],
                  [
                    "literal",
                    ["Noto Sans Devanagari Regular v1"]
                  ],
                  [
                    "literal",
                    ["Noto Sans Regular"]
                  ]
                ]
              }
            ],
            ["get", "name:en"]
          ],
          [
            "format",
            [
              "coalesce",
              ["get", "name:en"],
              ["get", "pgf:name"],
              ["get", "name"]
            ],
            {}
          ]
        ],
        [
          "all",
          [
            "any",
            ["has", "name"],
            ["has", "pgf:name"]
          ],
          [
            "any",
            ["has", "name2"],
            ["has", "pgf:name2"]
          ],
          [
            "!",
            [
              "any",
              ["has", "name3"],
              ["has", "pgf:name3"]
            ]
          ]
        ],
        [
          "case",
          [
            "all",
            ["has", "script"],
            ["has", "script2"]
          ],
          [
            "format",
            ["get", "name:en"],
            {},
            "\n",
            {},
            [
              "coalesce",
              ["get", "pgf:name"],
              ["get", "name"]
            ],
            {
              "text-font": [
                "case",
                [
                  "==",
                  ["get", "script"],
                  "Devanagari"
                ],
                [
                  "literal",
                  ["Noto Sans Devanagari Regular v1"]
                ],
                [
                  "literal",
                  ["Noto Sans Regular"]
                ]
              ]
            },
            "\n",
            {},
            [
              "coalesce",
              ["get", "pgf:name2"],
              ["get", "name2"]
            ],
            {
              "text-font": [
                "case",
                [
                  "==",
                  ["get", "script2"],
                  "Devanagari"
                ],
                [
                  "literal",
                  ["Noto Sans Devanagari Regular v1"]
                ],
                [
                  "literal",
                  ["Noto Sans Regular"]
                ]
              ]
            }
          ],
          [
            "case",
            ["has", "script2"],
            [
              "format",
              [
                "coalesce",
                ["get", "name:en"],
                ["get", "pgf:name"],
                ["get", "name"]
              ],
              {},
              "\n",
              {},
              [
                "coalesce",
                ["get", "pgf:name2"],
                ["get", "name2"]
              ],
              {
                "text-font": [
                  "case",
                  [
                    "==",
                    ["get", "script2"],
                    "Devanagari"
                  ],
                  [
                    "literal",
                    ["Noto Sans Devanagari Regular v1"]
                  ],
                  [
                    "literal",
                    ["Noto Sans Regular"]
                  ]
                ]
              }
            ],
            [
              "format",
              [
                "coalesce",
                ["get", "name:en"],
                ["get", "pgf:name2"],
                ["get", "name2"]
              ],
              {},
              "\n",
              {},
              [
                "coalesce",
                ["get", "pgf:name"],
                ["get", "name"]
              ],
              {
                "text-font": [
                  "case",
                  [
                    "==",
                    ["get", "script"],
                    "Devanagari"
                  ],
                  [
                    "literal",
                    ["Noto Sans Devanagari Regular v1"]
                  ],
                  [
                    "literal",
                    ["Noto Sans Regular"]
                  ]
                ]
              }
            ]
          ]
        ],
        [
          "case",
          [
            "all",
            ["has", "script"],
            ["has", "script2"],
            ["has", "script3"]
          ],
          [
            "format",
            ["get", "name:en"],
            {},
            "\n",
            {},
            [
              "coalesce",
              ["get", "pgf:name"],
              ["get", "name"]
            ],
            {
              "text-font": [
                "case",
                [
                  "==",
                  ["get", "script"],
                  "Devanagari"
                ],
                [
                  "literal",
                  ["Noto Sans Devanagari Regular v1"]
                ],
                [
                  "literal",
                  ["Noto Sans Regular"]
                ]
              ]
            },
            "\n",
            {},
            [
              "coalesce",
              ["get", "pgf:name2"],
              ["get", "name2"]
            ],
            {
              "text-font": [
                "case",
                [
                  "==",
                  ["get", "script2"],
                  "Devanagari"
                ],
                [
                  "literal",
                  ["Noto Sans Devanagari Regular v1"]
                ],
                [
                  "literal",
                  ["Noto Sans Regular"]
                ]
              ]
            },
            "\n",
            {},
            [
              "coalesce",
              ["get", "pgf:name3"],
              ["get", "name3"]
            ],
            {
              "text-font": [
                "case",
                [
                  "==",
                  ["get", "script3"],
                  "Devanagari"
                ],
                [
                  "literal",
                  ["Noto Sans Devanagari Regular v1"]
                ],
                [
                  "literal",
                  ["Noto Sans Regular"]
                ]
              ]
            }
          ],
          [
            "case",
            [
              "!",
              ["has", "script"]
            ],
            [
              "format",
              [
                "coalesce",
                ["get", "name:en"],
                ["get", "pgf:name"],
                ["get", "name"]
              ],
              {},
              "\n",
              {},
              [
                "coalesce",
                ["get", "pgf:name2"],
                ["get", "name2"]
              ],
              {
                "text-font": [
                  "case",
                  [
                    "==",
                    ["get", "script2"],
                    "Devanagari"
                  ],
                  [
                    "literal",
                    ["Noto Sans Devanagari Regular v1"]
                  ],
                  [
                    "literal",
                    ["Noto Sans Regular"]
                  ]
                ]
              },
              "\n",
              {},
              [
                "coalesce",
                ["get", "pgf:name3"],
                ["get", "name3"]
              ],
              {
                "text-font": [
                  "case",
                  [
                    "==",
                    ["get", "script3"],
                    "Devanagari"
                  ],
                  [
                    "literal",
                    ["Noto Sans Devanagari Regular v1"]
                  ],
                  [
                    "literal",
                    ["Noto Sans Regular"]
                  ]
                ]
              }
            ],
            [
              "!",
              ["has", "script2"]
            ],
            [
              "format",
              [
                "coalesce",
                ["get", "name:en"],
                ["get", "pgf:name2"],
                ["get", "name2"]
              ],
              {},
              "\n",
              {},
              [
                "coalesce",
                ["get", "pgf:name"],
                ["get", "name"]
              ],
              {
                "text-font": [
                  "case",
                  [
                    "==",
                    ["get", "script"],
                    "Devanagari"
                  ],
                  [
                    "literal",
                    ["Noto Sans Devanagari Regular v1"]
                  ],
                  [
                    "literal",
                    ["Noto Sans Regular"]
                  ]
                ]
              },
              "\n",
              {},
              [
                "coalesce",
                ["get", "pgf:name3"],
                ["get", "name3"]
              ],
              {
                "text-font": [
                  "case",
                  [
                    "==",
                    ["get", "script3"],
                    "Devanagari"
                  ],
                  [
                    "literal",
                    ["Noto Sans Devanagari Regular v1"]
                  ],
                  [
                    "literal",
                    ["Noto Sans Regular"]
                  ]
                ]
              }
            ],
            [
              "format",
              [
                "coalesce",
                ["get", "name:en"],
                ["get", "pgf:name3"],
                ["get", "name3"]
              ],
              {},
              "\n",
              {},
              [
                "coalesce",
                ["get", "pgf:name"],
                ["get", "name"]
              ],
              {
                "text-font": [
                  "case",
                  [
                    "==",
                    ["get", "script"],
                    "Devanagari"
                  ],
                  [
                    "literal",
                    ["Noto Sans Devanagari Regular v1"]
                  ],
                  [
                    "literal",
                    ["Noto Sans Regular"]
                  ]
                ]
              },
              "\n",
              {},
              [
                "coalesce",
                ["get", "pgf:name2"],
                ["get", "name2"]
              ],
              {
                "text-font": [
                  "case",
                  [
                    "==",
                    ["get", "script2"],
                    "Devanagari"
                  ],
                  [
                    "literal",
                    ["Noto Sans Devanagari Regular v1"]
                  ],
                  [
                    "literal",
                    ["Noto Sans Regular"]
                  ]
                ]
              }
            ]
          ]
        ]
      ],
      "text-font": ["Noto Sans Regular"],
      "text-max-width": 7,
      "text-letter-spacing": 0.1,
      "text-padding": [
        "interpolate",
        ["linear"],
        ["zoom"],
        5,
        2,
        8,
        4,
        12,
        18,
        15,
        20
      ],
      "text-size": [
        "interpolate",
        ["exponential", 1.2],
        ["zoom"],
        11,
        8,
        14,
        14,
        18,
        24
      ],
      "text-transform": "uppercase"
    },
    "paint": {
      "text-color": "#5c5c5c",
      "text-halo-color": "#141414",
      "text-halo-width": 1,
      "text-halo-blur": 1
    }
  },
  {
    "id": "places_locality",
    "type": "symbol",
    "source": "protomaps",
    "source-layer": "places",
    "filter": ["==", "kind", "locality"],
    "layout": {
      "icon-image": [
        "step",
        ["zoom"],
        "townspot",
        8,
        ""
      ],
      "icon-size": 0.7,
      "text-field": [
        "case",
        [
          "all",
          [
            "any",
            ["has", "name"],
            ["has", "pgf:name"]
          ],
          [
            "!",
            [
              "any",
              ["has", "name2"],
              ["has", "pgf:name2"]
            ]
          ],
          [
            "!",
            [
              "any",
              ["has", "name3"],
              ["has", "pgf:name3"]
            ]
          ]
        ],
        [
          "case",
          ["has", "script"],
          [
            "case",
            [
              "any",
              [
                "is-supported-script",
                ["get", "name"]
              ],
              ["has", "pgf:name"]
            ],
            [
              "format",
              [
                "coalesce",
                ["get", "name:en"],
                ["get", "name:en"]
              ],
              {},
              "\n",
              {},
              [
                "case",
                [
                  "all",
                  [
                    "!",
                    ["has", "name:en"]
                  ],
                  ["has", "name:en"],
                  [
                    "!",
                    ["has", "script"]
                  ]
                ],
                "",
                [
                  "coalesce",
                  ["get", "pgf:name"],
                  ["get", "name"]
                ]
              ],
              {
                "text-font": [
                  "case",
                  [
                    "==",
                    ["get", "script"],
                    "Devanagari"
                  ],
                  [
                    "literal",
                    ["Noto Sans Devanagari Regular v1"]
                  ],
                  [
                    "literal",
                    ["Noto Sans Regular"]
                  ]
                ]
              }
            ],
            ["get", "name:en"]
          ],
          [
            "format",
            [
              "coalesce",
              ["get", "name:en"],
              ["get", "pgf:name"],
              ["get", "name"]
            ],
            {}
          ]
        ],
        [
          "all",
          [
            "any",
            ["has", "name"],
            ["has", "pgf:name"]
          ],
          [
            "any",
            ["has", "name2"],
            ["has", "pgf:name2"]
          ],
          [
            "!",
            [
              "any",
              ["has", "name3"],
              ["has", "pgf:name3"]
            ]
          ]
        ],
        [
          "case",
          [
            "all",
            ["has", "script"],
            ["has", "script2"]
          ],
          [
            "format",
            ["get", "name:en"],
            {},
            "\n",
            {},
            [
              "coalesce",
              ["get", "pgf:name"],
              ["get", "name"]
            ],
            {
              "text-font": [
                "case",
                [
                  "==",
                  ["get", "script"],
                  "Devanagari"
                ],
                [
                  "literal",
                  ["Noto Sans Devanagari Regular v1"]
                ],
                [
                  "literal",
                  ["Noto Sans Regular"]
                ]
              ]
            },
            "\n",
            {},
            [
              "coalesce",
              ["get", "pgf:name2"],
              ["get", "name2"]
            ],
            {
              "text-font": [
                "case",
                [
                  "==",
                  ["get", "script2"],
                  "Devanagari"
                ],
                [
                  "literal",
                  ["Noto Sans Devanagari Regular v1"]
                ],
                [
                  "literal",
                  ["Noto Sans Regular"]
                ]
              ]
            }
          ],
          [
            "case",
            ["has", "script2"],
            [
              "format",
              [
                "coalesce",
                ["get", "name:en"],
                ["get", "pgf:name"],
                ["get", "name"]
              ],
              {},
              "\n",
              {},
              [
                "coalesce",
                ["get", "pgf:name2"],
                ["get", "name2"]
              ],
              {
                "text-font": [
                  "case",
                  [
                    "==",
                    ["get", "script2"],
                    "Devanagari"
                  ],
                  [
                    "literal",
                    ["Noto Sans Devanagari Regular v1"]
                  ],
                  [
                    "literal",
                    ["Noto Sans Regular"]
                  ]
                ]
              }
            ],
            [
              "format",
              [
                "coalesce",
                ["get", "name:en"],
                ["get", "pgf:name2"],
                ["get", "name2"]
              ],
              {},
              "\n",
              {},
              [
                "coalesce",
                ["get", "pgf:name"],
                ["get", "name"]
              ],
              {
                "text-font": [
                  "case",
                  [
                    "==",
                    ["get", "script"],
                    "Devanagari"
                  ],
                  [
                    "literal",
                    ["Noto Sans Devanagari Regular v1"]
                  ],
                  [
                    "literal",
                    ["Noto Sans Regular"]
                  ]
                ]
              }
            ]
          ]
        ],
        [
          "case",
          [
            "all",
            ["has", "script"],
            ["has", "script2"],
            ["has", "script3"]
          ],
          [
            "format",
            ["get", "name:en"],
            {},
            "\n",
            {},
            [
              "coalesce",
              ["get", "pgf:name"],
              ["get", "name"]
            ],
            {
              "text-font": [
                "case",
                [
                  "==",
                  ["get", "script"],
                  "Devanagari"
                ],
                [
                  "literal",
                  ["Noto Sans Devanagari Regular v1"]
                ],
                [
                  "literal",
                  ["Noto Sans Regular"]
                ]
              ]
            },
            "\n",
            {},
            [
              "coalesce",
              ["get", "pgf:name2"],
              ["get", "name2"]
            ],
            {
              "text-font": [
                "case",
                [
                  "==",
                  ["get", "script2"],
                  "Devanagari"
                ],
                [
                  "literal",
                  ["Noto Sans Devanagari Regular v1"]
                ],
                [
                  "literal",
                  ["Noto Sans Regular"]
                ]
              ]
            },
            "\n",
            {},
            [
              "coalesce",
              ["get", "pgf:name3"],
              ["get", "name3"]
            ],
            {
              "text-font": [
                "case",
                [
                  "==",
                  ["get", "script3"],
                  "Devanagari"
                ],
                [
                  "literal",
                  ["Noto Sans Devanagari Regular v1"]
                ],
                [
                  "literal",
                  ["Noto Sans Regular"]
                ]
              ]
            }
          ],
          [
            "case",
            [
              "!",
              ["has", "script"]
            ],
            [
              "format",
              [
                "coalesce",
                ["get", "name:en"],
                ["get", "pgf:name"],
                ["get", "name"]
              ],
              {},
              "\n",
              {},
              [
                "coalesce",
                ["get", "pgf:name2"],
                ["get", "name2"]
              ],
              {
                "text-font": [
                  "case",
                  [
                    "==",
                    ["get", "script2"],
                    "Devanagari"
                  ],
                  [
                    "literal",
                    ["Noto Sans Devanagari Regular v1"]
                  ],
                  [
                    "literal",
                    ["Noto Sans Regular"]
                  ]
                ]
              },
              "\n",
              {},
              [
                "coalesce",
                ["get", "pgf:name3"],
                ["get", "name3"]
              ],
              {
                "text-font": [
                  "case",
                  [
                    "==",
                    ["get", "script3"],
                    "Devanagari"
                  ],
                  [
                    "literal",
                    ["Noto Sans Devanagari Regular v1"]
                  ],
                  [
                    "literal",
                    ["Noto Sans Regular"]
                  ]
                ]
              }
            ],
            [
              "!",
              ["has", "script2"]
            ],
            [
              "format",
              [
                "coalesce",
                ["get", "name:en"],
                ["get", "pgf:name2"],
                ["get", "name2"]
              ],
              {},
              "\n",
              {},
              [
                "coalesce",
                ["get", "pgf:name"],
                ["get", "name"]
              ],
              {
                "text-font": [
                  "case",
                  [
                    "==",
                    ["get", "script"],
                    "Devanagari"
                  ],
                  [
                    "literal",
                    ["Noto Sans Devanagari Regular v1"]
                  ],
                  [
                    "literal",
                    ["Noto Sans Regular"]
                  ]
                ]
              },
              "\n",
              {},
              [
                "coalesce",
                ["get", "pgf:name3"],
                ["get", "name3"]
              ],
              {
                "text-font": [
                  "case",
                  [
                    "==",
                    ["get", "script3"],
                    "Devanagari"
                  ],
                  [
                    "literal",
                    ["Noto Sans Devanagari Regular v1"]
                  ],
                  [
                    "literal",
                    ["Noto Sans Regular"]
                  ]
                ]
              }
            ],
            [
              "format",
              [
                "coalesce",
                ["get", "name:en"],
                ["get", "pgf:name3"],
                ["get", "name3"]
              ],
              {},
              "\n",
              {},
              [
                "coalesce",
                ["get", "pgf:name"],
                ["get", "name"]
              ],
              {
                "text-font": [
                  "case",
                  [
                    "==",
                    ["get", "script"],
                    "Devanagari"
                  ],
                  [
                    "literal",
                    ["Noto Sans Devanagari Regular v1"]
                  ],
                  [
                    "literal",
                    ["Noto Sans Regular"]
                  ]
                ]
              },
              "\n",
              {},
              [
                "coalesce",
                ["get", "pgf:name2"],
                ["get", "name2"]
              ],
              {
                "text-font": [
                  "case",
                  [
                    "==",
                    ["get", "script2"],
                    "Devanagari"
                  ],
                  [
                    "literal",
                    ["Noto Sans Devanagari Regular v1"]
                  ],
                  [
                    "literal",
                    ["Noto Sans Regular"]
                  ]
                ]
              }
            ]
          ]
        ]
      ],
      "text-font": [
        "case",
        [
          "<=",
          ["get", "min_zoom"],
          5
        ],
        [
          "literal",
          ["Noto Sans Medium"]
        ],
        [
          "literal",
          ["Noto Sans Regular"]
        ]
      ],
      "text-padding": [
        "interpolate",
        ["linear"],
        ["zoom"],
        5,
        3,
        8,
        7,
        12,
        11
      ],
      "text-size": [
        "interpolate",
        ["linear"],
        ["zoom"],
        2,
        [
          "case",
          [
            "<",
            ["get", "population_rank"],
            13
          ],
          8,
          [
            ">=",
            ["get", "population_rank"],
            13
          ],
          13,
          0
        ],
        4,
        [
          "case",
          [
            "<",
            ["get", "population_rank"],
            13
          ],
          10,
          [
            ">=",
            ["get", "population_rank"],
            13
          ],
          15,
          0
        ],
        6,
        [
          "case",
          [
            "<",
            ["get", "population_rank"],
            12
          ],
          11,
          [
            ">=",
            ["get", "population_rank"],
            12
          ],
          17,
          0
        ],
        8,
        [
          "case",
          [
            "<",
            ["get", "population_rank"],
            11
          ],
          11,
          [
            ">=",
            ["get", "population_rank"],
            11
          ],
          18,
          0
        ],
        10,
        [
          "case",
          [
            "<",
            ["get", "population_rank"],
            9
          ],
          12,
          [
            ">=",
            ["get", "population_rank"],
            9
          ],
          20,
          0
        ],
        15,
        [
          "case",
          [
            "<",
            ["get", "population_rank"],
            8
          ],
          12,
          [
            ">=",
            ["get", "population_rank"],
            8
          ],
          22,
          0
        ]
      ],
      "icon-padding": [
        "interpolate",
        ["linear"],
        ["zoom"],
        0,
        0,
        8,
        4,
        10,
        8,
        12,
        6,
        22,
        2
      ],
      "text-justify": "auto",
      "text-anchor": [
        "step",
        ["zoom"],
        "left",
        8,
        "center"
      ],
      "text-radial-offset": 0.4
    },
    "paint": {
      "text-color": "#999999",
      "text-halo-color": "#141414",
      "text-halo-width": 1,
      "text-halo-blur": 1
    }
  },
  {
    "id": "places_region",
    "type": "symbol",
    "source": "protomaps",
    "source-layer": "places",
    "filter": ["==", "kind", "region"],
    "layout": {
      "symbol-sort-key": ["get", "min_zoom"],
      "text-field": [
        "step",
        ["zoom"],
        ["get", "name:short"],
        6,
        [
          "case",
          [
            "all",
            [
              "any",
              ["has", "name"],
              ["has", "pgf:name"]
            ],
            [
              "!",
              [
                "any",
                ["has", "name2"],
                ["has", "pgf:name2"]
              ]
            ],
            [
              "!",
              [
                "any",
                ["has", "name3"],
                ["has", "pgf:name3"]
              ]
            ]
          ],
          [
            "case",
            ["has", "script"],
            [
              "case",
              [
                "any",
                [
                  "is-supported-script",
                  ["get", "name"]
                ],
                ["has", "pgf:name"]
              ],
              [
                "format",
                [
                  "coalesce",
                  ["get", "name:en"],
                  ["get", "name:en"]
                ],
                {},
                "\n",
                {},
                [
                  "case",
                  [
                    "all",
                    [
                      "!",
                      ["has", "name:en"]
                    ],
                    ["has", "name:en"],
                    [
                      "!",
                      ["has", "script"]
                    ]
                  ],
                  "",
                  [
                    "coalesce",
                    ["get", "pgf:name"],
                    ["get", "name"]
                  ]
                ],
                {
                  "text-font": [
                    "case",
                    [
                      "==",
                      ["get", "script"],
                      "Devanagari"
                    ],
                    [
                      "literal",
                      ["Noto Sans Devanagari Regular v1"]
                    ],
                    [
                      "literal",
                      ["Noto Sans Regular"]
                    ]
                  ]
                }
              ],
              ["get", "name:en"]
            ],
            [
              "format",
              [
                "coalesce",
                ["get", "name:en"],
                ["get", "pgf:name"],
                ["get", "name"]
              ],
              {}
            ]
          ],
          [
            "all",
            [
              "any",
              ["has", "name"],
              ["has", "pgf:name"]
            ],
            [
              "any",
              ["has", "name2"],
              ["has", "pgf:name2"]
            ],
            [
              "!",
              [
                "any",
                ["has", "name3"],
                ["has", "pgf:name3"]
              ]
            ]
          ],
          [
            "case",
            [
              "all",
              ["has", "script"],
              ["has", "script2"]
            ],
            [
              "format",
              ["get", "name:en"],
              {},
              "\n",
              {},
              [
                "coalesce",
                ["get", "pgf:name"],
                ["get", "name"]
              ],
              {
                "text-font": [
                  "case",
                  [
                    "==",
                    ["get", "script"],
                    "Devanagari"
                  ],
                  [
                    "literal",
                    ["Noto Sans Devanagari Regular v1"]
                  ],
                  [
                    "literal",
                    ["Noto Sans Regular"]
                  ]
                ]
              },
              "\n",
              {},
              [
                "coalesce",
                ["get", "pgf:name2"],
                ["get", "name2"]
              ],
              {
                "text-font": [
                  "case",
                  [
                    "==",
                    ["get", "script2"],
                    "Devanagari"
                  ],
                  [
                    "literal",
                    ["Noto Sans Devanagari Regular v1"]
                  ],
                  [
                    "literal",
                    ["Noto Sans Regular"]
                  ]
                ]
              }
            ],
            [
              "case",
              ["has", "script2"],
              [
                "format",
                [
                  "coalesce",
                  ["get", "name:en"],
                  ["get", "pgf:name"],
                  ["get", "name"]
                ],
                {},
                "\n",
                {},
                [
                  "coalesce",
                  ["get", "pgf:name2"],
                  ["get", "name2"]
                ],
                {
                  "text-font": [
                    "case",
                    [
                      "==",
                      ["get", "script2"],
                      "Devanagari"
                    ],
                    [
                      "literal",
                      ["Noto Sans Devanagari Regular v1"]
                    ],
                    [
                      "literal",
                      ["Noto Sans Regular"]
                    ]
                  ]
                }
              ],
              [
                "format",
                [
                  "coalesce",
                  ["get", "name:en"],
                  ["get", "pgf:name2"],
                  ["get", "name2"]
                ],
                {},
                "\n",
                {},
                [
                  "coalesce",
                  ["get", "pgf:name"],
                  ["get", "name"]
                ],
                {
                  "text-font": [
                    "case",
                    [
                      "==",
                      ["get", "script"],
                      "Devanagari"
                    ],
                    [
                      "literal",
                      ["Noto Sans Devanagari Regular v1"]
                    ],
                    [
                      "literal",
                      ["Noto Sans Regular"]
                    ]
                  ]
                }
              ]
            ]
          ],
          [
            "case",
            [
              "all",
              ["has", "script"],
              ["has", "script2"],
              ["has", "script3"]
            ],
            [
              "format",
              ["get", "name:en"],
              {},
              "\n",
              {},
              [
                "coalesce",
                ["get", "pgf:name"],
                ["get", "name"]
              ],
              {
                "text-font": [
                  "case",
                  [
                    "==",
                    ["get", "script"],
                    "Devanagari"
                  ],
                  [
                    "literal",
                    ["Noto Sans Devanagari Regular v1"]
                  ],
                  [
                    "literal",
                    ["Noto Sans Regular"]
                  ]
                ]
              },
              "\n",
              {},
              [
                "coalesce",
                ["get", "pgf:name2"],
                ["get", "name2"]
              ],
              {
                "text-font": [
                  "case",
                  [
                    "==",
                    ["get", "script2"],
                    "Devanagari"
                  ],
                  [
                    "literal",
                    ["Noto Sans Devanagari Regular v1"]
                  ],
                  [
                    "literal",
                    ["Noto Sans Regular"]
                  ]
                ]
              },
              "\n",
              {},
              [
                "coalesce",
                ["get", "pgf:name3"],
                ["get", "name3"]
              ],
              {
                "text-font": [
                  "case",
                  [
                    "==",
                    ["get", "script3"],
                    "Devanagari"
                  ],
                  [
                    "literal",
                    ["Noto Sans Devanagari Regular v1"]
                  ],
                  [
                    "literal",
                    ["Noto Sans Regular"]
                  ]
                ]
              }
            ],
            [
              "case",
              [
                "!",
                ["has", "script"]
              ],
              [
                "format",
                [
                  "coalesce",
                  ["get", "name:en"],
                  ["get", "pgf:name"],
                  ["get", "name"]
                ],
                {},
                "\n",
                {},
                [
                  "coalesce",
                  ["get", "pgf:name2"],
                  ["get", "name2"]
                ],
                {
                  "text-font": [
                    "case",
                    [
                      "==",
                      ["get", "script2"],
                      "Devanagari"
                    ],
                    [
                      "literal",
                      ["Noto Sans Devanagari Regular v1"]
                    ],
                    [
                      "literal",
                      ["Noto Sans Regular"]
                    ]
                  ]
                },
                "\n",
                {},
                [
                  "coalesce",
                  ["get", "pgf:name3"],
                  ["get", "name3"]
                ],
                {
                  "text-font": [
                    "case",
                    [
                      "==",
                      ["get", "script3"],
                      "Devanagari"
                    ],
                    [
                      "literal",
                      ["Noto Sans Devanagari Regular v1"]
                    ],
                    [
                      "literal",
                      ["Noto Sans Regular"]
                    ]
                  ]
                }
              ],
              [
                "!",
                ["has", "script2"]
              ],
              [
                "format",
                [
                  "coalesce",
                  ["get", "name:en"],
                  ["get", "pgf:name2"],
                  ["get", "name2"]
                ],
                {},
                "\n",
                {},
                [
                  "coalesce",
                  ["get", "pgf:name"],
                  ["get", "name"]
                ],
                {
                  "text-font": [
                    "case",
                    [
                      "==",
                      ["get", "script"],
                      "Devanagari"
                    ],
                    [
                      "literal",
                      ["Noto Sans Devanagari Regular v1"]
                    ],
                    [
                      "literal",
                      ["Noto Sans Regular"]
                    ]
                  ]
                },
                "\n",
                {},
                [
                  "coalesce",
                  ["get", "pgf:name3"],
                  ["get", "name3"]
                ],
                {
                  "text-font": [
                    "case",
                    [
                      "==",
                      ["get", "script3"],
                      "Devanagari"
                    ],
                    [
                      "literal",
                      ["Noto Sans Devanagari Regular v1"]
                    ],
                    [
                      "literal",
                      ["Noto Sans Regular"]
                    ]
                  ]
                }
              ],
              [
                "format",
                [
                  "coalesce",
                  ["get", "name:en"],
                  ["get", "pgf:name3"],
                  ["get", "name3"]
                ],
                {},
                "\n",
                {},
                [
                  "coalesce",
                  ["get", "pgf:name"],
                  ["get", "name"]
                ],
                {
                  "text-font": [
                    "case",
                    [
                      "==",
                      ["get", "script"],
                      "Devanagari"
                    ],
                    [
                      "literal",
                      ["Noto Sans Devanagari Regular v1"]
                    ],
                    [
                      "literal",
                      ["Noto Sans Regular"]
                    ]
                  ]
                },
                "\n",
                {},
                [
                  "coalesce",
                  ["get", "pgf:name2"],
                  ["get", "name2"]
                ],
                {
                  "text-font": [
                    "case",
                    [
                      "==",
                      ["get", "script2"],
                      "Devanagari"
                    ],
                    [
                      "literal",
                      ["Noto Sans Devanagari Regular v1"]
                    ],
                    [
                      "literal",
                      ["Noto Sans Regular"]
                    ]
                  ]
                }
              ]
            ]
          ]
        ]
      ],
      "text-font": ["Noto Sans Regular"],
      "text-size": [
        "interpolate",
        ["linear"],
        ["zoom"],
        3,
        11,
        7,
        16
      ],
      "text-radial-offset": 0.2,
      "text-anchor": "center",
      "text-transform": "uppercase"
    },
    "paint": {
      "text-color": "#3d3d3d",
      "text-halo-color": "#141414",
      "text-halo-width": 1,
      "text-halo-blur": 1
    }
  },
  {
    "id": "places_country",
    "type": "symbol",
    "source": "protomaps",
    "source-layer": "places",
    "filter": ["==", "kind", "country"],
    "layout": {
      "symbol-sort-key": ["get", "min_zoom"],
      "text-field": [
        "format",
        [
          "coalesce",
          ["get", "name:en"],
          ["get", "name:en"]
        ],
        {}
      ],
      "text-font": ["Noto Sans Medium"],
      "text-size": [
        "interpolate",
        ["linear"],
        ["zoom"],
        2,
        [
          "case",
          [
            "<",
            ["get", "population_rank"],
            10
          ],
          8,
          [
            ">=",
            ["get", "population_rank"],
            10
          ],
          12,
          0
        ],
        6,
        [
          "case",
          [
            "<",
            ["get", "population_rank"],
            8
          ],
          10,
          [
            ">=",
            ["get", "population_rank"],
            8
          ],
          18,
          0
        ],
        8,
        [
          "case",
          [
            "<",
            ["get", "population_rank"],
            7
          ],
          11,
          [
            ">=",
            ["get", "population_rank"],
            7
          ],
          20,
          0
        ]
      ],
      "icon-padding": [
        "interpolate",
        ["linear"],
        ["zoom"],
        0,
        2,
        14,
        2,
        16,
        20,
        17,
        2,
        22,
        2
      ],
      "text-transform": "uppercase"
    },
    "paint": {"text-color": "#707070"}
  }
];
