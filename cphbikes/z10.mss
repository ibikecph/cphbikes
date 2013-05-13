[zoom=10] {

#z10-roads[kind='highway'],
#z10-roads[kind='highway'][is_bridge='yes'],
#z10-roads[kind='highway'][is_link='yes'],
#z10-roads[kind='highway'][is_link='yes'][is_bridge='yes'] {
  ::road_outline{ line-width:2.5; line-color:@color_road_outline; line-opacity: 1.0; }
  ::road_inline{ line-width:2.5; line-color:@color_road_inline; line-opacity: 1.0; }
  }

#z10-roads[kind='major_road'],
#z10-roads[kind='major_road'][is_link='yes'],
#z10-roads[kind='major_road'][is_bridge='yes'],
#z10-roads[kind='major_road'][is_link='yes'][is_bridge='yes'] {
	::road_outline{ line-width:1.5; line-color:@color_road_outline; line-opacity: 1.0; }
	::road_inline{ line-width:1.5; line-color:@color_road_inline; line-opacity: 1.0; }
  }
  
#z10-roads[kind='minor_road'],
#z10-roads[kind='minor_road'][is_bridge='yes'] {
  	::road_outline{ line-width:0.25; line-color:@color_road_outline; line-opacity: 1.0; }
  	::road_inline{ line-width:0.25; line-color:@color_road_inline; line-opacity: 1.0; }
  }

}
