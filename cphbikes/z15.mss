@bicycle_parking: #0f0;

[zoom=15] {


  #z15plus-roads[kind='highway'],
  #z15plus-roads[kind='highway'][is_bridge='yes'],
  #z15plus-roads[kind='highway'][is_link='yes'],
  #z15plus-roads[kind='highway'][is_link='yes'][is_bridge='yes'] {
  ::road_outline{ line-width:15; line-color:@color_road_outline; line-opacity: 1.0; }
  ::road_inline{ line-width:8.5; line-color:@color_road_inline; line-opacity: 1.0; }
  }

  #z15plus-roads[kind='major_road'],
  #z15plus-roads[kind='major_road'][is_link='yes'],
  #z15plus-roads[kind='major_road'][is_bridge='yes'],
  #z15plus-roads[kind='major_road'][is_link='yes'][is_bridge='yes'] {
	::road_outline{ line-width:12; line-color:@color_road_outline; line-opacity: 1.0; }
	::road_inline{ line-width:5; line-color:@color_road_inline; line-opacity: 1.0; }
  }

  #z15plus-roads[kind='minor_road'],
  #z15plus-roads[kind='minor_road'][is_bridge='yes'] {
  	::road_outline{ line-width:6; line-color:@color_road_outline; line-opacity: 1.0; }
  	::road_inline{ line-width:2; line-color:@color_road_inline; line-opacity: 1.0; }
  }

  #z15plus-roads[kind='rail'] {
  	::road_outline{ line-width:0.75; line-color:@color_road_inline;  }
  	::road_inline{ line-width:7; line-color:@color_road_inline; line-dasharray: 0.75, 7;  }
  }
  
  #copenhagen_line[highway='path'] {
  	::road_inline{ line-width:1.5; line-color:@color_road_inline; line-dasharray: 4, 2; }
  }
  

  /* BIKE ROUTES */  

  #copenhagen_line_bike_routes[route='bicycle'][ncn='yes'] {
  	line-width:4; line-opacity:2; line-color:#fec509;
  }
  
  #copenhagen_line_bike_routes[route='bicycle'][rcn='yes'] {
  	line-width:4; line-opacity:1; line-color:#fb9e24;
  }

  #copenhagen_line_bike_routes[route='bicycle'][lcn='yes'] {
  	line-width:4; line-opacity: 1.0; line-color:#48ae02;
  }
  
  /*'ramp:bicycle'*/
  /*
  #copenhagen_line[ramp='yes'][highway='steps'] {
  	line-width:10; line-color:#ff0000;
  }
*/

  #copenhagen_line[highway='cycleway'],
  #copenhagen_line[bicycle='yes'],
  #copenhagen_line[bicycle='yes'][route!='ferry'],
  #copenhagen_line[bicycle='designated'],
  #copenhagen_line[bicycle='ok'],
  #copenhagen_line[route='bicycle'] {
	::bike_outline {
		line-width:6; 
		line-color:#fff;
	}
  	::bike_inline {
		line-width:1;
		line-color:#b1b3b3;
	}
  }
  
  #copenhagen_line[aeroway='runway'] {
 	::inline{ line-width:14; line-color:#eaeded;  }
  }
  
  #copenhagen_line[aeroway='taxiway'] {
 	::inline{ line-width:4; line-color:#eaeded;  }
  }
  
  #copenhagen_line[route='ferry'] {
  	::ferry_outline{ line-width:0;  }
 	::ferry_inline{ line-width:1.75; line-color:#00b0ec; line-dasharray: 6, 3;  }
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
  



/*
  #z15plus-roads {
    line-smooth: 1.0;
  }

  #z15plus-roads[kind='highway'][render='inline'] {
    line-width: 6;
  }

  #z15plus-roads[kind='highway'][render='casing'] {
    line-width: 11;
  }

  #z15plus-roads[kind='highway'][is_link='yes'][render='inline'] {
    line-width: 3;	
  }

  #z15plus-roads[kind='highway'][is_link='yes'][render='casing'] {
    line-width: 6.5;
  }

  #z15plus-roads[kind='major_road'][render='inline'] {
    line-width: 5;
  }

  #z15plus-roads[kind='major_road'][render='casing'] {
    line-width: 8;
  }

  #z15plus-roads[kind='major_road'][is_link='yes'][render='inline'] {
    line-width: 2.5;
  }

  #z15plus-roads[kind='major_road'][is_link='yes'][render='casing'] {
    line-width: 5.5;
  }

  #z15plus-roads[kind='minor_road'][render='inline'] {
    line-width: 4;
  }

  #z15plus-roads[kind='minor_road'][render='casing'] {
    line-width: 6;
  }

  #z15plus-roads[highway='service'][render='inline'] {
    line-width: 2.5;
  }

  #z15plus-roads[highway='service'][render='casing'] {
    line-width: 3.5;
  }

  #z15plus-roads[kind='rail'][render='inline'] {
    line-width: 1;
  }

  #z15plus-roads[kind='rail'][render='casing'] {
    line-width: 3;
    line-dasharray: 1,3;
    line-cap: butt;
  }

  #z15plus-roads[kind='path'][render='inline'] {
    line-width: 1; 
    line-dasharray: 2,3;
    line-cap: butt;
  }
  */
}


.bicycle_parking[zoom=15] {
  marker-width: 3;
  marker-fill: @bicycle_parking;
  marker-line-color: darken(@bicycle_parking, 10%);

  polygon-fill: @bicycle_parking;
}

.bicycle_parking[zoom>15] {
  text-face-name: "Arial Regular";
  text-name: [label];
}
