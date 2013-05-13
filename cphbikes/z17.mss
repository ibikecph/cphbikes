[zoom=17] {


#z15plus-roads[kind='highway'],
#z15plus-roads[kind='highway'][is_bridge='yes'],
#z15plus-roads[kind='highway'][is_link='yes'],
#z15plus-roads[kind='highway'][is_link='yes'][is_bridge='yes'] {
  ::road_outline{ line-width:24; line-color:@color_road_outline; line-opacity: 1.0; }
  ::road_inline{ line-width:12; line-color:@color_road_inline; line-opacity: 1.0; }
  }

#z15plus-roads[kind='major_road'],
#z15plus-roads[kind='major_road'][is_link='yes'],
#z15plus-roads[kind='major_road'][is_bridge='yes'],
#z15plus-roads[kind='major_road'][is_link='yes'][is_bridge='yes'] {
	::road_outline{ line-width:20; line-color:@color_road_outline; line-opacity: 1.0; }
	::road_inline{ line-width:10; line-color:@color_road_inline; line-opacity: 1.0; }
  }

#z15plus-roads[kind='minor_road'],
#z15plus-roads[kind='minor_road'][is_bridge='yes'] {
  	::road_outline{ line-width:12; line-color:@color_road_outline; line-opacity: 1.0; }
  	::road_inline{ line-width:6; line-color:@color_road_inline; line-opacity: 1.0; }
  }

#z15plus-roads[kind='rail'] {
  	::road_outline{ line-width:0.75; line-color:@color_road_inline;  }
  	::road_inline{ line-width:7; line-color:@color_road_inline; line-dasharray: 0.75, 5;  }
  }
  
#copenhagen_line[highway='path'] {
  	::road_inline{ line-width:2.25; line-color:@color_road_inline; line-dasharray: 6, 3; }
  }

.buildings[building='yes'] {
	  polygon-fill: #d2d3d3;
  }
}
