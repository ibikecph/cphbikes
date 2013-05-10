@color_road_outline: #e1e5e5;
@color_road_inline: #fff;
@bike_outline: #e1e5e5;
@bike_inline: #009734;

[zoom=12] {

#z12-roads[kind='highway'],
#z12-roads[kind='highway'][is_bridge='yes'],
#z12-roads[kind='highway'][is_link='yes'],
#z12-roads[kind='highway'][is_link='yes'][is_bridge='yes'] {
  ::road_outline{ line-width:4.5; line-color:@color_road_outline; line-opacity: 1.0; }
  ::road_inline{ line-width:4; line-color:@color_road_inline; line-opacity: 1.0; }
  }

#z12-roads[kind='major_road'],
#z12-roads[kind='major_road'][is_link='yes'],
#z12-roads[kind='major_road'][is_bridge='yes'],
#z12-roads[kind='major_road'][is_link='yes'][is_bridge='yes'] {
	::road_outline{ line-width:3.2; line-color:@color_road_outline; line-opacity: 1.0; }
	::road_inline{ line-width:2; line-color:@color_road_inline; line-opacity: 1.0; }
  }

#z12-roads[kind='minor_road'],
#z12-roads[kind='minor_road'][is_bridge='yes'] {
  	::road_outline{ line-width:0.3; line-color:@color_road_outline; line-opacity: 1.0; }
  	::road_inline{ line-width:0.3; line-color:@color_road_inline; line-opacity: 1.0; }
  }

#z12-roads[kind='rail'] {
  	::road_outline{ line-width:0.25; line-color:@color_road_inline;  }
  	::road_inline{ line-width:4.5; line-color:@color_road_inline; line-dasharray: 0.5, 5;  }
  }

#copenhagen_line[aeroway='runway'] {
 	::inline{ line-width:2; line-color:#edefef; }
  }



/*
  #z12-roads[kind='highway'][is_link='no'][render='inline']
  { 	
    line-width: 3;
  }

  #z12-roads[kind='highway'][is_link='no'][render='outline']
  { 	
    line-width: 5;
  }

  #z12-roads[kind='major_road'][render='inline']
  { 	
    line-width: 2; 
  }

  #z12-roads[kind='major_road'][render='outline']
  { 	
    line-width: 4;
  }

  #z12-roads[kind='minor_road'][render='inline']
  { 	
    line-width: 1.5;
  }

  #z12-roads[is_link='yes'][render='inline']
  { 	
    line-width: 1;
  }
  */
}
