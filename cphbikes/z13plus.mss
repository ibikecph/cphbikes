[zoom>=13] {
  .roads[is_tunnel='yes'][render='outline'],
  .roads[is_tunnel='yes'][render='casing'] {
    line-opacity: 0.2;
  }


/*
  .roads[kind='highway'][is_link='yes'][render='inline'] {
    line-color: #fc0;
  }

  .roads[kind='highway'][is_link='yes'][render='outline'],
  .roads[kind='highway'][is_link='yes'][render='casing'] {
    line-color: #000;
  }
  
  .roads[kind='major_road'][is_link='yes'][render='inline'] {
    line-color: #fff;
  }

  .roads[kind='major_road'][is_link='yes'][render='outline'],
  .roads[kind='major_road'][is_link='yes'][render='casing'] {
    line-color: #000;
  }
  */


  .area[aeroway='taxiway'] {
    polygon-fill: #bbc;
  }
  
}
