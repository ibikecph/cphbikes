[zoom=17] {


#z15plus-roads[kind='highway'],
#z15plus-roads[kind='highway'][is_bridge='yes'],
#z15plus-roads[kind='highway'][is_link='yes'],
#z15plus-roads[kind='highway'][is_link='yes'][is_bridge='yes'] {
  ::road_outline{ line-width:26; line-color:@color_road_outline; line-opacity: 1.0; }
  ::road_inline{ line-width:13; line-color:@color_road_inline; line-opacity: 1.0; }
  }

#z15plus-roads[kind='major_road'],
#z15plus-roads[kind='major_road'][is_link='yes'],
#z15plus-roads[kind='major_road'][is_bridge='yes'],
#z15plus-roads[kind='major_road'][is_link='yes'][is_bridge='yes'] {
	::road_outline{ line-width:22; line-color:@color_road_outline; line-opacity: 1.0; }
	::road_inline{ line-width:11; line-color:@color_road_inline; line-opacity: 1.0; }
  }

#z15plus-roads[kind='minor_road'],
#z15plus-roads[kind='minor_road'][is_bridge='yes'] {
  	::road_outline{ line-width:13; line-color:@color_road_outline; line-opacity: 1.0; }
  	::road_inline{ line-width:7; line-color:@color_road_inline; line-opacity: 1.0; }
  }

#z15plus-roads[kind='rail'] {
  	::road_outline{ line-width:1.5; line-color:@color_road_inline;  }
  	::road_inline{ line-width:7.5; line-color:@color_road_inline; line-dasharray: 1, 5.5;  }
  }
 
/*  
#copenhagen_line[surface='cobblestone'] {
	line-pattern-file: url("images/cobblestone.png");
  }
  */
  
/* FOOT PATHS */
#copenhagen_line[highway='path'] {
  	::road_inline{ line-width:1.7; line-color:@color_road_inline; line-dasharray: 6, 3; }
  }
  
#copenhagen_line[highway='path'][bicycle='no'] {
  	::road_inline{ line-width:1.5; line-color:#f6839e; line-dasharray: 4, 3; }
  }
  
#copenhagen_line[highway='footway'] {
  	::road_inline{ line-width:1.7; line-color:#fff; line-dasharray: 6, 3; }
  }
  
#copenhagen_line[highway='footway'][bicycle='no'] {
  	::road_inline{ line-width:1.5; line-color:#f6839e; line-dasharray: 4, 3; }
  }
  
#copenhagen_line[highway='pedestrian'] {
  	::road_inline{ line-width:1.7; line-color:#fff; line-dasharray: 6, 3; }
  }
  
#copenhagen_line[highway='pedestrian'][bicycle='no'] {
  	::road_inline{ line-width:1.5; line-color:#f6839e; line-dasharray: 4, 3; }
  }
  
/* PUSH YOUR BIKE */  
#copenhagen_line[highway='residential'][bicycle='dismount'],
#copenhagen_line[highway='primary'][bicycle='dismount'],
#copenhagen_line[highway='secondary'][bicycle='dismount'],
#copenhagen_line[highway='tertiary'][bicycle='dismount'],
#copenhagen_line[highway='pedestrian'][bicycle='dismount'] {
  	::road_inline{ line-width:1.5; line-color:#78c600; line-dasharray: 4, 3; }
  }


/* BIKE ROUTES */  

#copenhagen_line_bike_routes[route='bicycle'][ncn='yes'] {
  	line-width:7; line-opacity:2; line-color:#fec509;
  }
  
#copenhagen_line_bike_routes[route='bicycle'][rcn='yes'] {
  	line-width:7; line-opacity:1; line-color:#fb9e24;
  }

#copenhagen_line_bike_routes[route='bicycle'][lcn='yes'] {
  	line-width:7; line-opacity: 1.0; line-color:#48ae02;
  }
  

