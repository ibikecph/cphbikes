@bicycle_parking: #0f0;

[zoom=15] {


#z15plus-roads[kind='highway'],
#z15plus-roads[kind='highway'][is_bridge='yes'],
#z15plus-roads[kind='highway'][is_link='yes'],
#z15plus-roads[kind='highway'][is_link='yes'][is_bridge='yes'] {
  ::road_outline{ line-width:15; line-color:@color_road_outline; line-opacity: 1.0; }
  ::road_inline{ line-width:8.5; line-color:#cddada; line-opacity: 1.0; }
  }

/* NOT WORKING */  
#z15plus-roads[kind='highway'][is_tunnel='yes']{
  ::road_outline{ line-width:12; line-color:#e1e5e5; line-opacity: 0.4; }
  ::road_inline{ line-width:6; line-color:#e1e5e5; line-opacity: 0.4; }
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
  	::road_outline{ line-width:0.5; line-color:@color_road_inline;  }
  	::road_inline{ line-width:5; line-color:@color_road_inline; line-dasharray: 0.75, 5;  }
  }
  
#copenhagen_line[surface='cobblestone'] {
	::road_outline{ line-width:2; line-color:#e1e5e5; line-opacity: 0.5;  }
  	::road_inline{ line-width:2; line-color:#878686; line-dasharray: 2, 2; line-opacity: 1; }
  }
  
/* FOOT PATHS */
#copenhagen_line[highway='path'] {
  	::road_inline{ line-width:1.25; line-color:@color_road_inline; line-dasharray: 5, 1.5; }
  }
  
#copenhagen_line[highway='path'][bicycle='no'] {
  	::road_inline{ line-width:1.2; line-color:#f6839e; line-dasharray: 3, 2; }
  }
  
#copenhagen_line[highway='footway'] {
  	::road_inline{ line-width:1.25; line-color:#fff; line-dasharray: 5, 1.5; }
  }
  
#copenhagen_line[highway='footway'][bicycle='no'] {
  	::road_inline{ line-width:1.2; line-color:#f6839e; line-dasharray: 3, 2; }
  }
  
#copenhagen_line[highway='pedestrian'] {
  	::road_inline{ line-width:1.25; line-color:#fff; line-dasharray: 5, 1.5; }
  }
  
#copenhagen_line[highway='pedestrian'][bicycle='no'] {
  	::road_inline{ line-width:1.2; line-color:#f6839e; line-dasharray: 3, 2; }
  }
  
/* PUSH YOUR BIKE */  
#copenhagen_line[bicycle='dismount'] {
  	::road_inline{ line-width:20; line-color:#78c600; line-dasharray: 3, 2; }
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
  
  /*'ramp:bicycle'*/
  /*
  #copenhagen_line[ramp='yes'][highway='steps'] {
  	line-width:10; line-color:#ff0000;
  }
  */

/* BIKE LANES */
  
#copenhagen_line[highway='cycleway']{
  	::bike_inline { line-width:1.5; line-color:#06ab06; }
  }
 
/* PAINTED LANE */ 
#copenhagen_line[highway='primary']['cycleway:left'='lane']{
	::bike_inline { line-width:1.5; line-color:#06ab06; line-offset: -1;}
  }
#copenhagen_line[highway='primary']['cycleway:right'='lane']{
	::bike_inline { line-width:1.5; line-color:#06ab06; line-offset: -1;}
  }
  
/* RAISED CURB */
#copenhagen_line[highway='primary']['cycleway:left'='track']{
	::bike_inline { line-width:1.5; line-color:#06ab06; line-offset: -1;}
  }
#copenhagen_line[highway='primary']['cycleway:right'='track']{
	::bike_inline { line-width:1.5; line-color:#06ab06; line-offset: -1;}
  }
  
  
/* FERRY */
#copenhagen_line[route='ferry'] {
  	::bike_outline, ::bike_inline { line-width:0; } 	
  	::ferry_inline{ line-width:1.75; line-color:#00b0ec; line-dasharray: 6, 3; }
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
.buildings[amenity='library']{
	  polygon-fill: #cfcfcf;
  }
  
/* POIs */  

.node[barrier='cycle_barrier']{
	point-file: url("images/barrier.png");
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
   	marker-width: 3;
  	marker-fill: #000;
  	marker-line-color: darken(#000, 10%);
  }
  
  
.node[amenity='compressed_air'] {
    point-file: url("images/bike_pump.png");
  	/*
  	marker-width: 25;
  	marker-fill: #007feb;
  	marker-line-color: darken(#0017a0, 10%);
	*/
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

/*
.node[amenity='place_of_worship'] {
	marker-width: 30;
	marker-fill: #ffe507;
	marker-line-color: darken(#ffe507, 10%);

	polygon-fill: #ffe507;
  }
  */
  
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
