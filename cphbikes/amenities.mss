/* POIs */  

.node[barrier='cycle_barrier']
{
  [zoom>=15]
  { point-file: url("images/barrier_xs.png"); }
  [zoom>=16]
  { point-file: url("images/barrier_med.png"); }
  [zoom>=17]
  { point-file: url("images/barrier_large.png"); }
}

.node[shop='bicycle']
{
  [zoom>=16]
  { point-file: url("images/bike_shop_green_med.png"); }
}

.node['service:bicycle:retail'='yes'],
.node['service:bicycle:repair'='yes'],
.node['service:bicycle:rental'='yes'],
.node['service:bicycle:pump'='yes'],
.node['service:bicycle:diy'='yes'],
.node['service:bicycle:cleaning'='yes'],
.node['service:bicycle:second_hand'='yes'],
{
  [zoom>=16]
  { point-file: url("images/service_station20px.png"); }
}


.node[amenity='compressed_air']
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

.node[highway='traffic_signals']
{
  [zoom>=15]
  { point-file: url("images/traffic_signals_small.png"); }
  [zoom>=16]
  { point-file: url("images/traffic_signals_small2.png"); }
  [zoom>=17]
  { point-file: url("images/traffic_signals.png"); }
}

.node[amenity='cafe']
{
  [zoom>=16]
  { point-file: url("images/cafe_small.png"); }

  [zoom>=17]
  {
    point-allow-overlap: false;
    point-ignore-placement: true;
    point-placement: interior;
    text-name: '[name]';
    text-face-name: 'Arial Regular';
    text-size: 9;
    text-max-char-angle-delta: 30;
    text-fill: #000;
    text-halo-radius: 2;
    text-halo-fill: @land;
    text-spacing: 100;
    text-min-distance: 10;
    text-allow-overlap: false;
    text-wrap-width: 30;
    text-dx: 0;
    text-dy: 8;
  }
  [zoom>=17]
  {
    text-name: '[name]';
    text-face-name: 'Arial Regular';
    text-size: 10;
  }
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


