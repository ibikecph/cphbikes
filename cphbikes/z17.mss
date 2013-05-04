[zoom=17] {
  #z15plus-roads[kind='highway'][render='inline'] {
      line-width: 15;
  }

  #z15plus-roads[kind='highway'][render='casing'] {
    line-width: 24;
  }

  #z15plus-roads[kind='highway'][is_link='yes'][render='inline'] {
    line-width: 7;
  }

  #z15plus-roads[kind='highway'][is_link='yes'][render='casing'] {
    line-width: 14;
  }

  #z15plus-roads[kind='major_road'][render='inline'] {
    line-width: 14;
  }

  #z15plus-roads[kind='major_road'][render='casing'] {
    line-width: 20;
  }

  #z15plus-roads[kind='major_road'][is_link='yes'][render='inline'] {
    line-width: 7;
  }

  #z15plus-roads[kind='major_road'][is_link='yes'][render='casing'] {
    line-width: 14;
  }

  #z15plus-roads[kind='minor_road'][render='inline'] {
    line-width: 8;
  }

  #z15plus-roads[kind='minor_road'][render='casing'] {
    line-width: 11.5;
  }

  #z15plus-roads[highway='service'][render='inline'] {
    line-width: 5;
  }

  #z15plus-roads[highway='service'][render='casing'] {
    line-width: 8;
  }

  #z15plus-roads[kind='rail'][render='inline'] {
    line-width: 1;
  }

  #z15plus-roads[kind='rail'][render='casing'] {
    line-width: 5;
    line-dasharray: 1,4;
    line-cap: butt;
  }

  #z15plus-roads[kind='path'][render='inline'] {
    line-width: 2; 
    line-dasharray: 4,6;
    line-cap: butt;
  }
}
