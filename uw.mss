/* ================================================================== */
/* walkways -- i.e. noauto */
/* ================================================================== */
#roads_high::outline[zoom>=11][zoom<=20],
#tunnel[render='1_outline'][zoom>=11][zoom<=20],
#bridge[render='1_outline'][zoom>=11][zoom<=20]{
  [stylegroup='noauto']   { line-color: #d5d2c3;  }
  [zoom=15] {
    [stylegroup='noauto']   { line-width: 0; }
  }
  [zoom=16] {
    [stylegroup='noauto']   { line-width: 0; }
  }
  [zoom>=17] {
    [stylegroup='noauto']   { line-width: 0; }
  }
  [zoom>=18] {
    [stylegroup='noauto']   { 
      line-width: 0; 
      /* [type="cycleway"] {
        line-color: #abdfe7;
        line-width: @rdz18_min / 4 + 4;
      } */
    }
  }
}

#roads_high[zoom>=11][zoom<=20],
#tunnel[render='3_inline'][zoom>=11][zoom<=20],
#bridge[render='3_inline'][zoom>=11][zoom<=20]{
  [stylegroup='noauto']   { 
    line-color: #fcfcfc;
  }
  [zoom=13] {
    [stylegroup='noauto']   { line-width: @rdz13_min / 4; line-dasharray: 0,0; }
  }
  [zoom=14] {
    [stylegroup='noauto']   { line-width: @rdz14_min / 4; line-dasharray: 0,0; }
  }
  [zoom=15] {
    [stylegroup='noauto']   { line-width: @rdz15_min / 4; line-dasharray: 0,0; }
  }
  [zoom=16] {
    [stylegroup='noauto']   { line-width: @rdz16_min / 4; line-dasharray: 0,0; }
  }
  [zoom=17] {
    [stylegroup='noauto']   { line-width: @rdz17_min / 4; line-dasharray: 0,0; }
  }
  [zoom>=18] {
    [stylegroup='noauto']   { line-width: @rdz18_min / 4; line-dasharray: 0,0; }
  }
}

/* ================================================================== */
/* UW buildings */
/* ================================================================== */
#buildings_uw[geometry_type='polygon'],#buildings_uw[geometry_type='multipolygon'] {
  [object_type='building'] {
    polygon-fill: @uwbuilding;
    building-fill: @uwbuilding;
    building-height:1.25;
  }
}

#buildings_partial_uw[geometry_type='polygon'] {
  polygon-fill: #e8dcd4;
  line-width: 1.5;
  line-color: #dfcfc4;
}

//a geojson layer with a limited number of campus region labels
#uw_macro_labels {
 [zoom > 13][zoom < 16] {
    text-name: "[name]";
    text-halo-radius: 2.5;
    text-face-name:@sans;
    // Allows us to show more labels
    text-allow-overlap: true;
    text-size: 14;
    text-line-spacing: -5.0;
    text-wrap-width:120;
    text-fill: #333;
    text-halo-fill: #fff;
  }
  [zoom = 15] {
    text-size: 17;
    text-halo-radius: 1.7;
  }
  [zoom > 13] {
    [note='waterlabel'] {
      text-name: "[name]";
      text-halo-radius: 0;
      text-fill: #4e87c1;
      text-face-name:@serif_bold_italic;
      text-size: 18;
      text-character-spacing: 2;
      text-placement: line;
      text-spacing: 5000;
      text-clip:false;
      [name='Lake Mendota'] {
        [zoom=14] {
          text-dy: 140;
        }
        [zoom=15] {
          text-size: 24;
        }
        [zoom=16] {
          text-dy: -50;
          text-size: 21;
        }
        [zoom=17] {
          text-dy: -80;
          text-spacing: 500000;
          text-character-spacing: 0;
          text-clip:false;
          text-size: 23;
        }
        [zoom = 18] {
          text-dy: -240;
          text-spacing: 500000;
          text-character-spacing: 0;
          text-clip:false;
          text-size: 25;
        }
      }
      [name='University Bay'] {
        [zoom>=15][zoom<=18] {
          text-size: 13;
        }
        [zoom = 18] {
          text-dy: -240;
        }
      }
    }
  }
}

