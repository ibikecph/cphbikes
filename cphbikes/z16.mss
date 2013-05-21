@bicycle_parking: #0f0;

[zoom=16] {


#z15plus-roads[kind='highway'],
#z15plus-roads[kind='highway'][is_bridge='yes'],
#z15plus-roads[kind='highway'][is_link='yes'],
#z15plus-roads[kind='highway'][is_link='yes'][is_bridge='yes'] {
  ::road_outline{ line-width:17; line-color:@color_road_outline; line-opacity: 1.0; }
  ::road_inline{ line-width:9; line-color:@color_road_inline; line-opacity: 1.0; }
  }

#z15plus-roads[kind='major_road'],
#z15plus-roads[kind='major_road'][is_link='yes'],
#z15plus-roads[kind='major_road'][is_bridge='yes'],
#z15plus-roads[kind='major_road'][is_link='yes'][is_bridge='yes'] {
	::road_outline{ line-width:14; line-color:@color_road_outline; line-opacity: 1.0; }
	::road_inline{ line-width:6; line-color:@color_road_inline; line-opacity: 1.0; }
  }

#z15plus-roads[kind='minor_road'],
#z15plus-roads[kind='minor_road'][is_bridge='yes'] {
  	::road_outline{ line-width:8; line-color:@color_road_outline; line-opacity: 1.0; }
  	::road_inline{ line-width:3.5; line-color:@color_road_inline; line-opacity: 1.0; }
  }

#z15plus-roads[kind='rail'] {
  	::road_outline{ line-width:0.75; line-color:@color_road_inline;  }
  	::road_inline{ line-width:7; line-color:@color_road_inline; line-dasharray: 0.75, 5;  }
  }
  
#copenhagen_line[surface='cobblestone'] {
	::road_outline{ line-width:3.5; line-color:#e1e5e5; line-opacity: 0.5;  }
  	::road_inline{ line-width:3.5; line-color:#878686; line-dasharray: 2, 2; line-opacity: 1; }
  }
  
/* FOOT PATHS */
#copenhagen_line[highway='path'] {
  	::road_inline{ line-width:1.5; line-color:@color_road_inline; line-dasharray: 6, 2; }
  }
  
#copenhagen_line[highway='path'][bicycle='no'] {
  	::road_inline{ line-width:1.5; line-color:#f6839e; line-dasharray: 4, 3; }
  }
  
#copenhagen_line[highway='footway'] {
  	::road_inline{ line-width:1.5; line-color:#fff; line-dasharray: 6, 2; }
  }
  
#copenhagen_line[highway='footway'][bicycle='no'] {
  	::road_inline{ line-width:1.5; line-color:#f6839e; line-dasharray: 4, 3; }
  }
  
#copenhagen_line[highway='pedestrian'] {
  	::road_inline{ line-width:1.5; line-color:#fff; line-dasharray: 6, 2; }
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
  	line-width:3.5; line-opacity:2; line-color:#fec509;
  }
  
#copenhagen_line_bike_routes[route='bicycle'][rcn='yes'] {
  	line-width:3.5; line-opacity:1; line-color:#fb9e24;
  }

#copenhagen_line_bike_routes[route='bicycle'][lcn='yes'] {
  	line-width:3.5; line-opacity: 1.0; line-color:#48ae02;
  }
  
  /*'ramp:bicycle'*/
  /*
  #copenhagen_line[ramp='yes'][highway='steps'] {
  	line-width:10; line-color:#ff0000;
  }
*/

/* BIKE LANES */
#copenhagen_line[highway='cycleway']{
	::bike_outline { line-width:4; line-color:#fff; }
  	::bike_inline { line-width:1.5; line-color:#06ab06; }
  }
 
/* PAINTED LANE */ 
#copenhagen_line[highway='primary']['cycleway:left'='lane']{
	::bike_outline { line-width:4; line-color:#fff; line-offset: -1;}
	::bike_inline { line-width:1.5; line-color:#06ab06; line-offset: -1;}
  }
#copenhagen_line[highway='primary']['cycleway:right'='lane']{
	::bike_outline { line-width:4; line-color:#fff; line-offset: -1;}
	::bike_inline { line-width:1.5; line-color:#06ab06; line-offset: -1;}
  }
  
/* RAISED CURB */
#copenhagen_line[highway='primary']['cycleway:left'='track']{
	::bike_outline { line-width:4; line-color:#fff; line-offset: -1;}
	::bike_inline { line-width:1.5; line-color:#06ab06; line-offset: -1;}
  }
#copenhagen_line[highway='primary']['cycleway:right'='track']{
	::bike_outline { line-width:4; line-color:#fff; line-offset: -1;}
	::bike_inline { line-width:1.5; line-color:#06ab06; line-offset: -1;}
  }
  
/* FERRY */  
#copenhagen_line[route='ferry'] {
  	::bike_outline, ::bike_inline { line-width:0; } 	
  	::ferry_inline{ line-width:2.25; line-color:#00b0ec; line-dasharray: 6, 3; }
  }
   
   
/* BUILDINGS */
.buildings[building='yes'] {
	  polygon-fill: #d2d3d3;
  }
  
 
/* POIs */ 

.node[barrier='cycle_barrier']{
	point-file: url("images/barrier_med.png");
  }
  
.node[shop='bicycle']
  {
	point-file: url("images/bike_shop2.png");
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
   	marker-width: 15;
  	marker-fill: #000;
  	marker-line-color: darken(#000, 10%);
  }
  
.node[amenity='compressed_air'] {
    point-file: url("images/bike_pump.png");
  }
  
.node[highway='traffic_signals'] {
  	point-file: url("images/traffic_signals_small.png");
  }
  
.node[railway='station'] {
  	point-file: url("images/metro_12px.png");
  }
  
.node[amenity='cafe'] {
  point-file: url("images/cafe_xsmall2.png");
  /*
  marker-width: 3;
  marker-fill: #0707ff;
  marker-line-color: darken(#0707ff, 10%);

  polygon-fill: #0707ff;
  */
  }
  
.place_of_worship[religion='christian'] {
	point-file: url("images/christian.png");
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


/*
.bicycle_parking[zoom=16] {
  marker-width: 6;
  marker-fill: @bicycle_parking;
  marker-line-color: darken(@bicycle_parking, 10%);

  polygon-fill: @bicycle_parking;
}
*/




