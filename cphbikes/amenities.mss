/* POIs */  

.node::barrier[barrier='cycle_barrier']
{
  [zoom>=15]
  { point-file: url("images/barrier_xs.png"); }
  [zoom>=16]
  { point-file: url("images/barrier_med.png"); }
  [zoom>=17]
  { point-file: url("images/barrier_large.png"); }
}

.node::shop[shop='bicycle']
{
  [zoom>=16]
  { point-file: url("images/bike_shop_green_med.png"); }
}

.node::service
{
  ['service:bicycle:retail'='yes'],
  ['service:bicycle:repair'='yes'],
  ['service:bicycle:rental'='yes'],
  ['service:bicycle:pump'='yes'],
  ['service:bicycle:diy'='yes'],
  ['service:bicycle:cleaning'='yes'],
  ['service:bicycle:second_hand'='yes'],
  {
    [zoom>=16]
    { point-file: url("images/service_station20px.png"); }
  }
}

.node::air[amenity='compressed_air']
{
  [zoom>=14]
  { point-file: url("images/bike_pump11.png"); }
  [zoom>=15]
  {
    point-file: url("images/bike_pump8.png");
    /*
    marker-width: 25;
    marker-fill: #007feb;
    marker-line-color: darken(#0017a0, 10%);
    */
  }
  [zoom>=17]
  { point-file: url("images/bike_pump13.png"); }
}

.node::signal[highway='traffic_signals']
{
  [zoom>=16]
  { point-file: url("images/traffic_signals_small2.png"); }
  [zoom>=17]
  { point-file: url("images/traffic_signals.png"); }
}


.place_of_worship[religion='christian']
{
  [zoom>=14]
  { point-file: url("images/christian_xs3.png"); }
  [zoom>=15]
  { point-file: url("images/christian.png"); }
  [zoom>=16]
  { point-file: url("images/christian_med.png"); }
}


