.buildings[railway='station'],
.buildings[shop='mall'],
.buildings[amenity='theatre'],
.buildings[amenity='university'],
.buildings[amenity='hospital'],
.buildings[amenity='public_building'],
{
  [zoom>=13]
  {
    polygon-fill: #cfcfcf;
  }
}

.buildings[amenity='place_of_worship'],
.buildings[amenity='townhall'],
.buildings[amenity='library'],
{
  [zoom>=14]
  {
    polygon-fill: #cfcfcf;
  }
}

.buildings[building='yes']
{
  [zoom>=16]
  {
    polygon-fill: #d2d3d3;
  }
}
