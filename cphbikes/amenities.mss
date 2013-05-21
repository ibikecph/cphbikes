/* POIs */  

.node[barrier='cycle_barrier']
{
  [zoom>=15]
  {
    point-file: url("images/barrier.png");
  }
}
  
.node[shop='bicycle']
{
  [zoom>=15]
  {
    point-file: url("images/bike_shop2.png");
  }
}
  
.node[shop='bicycle'],
.node['service:bicycle:retail'='yes'],
.node['service:bicycle:repair'='yes'],
.node['service:bicycle:rental'='yes'],
.node['service:bicycle:pump'='yes'],
.node['service:bicycle:diy'='yes'],
.node['service:bicycle:cleaning'='yes'],
.node['service:bicycle:second_hand'='yes'],
{
  [zoom>=15]
  {
    marker-width: 3;
    marker-fill: #000;
    marker-line-color: darken(#000, 10%);
  }
}
  
  
.node[amenity='compressed_air']
{
  [zoom>=15]
  {
    point-file: url("images/bike_pump.png");
    /*
    marker-width: 25;
    marker-fill: #007feb;
    marker-line-color: darken(#0017a0, 10%);
    */
  }
}
  
.node[highway='traffic_signals']
{
  [zoom>=15]
  {
    point-file: url("images/traffic_signals_small.png");
  }
}
  
.node[railway='station']
{
  [zoom>=15]
  {
    point-file: url("images/metro_12px.png");
  }
}
  
.node[amenity='cafe']
{
  [zoom>=15]
  {
    point-file: url("images/cafe_xsmall2.png");
    /*
    marker-width: 3;
    marker-fill: #0707ff;
    marker-line-color: darken(#0707ff, 10%);

    polygon-fill: #0707ff;
    */
  }
}

/*
.node[amenity='place_of_worship']
{
  [zoom>=15]
  {
    marker-width: 30;
    marker-fill: #ffe507;
    marker-line-color: darken(#ffe507, 10%);

    polygon-fill: #ffe507;
  }
}
*/
  
.place_of_worship[religion='christian']
{
  [zoom>=15]
  {
    point-file: url("images/christian.png");
  }
}
  
.place_of_worship[religion='muslim']
{
  [zoom>=15]
  {
    marker-width: 30;
    marker-fill: #f400f1;
    marker-line-color: darken(#f400f1, 10%);

    polygon-fill: #ffe507;
  }
}
  
.place_of_worship[religion='buddhist']
{
  [zoom>=15]
  {
    marker-width: 30;
    marker-fill: #ad3b59;
    marker-line-color: darken(#f400f1, 10%);

    polygon-fill: #ad3b59;
  }
}
