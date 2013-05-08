@road_outline: #fff;
@road_inline: #acacac;
@bike_outline: #fff;
@bike_inline: #009734;
 
 [zoom=14] {
  #z14-roads[kind='highway'],
  #z14-roads[kind='highway'][is_bridge='yes'],
  #z14-roads[kind='highway'][is_link='yes'],
  #z14-roads[kind='highway'][is_link='yes'][is_bridge='yes'] {
  ::outline{ line-width:6; line-color:#fff; line-opacity: 1.0; }
  ::inline{ line-width:3.25; line-color:#b4b4b4; line-opacity: 1.0; }
  }

  #z14-roads[kind='major_road'],
  #z14-roads[kind='major_road'][is_link='yes'],
  #z14-roads[kind='major_road'][is_bridge='yes'],
  #z14-roads[kind='major_road'][is_link='yes'][is_bridge='yes'] {
	::outline{ line-width:4; line-color:@road_outline; line-opacity: 1.0; }
	::inline{ line-width:2; line-color:#b4b4b4; line-opacity: 1.0; }
  }

  #z14-roads[kind='minor_road'],
  #z14-roads[kind='minor_road'][is_bridge='yes'] {
  	::outline{ line-width:2; line-color:@road_outline; line-opacity: 1.0; }
  	::inline{ line-width:0.5; line-color:@road_inline; line-opacity: 1.0; }
  }

  #z14-roads[kind='rail'] {
  	::outline{ line-width:0.3; line-color:#b4b4b4; line-opacity: 1.0; }
  	::inline{ line-width:2.5; line-color:#b4b4b4; line-dasharray: 0.5, 5; line-opacity: 0.8; }
  }
  
  #copenhagen_line[highway='path'] {
  	::inline{ line-width:0.5; line-color:#c4c4c4; }
  }
  
  #copenhagen_line[zoom=14][route='bicycle'][ncn='yes'] {
  line-width:1.25; line-opacity:1; line-color:#ff8f3b;
}

  #copenhagen_line[zoom=14][route='bicycle'][rcn='yes'] {
  line-width:1.25; line-opacity:1; line-color:#f347d1;
}

  #copenhagen_line[zoom=14][route='bicycle'][lcn='yes'] {
  line-width:1.25; line-opacity:1; line-color:#009e2c;
}
  
  #copenhagen_line[highway='cycleway'],
  #copenhagen_line[bicycle='yes'],
  #copenhagen_line[bicycle='designated'],
  #copenhagen_line[bicycle='ok'],
  #copenhagen_line[route='bicycle'] {
  	::inline{ line-width:1; line-color:#009734; line-opacity: 1.0; }
  }
  
  #copenhagen_line[aeroway='runway'] {
  	::outline{ line-width:3.5; line-color:#fff; line-opacity: 1.0; }  
 	::inline{ line-width:4; line-color:#cdcdcd; line-opacity: 1.0; }
  }
  
  #copenhagen_line[aeroway='taxiway'] {
  	::outline{ line-width:3.5; line-color:#fff; line-opacity: 1.0; }  
 	::inline{ line-width:2; line-color:#cdcdcd; line-opacity: 1.0; }
  }
  
  .area[aeroway='aerodrome'] {
    polygon-fill: #ededed; polygon-opacity: 0.3;
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
