@building: #333;

[zoom>=15] {
  .area[building!=''] {
    polygon-fill: @building;
  }

  .roads[is_tunnel='yes'][render='inline'] {
    line-opacity: 0.0;
  }
}