#uw_labels {

  // Building Labels
  [object_type='building'],[object_type='building_partial'] {
    [zoom >= 16][semantic_zoom=16] {
      text-name: "[name]";
      text-halo-radius: 1.5;
      text-face-name:@sans;
      // Allows us to show more labels
      text-allow-overlap: true;
      text-size: 11;
      text-line-spacing: -3.0;
      text-wrap-width:30;
      text-fill: #555;
      text-halo-fill: #fff;
    }
    [zoom >= 17][semantic_zoom<=17] {
      text-name: "[name]";
      text-halo-radius: 1;
      text-face-name:@sans;
      // Allows us to show more labels
      text-allow-overlap: true;
      text-size: 11;
      text-line-spacing: -1.0;
      text-wrap-width:45;
      text-fill: #555;
      text-halo-fill: #fff;
    }
    [zoom >= 18][semantic_zoom<=19] {
      text-name: "[name]";
      text-halo-radius: 1;
      text-face-name:@sans;
      // Allows us to show more labels
      text-allow-overlap: true;
      text-size: 11;
      text-line-spacing: 0;
      text-wrap-width:60;
      text-fill: #555;
      text-halo-fill: #fff;
    }
  }

  // Parking Lot Labels
  [object_type='parking_lot'] {
    [zoom > 15][area>5000],[zoom > 16][area>3000],[zoom > 17][area>1500] {
      text-name: "[name]";
      text-halo-radius: 1;
      text-face-name:@sans;
      // Allows us to show more labels
      text-allow-overlap: true;
      text-size: 11;
      text-wrap-width:30;
      text-fill: #888;
      text-halo-fill: #fff;
      //offset the label downward so as not to appear over P symbol
    }
  }

  // Natural Areas
  [object_type='natural_area'] {
    [zoom >= 16][semantic_zoom=16] {
      text-size: 11;
      text-line-spacing: -1.0;
      text-wrap-width:30;
      text-name: "[name]";
      text-face-name:@sans;
      text-fill: #555;
      text-halo-fill: #fff;
      // Allows us to show more labels
      text-allow-overlap: true;
      text-halo-radius: 1.5;
      text-dy: 10;
   }
    [zoom >= 17][semantic_zoom<=17] {
      text-size: 11;
      text-line-spacing: -1.0;
      text-wrap-width:45;
      text-name: "[name]";
      text-face-name:@sans;
      text-fill: #555;
      text-halo-fill: #fff;
      // Allows us to show more labels
      text-allow-overlap: true;
      text-halo-radius: 1.5;
      text-dy: 10;
    }
    [zoom >= 18][semantic_zoom<=19] {
      text-size: 11;
      text-line-spacing: -1.0;
      text-wrap-width:60;
      text-name: "[name]";
      text-face-name:@sans;
      text-fill: #555;
      text-halo-fill: #fff;
      // Allows us to show more labels
      text-allow-overlap: true;
      text-halo-radius: 1.5;
      text-dy: 10;
    }
  }
}

/* labels we do not want to show */
#area_label {
  [type='university'][name='University of Wisconsin-Madison'][zoom >= 15],[name='UW Medflight Backup Landing Area'][name='Lot 75 (UW Hospital Ramp)'] {
    text-name: "";
    text-face-name:@sans;
    text-size: 11;
  }
  [zoom>=17][area>20000] { /*this sizes down some OSM labels showing up in campus */
    text-size: 11;
  }
}

/* ================================================================== */
/* parking lots that are points */
/* ================================================================== */

#parking_uw {
  [geometry_type='polygon'],
  [geometry_type='multipolygon'] {
    polygon-fill: @uwparkinglot;
    polygon-opacity: 1;
    building-fill: @uwparkinglot;
    building-height:.5;
  }
}


/* ================================================================== */
/* Styling McClimon track; it's in the natrual_areas_uw layer */
/* ================================================================== */
#natural_areas_uw[geometry_type='multilinestring'] {
  line-color: #decba6;
  line-width: 3;
}

