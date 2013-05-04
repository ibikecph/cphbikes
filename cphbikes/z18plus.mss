[zoom>=18] {
  #z15plus-roads[kind='highway'][render='inline'] {
          line-width: 28;
  }

  #z15plus-roads[kind='highway'][render='casing'] {
          line-width: 39;
  }

  #z15plus-roads[kind='highway'][is_link='yes'][render='inline'] {
          line-width: 10;
  }

  #z15plus-roads[kind='highway'][is_link='yes'][render='casing'] {
          line-width: 19;
  }

  #z15plus-roads[kind='major_road'][render='inline'] {
          line-width: 17;
  }

  #z15plus-roads[kind='major_road'][render='casing'] {
          line-width: 25;
  }

  #z15plus-roads[kind='major_road'][is_link='yes'][render='inline'] {
          line-width: 10;
  }

  #z15plus-roads[kind='major_road'][is_link='yes'][render='casing'] {
          line-width: 19;
  }

  #z15plus-roads[kind='minor_road'][render='inline'] {
          line-width: 11;
  }

  #z15plus-roads[kind='minor_road'][render='casing'] {
          line-width: 14.5;
  }

  #z15plus-roads[kind='rail'][render='inline'] {
          line-width: 2;
  }

  #z15plus-roads[kind='rail'][render='casing'] {
          line-width: 7;
          line-dasharray: 2,6;
          line-cap: butt;
  }

  #z15plus-roads[kind='path'][render='inline'] {
          line-width: 2; 
          line-dasharray: 4,6;
          line-cap: butt;
  }
}
