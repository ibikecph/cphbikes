 [zoom=14] {
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

  #z14-roads[kind='major_road'][is_link='yes'][render='inline'] {
    line-width: 2;
  }

  #z14-roads[kind='major_road'][is_link='yes'][render='outline'],
  #z14-roads[kind='major_road'][is_link='yes'][is_bridge='yes'][render='casing'] {
    line-width: 5;
  }

  #z14-roads[kind='minor_road'][render='inline'] {
    line-width: 2.5;
  }

  #z14-roads[kind='minor_road'][render='outline'],
  #z14-roads[kind='minor_road'][is_bridge='yes'][render='casing'] {
    line-width: 3.5;
  }

  #z14-roads[kind='rail'][render='inline'] {
    line-width: 1;
  }

  #z14-roads[kind='rail'][render='casing'] {
    line-width: 3;
    line-dasharray: 1,3;
    line-cap: butt;
  }
}
