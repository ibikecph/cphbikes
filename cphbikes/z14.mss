@color_road_outline: #e1e5e5;
@color_road_inline: #fff;
@bike_outline: #e1e5e5;
@bike_inline: #009734;
 
 [zoom=14] {
  #z14-roads[kind='highway'],
  #z14-roads[kind='highway'][is_bridge='yes'],
  #z14-roads[kind='highway'][is_link='yes'],
  #z14-roads[kind='highway'][is_link='yes'][is_bridge='yes'] {
  ::road_outline{ line-width:12; line-color:@color_road_outline; line-opacity: 1.0; }
  ::road_inline{ line-width:6; line-color:@color_road_inline; line-opacity: 1.0; }
  }

  #z14-roads[kind='major_road'],
  #z14-roads[kind='major_road'][is_link='yes'],
  #z14-roads[kind='major_road'][is_bridge='yes'],
  #z14-roads[kind='major_road'][is_link='yes'][is_bridge='yes'] {
	::road_outline{ line-width:8; line-color:@color_road_outline; line-opacity: 1.0; }
	::road_inline{ line-width:3; line-color:@color_road_inline; line-opacity: 1.0; }
  }

  #z14-roads[kind='minor_road'],
  #z14-roads[kind='minor_road'][is_bridge='yes'] {
  	::road_outline{ line-width:4; line-color:@color_road_outline; line-opacity: 1.0; }
  	::road_inline{ line-width:2; line-color:@color_road_inline; line-opacity: 1.0; }
  }

  #z14-roads[kind='rail'] {
  	::road_outline{ line-width:0.25; line-color:@color_road_inline;  }
  	::road_inline{ line-width:4.5; line-color:@color_road_inline; line-dasharray: 0.5, 5;  }
  }
  
  #copenhagen_line[highway='path'] {
  	::road_inline{ line-width:1.5; line-color:@color_road_inline; line-dasharray: 4, 2; }
  }
  
   /* BIKE ROUTES */  

  #copenhagen_line_bike_routes[route='bicycle'][ncn='yes'] {
  	line-width:3; line-opacity:2; line-color:#fec509;
  }
  
  #copenhagen_line_bike_routes[route='bicycle'][rcn='yes'] {
  	line-width:3; line-opacity:1; line-color:#fb9e24;
  }

  #copenhagen_line_bike_routes[route='bicycle'][lcn='yes'] {
  	line-width:3; line-opacity: 1.0; line-color:#48ae02;
  }
  
  #copenhagen_line[highway='cycleway'],
  #copenhagen_line[bicycle='yes'],
  #copenhagen_line[bicycle='designated'],
  #copenhagen_line[bicycle='ok'],
  #copenhagen_line[route='bicycle'] {
	::bike_outline {
		line-width:4; 
		line-color:#fff;
	}
  	::bike_inline {
		line-width:0.75;
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
  
  
  /*
  .node[shop='bicycle'] {
   	marker-width: 3;
  	marker-fill: #00c437;
  	marker-line-color: darken(#00c437, 10%);
  }
  
  .node[amenity='compressed_air'] {
  	marker-width: 5;
  	marker-fill: #007feb;
  	marker-line-color: darken(#0017a0, 10%);
  }
  
  .node[highway='traffic_signals'] {
  	
  	marker-width: 3;
  	marker-fill: #000;
  	marker-line-color: darken(#000, 10%);
  }
  
  .node[railway='station'] {
  	
  	marker-width: 3;
  	marker-fill: #ff00a8;
  	marker-line-color: darken(#ff00a8, 10%);
  }
  */
  

  



/*
  #z14-roads[kind='highway'][render='inline'] {
    line-width: 4;
  }

  #z14-roads[kind='highway'][render='outline'],
  #z14-roads[kind='highway'][is_bridge='yes'][render='casing'] {
    line-width: 8;
  }

  #z14-roads[kind='highway'][is_link='yes'][render='inline'] {
    line-width: 2.5;	
  }

  #z14-roads[kind='highway'][is_link='yes'][render='outline'],
  #z14-roads[kind='highway'][is_link='yes'][is_bridge='yes'][render='casing'] {
    line-width: 6;
  }
  
  #z14-roads[kind='major_road'][render='inline'] {
    line-width: 4;
  }

  #z14-roads[kind='major_road'][render='outline'],
  #z14-roads[kind='major_road'][is_bridge='yes'][render='casing'] {
    line-width: 6;
  }
  
  #z14-roads[kind='major_road'][is_link='yes'][render='outline'],
  #z14-roads[kind='major_road'][is_link='yes'][is_bridge='yes'][render='casing'] {
    line-width: 5;
  }
  
  #z14-roads[kind='minor_road'][render='outline'],
  #z14-roads[kind='minor_road'][is_bridge='yes'][render='casing'] {
  	::outline{ line-width:0.5; line-color:@road_outline; line-opacity: 1.0; }
  	::inline{ line-width:0.5; line-color:@road_inline; line-opacity: 1.0; }
  }

  #z14-roads[kind='rail'][render='casing'] {
    line-width: 3;
    line-dasharray: 1,3;
    line-cap: butt;
  }
  */
}
