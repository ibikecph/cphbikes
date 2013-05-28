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
  
.node[railway='station']
{
  [zoom>=14]
  { point-file: url("images/railway_11px2.png"); }
  [zoom>=15]
  { point-file: url("images/railway_16px.png"); }
  [zoom>=16]
  { point-file: url("images/railway_16px.png"); }
}

/* Use for subway */
/*
.node[railway='station']
{
  [zoom>=14]
  { point-file: url("images/metro_small4.png"); }
  [zoom>=15]
  { point-file: url("images/metro_12px.png"); }
  [zoom>=16]
  { point-file: url("images/metro_16px.png"); }
}
*/
  
.node[amenity='cafe']
{
  [zoom>=16]
  { point-file: url("images/cafe_small.png"); }
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
 
/* commenting these out, since I don't see so many of them*/
/*  
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
*/
