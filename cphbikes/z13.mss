@color_road_outline: #e1e5e5;
@color_road_inline: #fff;
@bike_outline: #e1e5e5;
@bike_inline: #009734;

[zoom=13] {

#z13-roads[kind='highway'],
#z13-roads[kind='highway'][is_bridge='yes'],
#z13-roads[kind='highway'][is_link='yes'],
#z13-roads[kind='highway'][is_link='yes'][is_bridge='yes'] {
  ::road_outline{ line-width:6; line-color:@color_road_outline; line-opacity: 1.0; }
  ::road_inline{ line-width:4; line-color:@color_road_inline; line-opacity: 1.0; }
  }

#z13-roads[kind='major_road'],
#z13-roads[kind='major_road'][is_link='yes'],
#z13-roads[kind='major_road'][is_bridge='yes'],
#z13-roads[kind='major_road'][is_link='yes'][is_bridge='yes'] {
	::road_outline{ line-width:4; line-color:@color_road_outline; line-opacity: 1.0; }
	::road_inline{ line-width:2; line-color:@color_road_inline; line-opacity: 1.0; }
  }

#z13-roads[kind='minor_road'],
#z13-roads[kind='minor_road'][is_bridge='yes'] {
  	::road_outline{ line-width:0.5; line-color:@color_road_outline; line-opacity: 1.0; }
  	::road_inline{ line-width:0.5; line-color:@color_road_inline; line-opacity: 1.0; }
  }

#z13-roads[kind='rail'] {
  	::road_outline{ line-width:0.25; line-color:@color_road_inline;  }
  	::road_inline{ line-width:4.5; line-color:@color_road_inline; line-dasharray: 0.5, 5;  }
  }
  
#copenhagen_line[highway='path'] {
  	::road_inline{ line-width:0.8; line-color:@color_road_inline; line-dasharray: 3, 1; }
  }
  
   /* BIKE ROUTES */  

#copenhagen_line_bike_routes[route='bicycle'][ncn='yes'] {
  	line-width:2; line-opacity:2; line-color:#fec509;
  }
  
#copenhagen_line_bike_routes[route='bicycle'][rcn='yes'] {
  	line-width:2; line-opacity:1; line-color:#fb9e24;
  }

#copenhagen_line_bike_routes[route='bicycle'][lcn='yes'] {
  	line-width:2; line-opacity: 1.0; line-color:#48ae02;
  }
  
  /* BIKE LANES */
  
#copenhagen_line[highway='cycleway'],
#copenhagen_line[bicycle='yes'],
#copenhagen_line[bicycle='designated'],
#copenhagen_line[bicycle='ok'],
#copenhagen_line[route='bicycle'] {
	::bike_outline {
		line-width:1; 
		line-color:#fff;
	}
  	::bike_inline {
		line-width:0;
		line-color:#b1b3b3;
	}
  }
  
#copenhagen_line[aeroway='runway'] {
 	::inline{ line-width:4; line-color:@color_road_inline; line-opacity: 1.0; }
  }
  
#copenhagen_line[aeroway='taxiway'] {
 	::inline{ line-width:2; line-color:@color_road_inline; line-opacity: 1.0; }
  }
  
.area[aeroway='aerodrome'] {
    polygon-fill: #ededed; polygon-opacity: 0.2;
  }
   
.buildings[railway='station'],
.buildings[shop='mall'],
.buildings[amenity='theatre'],
.buildings[amenity='university'],
.buildings[amenity='hospital'],
.buildings[amenity='public_building'] {
	  polygon-fill: #cfcfcf;
  }

}
