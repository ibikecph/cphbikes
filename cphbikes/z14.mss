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
  ::road_inline{ line-width:6; line-color:#cddada; line-opacity: 1.0; }
  }
  
#z14-roads[kind='highway'][is_tunnel='yes']{
  ::road_outline{ line-width:12; line-color:#e1e5e5; line-opacity: 0.4; }
  ::road_inline{ line-width:6; line-color:#e1e5e5; line-opacity: 0.4; }
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
  	::road_outline{ line-width:2.5; line-color:@color_road_outline; line-opacity: 1.0; }
  	::road_inline{ line-width:1; line-color:@color_road_inline; line-opacity: 1.0; }
  }
  
  
.copenhagen_line[kind='minor_road'][access='private'],
.copenhagen_line[kind='minor_road'][access='restricted']{
	::road_inline{ line-width:20; line-color:#ff0000; line-dasharray: 5, 1.5; }
  }

#z14-roads[kind='rail'] {
  	::road_outline{ line-width:0.25; line-color:@color_road_inline;  }
  	::road_inline{ line-width:4.5; line-color:@color_road_inline; line-dasharray: 0.5, 5;  }
  }

#copenhagen_line[surface='cobblestone'] {
	::road_outline{ line-width:1; line-color:#e1e5e5; line-opacity: 0.3;  }
  	::road_inline{ line-width:1; line-color:#878686; line-dasharray: 1, 1; line-opacity: 1; }
  }

  
/* FOOT PATHS */
#copenhagen_line[highway='path'] {
  	::road_inline{ line-width:1; line-color:@color_road_inline; line-dasharray: 5, 1.5; }
  }
  
#copenhagen_line[highway='path'][bicycle='no'] {
  	::road_inline{ line-width:1.2; line-color:#f6839e; line-dasharray: 1.7, 3; }
  }
  
#copenhagen_line[highway='footway'] {
  	::road_inline{ line-width:1; line-color:#fff; line-dasharray: 5, 1.5; }
  }
  
#copenhagen_line[highway='footway'][bicycle='no'] {
  	::road_inline{ line-width:1.2; line-color:#f6839e; line-dasharray: 1.7, 3; }
  }
  
#copenhagen_line[highway='pedestrian'] {
  	::road_inline{ line-width:1; line-color:#fff; line-dasharray: 5, 1.5; }
  }
  
#copenhagen_line[highway='pedestrian'][bicycle='no'] {
  	::road_inline{ line-width:1.2; line-color:#f6839e; line-dasharray: 1.7, 3; }
  }
  
/* PUSH YOUR BIKE */  
#copenhagen_line[highway='residential'][bicycle='dismount'],
#copenhagen_line[highway='primary'][bicycle='dismount'],
#copenhagen_line[highway='secondary'][bicycle='dismount'],
#copenhagen_line[highway='tertiary'][bicycle='dismount'],
#copenhagen_line[highway='pedestrian'][bicycle='dismount'],
#copenhagen_line[highway='service'][bicycle='dismount'] {
  	::road_inline{ line-width:1.5; line-color:#78c600; line-dasharray: 2, 3; }
  }
  
  /* ONE WAY STREETS -- WRONG */
  /*
  #copenhagen_line[oneway='yes'][cycleway='opposite']{
  	line-width:2; line-opacity: 1.0; line-color:#ff0000;
  }
  */
  
/* STEPS */  
#copenhagen_line['ramp:bicycle'='yes'][highway='steps']{
  	line-width:1; line-opacity: 1.0; line-color:#06ab06;  line-dasharray: 2, 4;
  }
  
#copenhagen_line[highway='steps']{
  	line-width:1; line-opacity: 1.0; line-color:#fff;  line-dasharray: 2, 4;
  }
  
  
/* BIKE ROUTES */  

#copenhagen_line_bike_routes[route='bicycle'][ncn='yes'] {
  	line-width:1.5; line-color:#fec509;
  }
  
#copenhagen_line_bike_routes[route='bicycle'][rcn='yes'] {
  	line-width:1.5; line-color:#fb9e24;
  }