/* BIKE LANES */
#copenhagen_line[highway='cycleway']{
	::bike_outline { line-width:3.5; line-color:#fff; }
  	::bike_inline { line-width:1.5; line-color:#06ab06; }
  }
 
/* PAINTED LANE */ 
#copenhagen_line[highway='residential']['cycleway:left'='lane'],
#copenhagen_line[highway='primary']['cycleway:left'='lane'],
#copenhagen_line[highway='secondary']['cycleway:left'='lane'],
#copenhagen_line[highway='tertiary']['cycleway:left'='lane'],
#copenhagen_line[highway='pedestrian']['cycleway:left'='lane']{
	::bike_outline { line-width:3.5; line-color:#fff; }
	::bike_inline { line-width:1.5; line-color:#06ab06; line-offset: -1;}
  }
#copenhagen_line[highway='residential']['cycleway:right'='lane'],
#copenhagen_line[highway='primary']['cycleway:right'='lane'],
#copenhagen_line[highway='secondary']['cycleway:right'='lane'],
#copenhagen_line[highway='tertiary']['cycleway:right'='lane'],
#copenhagen_line[highway='pedestrian']['cycleway:right'='lane']{
	::bike_outline { line-width:3.5; line-color:#fff; }
	::bike_inline { line-width:1.5; line-color:#06ab06; line-offset: -1;}
  }
  
/* RAISED CURB */
#copenhagen_line[highway='primary']['cycleway:left'='track']{
	::bike_outline { line-width:3.5; line-color:#fff; }
	::bike_inline { line-width:1.5; line-color:#06ab06; line-offset: -1;}
  }
#copenhagen_line[highway='primary']['cycleway:right'='track']{
	::bike_outline { line-width:3.5; line-color:#fff; }
	::bike_inline { line-width:1.5; line-color:#06ab06; line-offset: -1;}
  }
  
/* AIRPORT */  
  
#aeroway[aeroway='runway'] {
 	::inline{ line-width:50; line-color:#eaeded;  }
  }
  
#aeroway[aeroway='taxiway'] {
 	::inline{ line-width:15; line-color:#eaeded;  }
  }
  
#copenhagen_line[route='ferry'] {
  	::bike_outline, ::bike_inline { line-width:0; } 	
  	::ferry_inline{ line-width:2.25; line-color:#00b0ec; line-dasharray: 6, 3; }
  }
  
.area[aeroway='aerodrome'] {
    polygon-fill: #ededed; polygon-opacity: 0.2;
  }
  
/* BUILDINGS */

.buildings[building='yes'] {
	  polygon-fill: #d2d3d3;
  }
  
/* POIs */ 

.node[shop='bicycle']
  {
	point-file: url("images/bike_shop_med.png");
  }

.node[shop='bicycle'],
.node['service:bicycle:retail'='yes'],
.node['service:bicycle:repair'='yes'],
.node['service:bicycle:rental'='yes'],
.node['service:bicycle:pump'='yes'],
.node['service:bicycle:diy'='yes'],
.node['service:bicycle:cleaning'='yes'],
.node['service:bicycle:second_hand'='yes'],
  {
   	marker-width: 20;
  	marker-fill: #000;
  	marker-line-color: darken(#000, 10%);
  }
  
.node[amenity='compressed_air'] {
    point-file: url("images/bike_pump.png");
  }
  
.node[highway='traffic_signals'] {
  	point-file: url("images/traffic_signals.png");
  }
  
.node[railway='station'] {
  	point-file: url("images/metro_12px.png");
  }
  
.node[amenity='cafe'] {
  point-file: url("images/cafe_small.png");
  }
  
.place_of_worship[religion='christian'] {
	point-file: url("images/christian_med.png");
  }
  
.place_of_worship[religion='muslim'] {
	marker-width: 30;
	marker-fill: #f400f1;
	marker-line-color: darken(#f400f1, 10%);

	polygon-fill: #ffe507;
  }
  
.place_of_worship[religion='buddhist'] {
	marker-width: 30;
	marker-fill: #ad3b59;
	marker-line-color: darken(#f400f1, 10%);

	polygon-fill: #ad3b59;
  }  
  
    
}