/* ================================================================== */
/* Natural areas */
/* ================================================================== */
#natural_areas_uw {
  polygon-fill: @grass;
  polygon-opacity: 0;
  [geometry_type='point'] {
    [zoom = 16] {
      point-file: url(img/uw/park-18.png);
      /* Botany gardens and Allen Centennial Gardens */
      [id=557],[id=499] {
        point-file: url(img/uw/garden-18.png);
      }
    }
    [zoom >= 17] {
      point-file: url(img/uw/park-24.png);
      /* Botany gardens and Allen Centennial Gardens */
      [id=557],[id=499] {
        point-file: url(img/uw/garden-18.png);
      }
    }
  }
}


/* ================================================================== */
/* landuse school -- all of our non-wooded, non-road, non-parking space */
/* ================================================================== */
#landuse_gen0[zoom>3][zoom<=9],
#landuse_gen1[zoom>9][zoom<=12],
#landuse[zoom>12] {
  [type='university'], [type='college'], [type='school'] {
    polygon-fill: @school;
  }
}


#landuse_gen0[zoom>3][zoom<=9],
#landuse_gen1[zoom>9][zoom<=12],
#landuse[zoom>12],#landuse_overlays[zoom>12] {
  [type='marsh'], [type='nature_reserve'], [type='wetland'] {
    polygon-fill: @grass;
    polygon-opacity: 1.0;
    [zoom>13] { polygon-pattern-file:url(img/marsh-4.png);}
    [zoom>16] { polygon-pattern-file:url(img/marsh-8.png);}
  }
}



/* ================================================================== */
/* campus woodlands (from geojson) */
/* ================================================================== */
#woodlands_uw[zoom>14] {
    polygon-fill: @wooded_uw;
    polygon-pattern-file:url(img/uw/forest_green-light-100.png);
    [zoom=17] {
      polygon-pattern-file:url(img/uw/forest_green-200.png);
    }
    [zoom=18] {
      polygon-pattern-file:url(img/uw/forest_green-400.png);
    }
    line-width: 4;
    line-color: #839b7c;
    line-opacity: 0.1;
    line-join: round;
    ::blur1 {line-color: #839b7c;line-width: 3; line-opacity: 0.2;}
    ::blur2 {line-color: #839b7c;line-width: 2; line-opacity: 0.3;}
    ::blur3 {line-color: #839b7c;line-width: 1; line-opacity: 0.4;}
}

/* ================================================================== */
/* Water
/* ================================================================== */
/**
 * #water[zoom>=16] {
 * ::glow { line-color: darken(@water,2%); line-width: 6; line-opacity: 1;}
 * ::glow1 { line-color: darken(@water,3%); line-width: 5; line-opacity: 1;}
 * ::glow2 { line-color: darken(@water,4%); line-width: 4; line-opacity: 1;}
 * ::glow3 { line-color: darken(@water,5%); line-width: 3; line-opacity: 1;}
 *}
*/

/* ================================================================== */
/* Buses */
/* ================================================================== */
#buses {
  point-allow-overlap:true;
  [zoom < 16]  { point-opacity: 0; }
  [zoom = 16]  { point-file: url(img/uw/bus-blue-9.png); }
  [zoom = 17]  { point-file: url(img/uw/bus-blue-12.png); }
  [zoom >= 18] { point-file: url(img/uw/bus-blue-14.png); }
}

/**
 * The interactive Layer
*/
#mapng_interactive * {

  /** Map Objects **/
  [object_type !='bus_stop'] {
    polygon-opacity: 0;
    point-opacity: 0;
    point-allow-overlap:true;
    [geometry_type='point'][object_type='parking_lot'] {
      [zoom = 15] { point-file: url(img/uw/parking-12.png); point-opacity: 1;}
      [zoom = 16] { point-file: url(img/uw/parking-16.png); point-opacity: 1;}
      [zoom >= 17] { point-file: url(img/uw/parking-21.png); point-opacity: 1;}
    }
  }

  /** Bus Stops **/
  [object_type='bus_stop'] {
    marker-allow-overlap: true;
    marker-opacity: 0;
    marker-fill: #f45;
    marker-line-color:#813;
    [zoom<16]   { marker-width:0; }
    [zoom=16]   { marker-width: 15; }
    [zoom=17]   { marker-width: 21; }
    [zoom>=18]  { marker-width: 27; }
  }
}