#copenhagen_line_bike_routes[route='bicycle'][lcn='yes'] {
  	line-width:1.5; line-color:#48ae02;
  }
  
/* BIKE LANES */
  
#copenhagen_line[highway='cycleway']{
  	::bike_inline { line-width:1.25; line-color:#06ab06; }
  }
 
/* PAINTED LANE */ 
#copenhagen_line[highway='residential']['cycleway:left'='lane'],
#copenhagen_line[highway='primary']['cycleway:left'='lane'],
#copenhagen_line[highway='secondary']['cycleway:left'='lane'],
#copenhagen_line[highway='tertiary']['cycleway:left'='lane'],
#copenhagen_line[highway='pedestrian']['cycleway:left'='lane']{
	::bike_inline { line-width:1.25; line-color:#06ab06; line-offset: -1;}
  }
#copenhagen_line[highway='residential']['cycleway:right'='lane'],
#copenhagen_line[highway='primary']['cycleway:right'='lane'],
#copenhagen_line[highway='secondary']['cycleway:right'='lane'],
#copenhagen_line[highway='tertiary']['cycleway:right'='lane'],
#copenhagen_line[highway='pedestrian']['cycleway:right'='lane']{
	::bike_inline { line-width:1.25; line-color:#06ab06; line-offset: -1;}
  }
  
/* RAISED CURB */
#copenhagen_line[highway='residential'][cycleway='track']['cycleway:left'='track'],
#copenhagen_line[highway='primary'][cycleway='track']['cycleway:left'='track'],
#copenhagen_line[highway='secondary'][cycleway='track']['cycleway:left'='track'],
#copenhagen_line[highway='tertiary'][cycleway='track']['cycleway:left'='track'],
#copenhagen_line[highway='pedestrian'][cycleway='track']['cycleway:left'='track']{
	::bike_inline { line-width:20; line-color:#06ab06; line-offset: -1;}
  }
#copenhagen_line[highway='residential'][cycleway='track']['cycleway:right'='track'],
#copenhagen_line[highway='primary'][cycleway='track']['cycleway:right'='track'],
#copenhagen_line[highway='secondary'][cycleway='track']['cycleway:right'='track'],
#copenhagen_line[highway='tertiary'][cycleway='track']['cycleway:right'='track'],
#copenhagen_line[highway='pedestrian'][cycleway='track']['cycleway:right'='track']{
	::bike_inline { line-width:20; line-color:#06ab06; line-offset: -1;}
  }
  
  
  /* ASK EMIL ABOUT THESE AFTER ALL THE BIKE LANES TYPES HAVE BEEN ADDED */
/*  
  #copenhagen_line[bicycle='yes'],
  #copenhagen_line[bicycle='designated'],
  #copenhagen_line[bicycle='ok'],
  #copenhagen_line[route='bicycle'] {
	::bike_outline {
		line-width:2.5; 
		line-color:#fff;
	}
  	::bike_inline {
		line-width:0.9;
		line-color:#1318f2;
	}
  }
 */ 

/* AIRPORT */  
#aeroway[aeroway='runway'] {
 	::inline{ line-width:4; line-color:@color_road_inline; line-opacity: 1.0; }
  }
  
#aeroway[aeroway='taxiway'] {
 	::inline{ line-width:2; line-color:@color_road_inline; line-opacity: 1.0; }
  }
  
.area[aeroway='aerodrome'] {
    polygon-fill: #ededed; polygon-opacity: 0.2;
  }
    
/* FERRY */
#copenhagen_line[route='ferry'] {
  	::bike_outline, ::bike_inline { line-width:0; } 	
  	::ferry_inline{ line-width:1.3; line-color:#00b0ec; line-dasharray: 5, 2; }
  }
   
/* BUILDINGS */   
.buildings[railway='station'],
.buildings[shop='mall'],
.buildings[amenity='theatre'],
.buildings[amenity='university'],
.buildings[amenity='hospital'],
.buildings[amenity='public_building'],
.buildings[amenity='place_of_worship'],
.buildings[amenity='townhall'],
.buildings[amenity='library'] {
	  polygon-fill: #cfcfcf;
  }
  

}
