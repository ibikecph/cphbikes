@road_outline: #e2e2e2;
@road_inline: #fff;
@bike_outline: #e2e2e2;
@bike_inline: #009734;
 
 [zoom=14] {
  #z14-roads[kind='highway'],
  #z14-roads[kind='highway'][is_bridge='yes'],
  #z14-roads[kind='highway'][is_link='yes'],
  #z14-roads[kind='highway'][is_link='yes'][is_bridge='yes'] {
  ::outline{ line-width:6; line-color:#fff; line-opacity: 1.0; }
  ::inline{ line-width:3.5; line-color:@road_inline; line-opacity: 1.0; }
  }

  #z14-roads[kind='major_road'],
  #z14-roads[kind='major_road'][is_link='yes'],
  #z14-roads[kind='major_road'][is_bridge='yes'],
  #z14-roads[kind='major_road'][is_link='yes'][is_bridge='yes'] {
	::outline{ line-width:4; line-color:@road_outline; line-opacity: 1.0; }
	::inline{ line-width:2.25; line-color:@road_inline; line-opacity: 1.0; }
  }

  #z14-roads[kind='minor_road'],
  #z14-roads[kind='minor_road'][is_bridge='yes'] {
  	::outline{ line-width:2; line-color:@road_outline; line-opacity: 1.0; }
  	::inline{ line-width:1.125; line-color:@road_inline; line-opacity: 1.0; }
  }

  #z14-roads[kind='rail'] {
  	::outline{ line-width:0.3; line-color:@road_inline; line-opacity: 1.0; }
  	::inline{ line-width:2.5; line-color:@road_inline; line-dasharray: 0.5, 5; line-opacity: 0.5; }
  }
  
  #copenhagen_line[highway='path'] {
  	::inline{ line-width:0.5; line-color:@road_inline; }
  }
  
  #copenhagen_line[zoom=14][route='bicycle'][ncn='yes'] {
  line-width:1.5; line-opacity:2; line-color:#dc5675;
}

  #copenhagen_line[zoom=14][route='bicycle'][rcn='yes'] {
  line-width:1.5; line-opacity:2; line-color:#dd5776;
}

  #copenhagen_line[zoom=14][route='bicycle'][lcn='yes'] {
  line-width:1.5; line-opacity:2; line-color:#009e2c;
}
  
  #copenhagen_line[highway='cycleway'],
  #copenhagen_line[bicycle='yes'],
  #copenhagen_line[bicycle='designated'],
  #copenhagen_line[bicycle='ok'],
  #copenhagen_line[route='bicycle'] {
	::bike_outline {
		line-width:3; 
		line-color:#fff;
	}
  	::bike_inline {
		line-width:0.5;
		line-color:#7cce28;
	}
  }
  
  #copenhagen_line[aeroway='runway'] {
 	::inline{ line-width:4; line-color:@road_inline; line-opacity: 1.0; }
  }
  
  #copenhagen_line[aeroway='taxiway'] {
 	::inline{ line-width:2; line-color:@road_inline; line-opacity: 1.0; }
  }
  
  .area[aeroway='aerodrome'] {
    polygon-fill: #ededed; polygon-opacity: 0.2;
  }
  
  /*
  .area[building='yes'],
  .area[building!='undefined'] {
  polygon-fill: #ededed;
  }
  */
  
  .area[building='yes'][railway='station'],
  .area[building='yes'][shop='mall'],
  .area[building='yes'][amenity='theatre'] {
  polygon-fill: #ff0000;
  }



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
