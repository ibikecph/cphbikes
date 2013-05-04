[zoom=15] {
  #z15plus-roads {
    line-smooth: 1.0;
  }

  #z15plus-roads[kind='highway'][render='inline'] {
    line-width: 6;
  }

  #z15plus-roads[kind='highway'][render='casing'] {
    line-width: 11;
  }

  #z15plus-roads[kind='highway'][is_link='yes'][render='inline'] {
    line-width: 3;	
  }

  #z15plus-roads[kind='highway'][is_link='yes'][render='casing'] {
    line-width: 6.5;
  }

  #z15plus-roads[kind='major_road'][render='inline'] {
    line-width: 5;
  }

  #z15plus-roads[kind='major_road'][render='casing'] {
    line-width: 8;
  }

  #z15plus-roads[kind='major_road'][is_link='yes'][render='inline'] {
    line-width: 2.5;
  }

  #z15plus-roads[kind='major_road'][is_link='yes'][render='casing'] {
    line-width: 5.5;
  }

  #z15plus-roads[kind='minor_road'][render='inline'] {
    line-width: 4;
  }

  #z15plus-roads[kind='minor_road'][render='casing'] {
    line-width: 6;
  }

  #z15plus-roads[highway='service'][render='inline'] {
    line-width: 2.5;
  }

  #z15plus-roads[highway='service'][render='casing'] {
    line-width: 3.5;
  }

  #z15plus-roads[kind='rail'][render='inline'] {
    line-width: 1;
  }

  #z15plus-roads[kind='rail'][render='casing'] {
    line-width: 3;
    line-dasharray: 1,3;
    line-cap: butt;
  }

  #z15plus-roads[kind='path'][render='inline'] {
    line-width: 1; 
    line-dasharray: 2,3;
    line-cap: butt;
  }
}
