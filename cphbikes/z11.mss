@color_road_outline: #e1e5e5;
@color_road_inline: #fff;
@bike_outline: #e1e5e5;
@bike_inline: #009734;

[zoom=11] {

#z11-roads[kind='highway'],
#z11-roads[kind='highway'][is_bridge='yes'],
#z11-roads[kind='highway'][is_link='yes'],
#z11-roads[kind='highway'][is_link='yes'][is_bridge='yes'] {
  ::road_outline{ line-width:3.5; line-color:@color_road_outline; line-opacity: 1.0; }
  ::road_inline{ line-width:3.5; line-color:@color_road_inline; line-opacity: 1.0; }
  }

#z11-roads[kind='major_road'],
#z11-roads[kind='major_road'][is_link='yes'],
#z11-roads[kind='major_road'][is_bridge='yes'],
#z11-roads[kind='major_road'][is_link='yes'][is_bridge='yes'] {
	::road_outline{ line-width:2; line-color:@color_road_outline; line-opacity: 1.0; }
	::road_inline{ line-width:2; line-color:@color_road_inline; line-opacity: 1.0; }
  }

#z11-roads[kind='minor_road'],
#z11-roads[kind='minor_road'][is_bridge='yes'] {
  	::road_outline{ line-width:0.3; line-color:@color_road_outline; line-opacity: 1.0; }
  	::road_inline{ line-width:0.3; line-color:@color_road_inline; line-opacity: 1.0; }
  }


}

