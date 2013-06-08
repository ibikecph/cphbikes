@building: darken( @land, 10% );

.buildings[building='yes']
{
  [zoom>=16]
  {
    polygon-fill: mix( @land, @building, 40% );
  }

  [zoom>=17]
  {
    polygon-fill: mix( @land, @building, 20% );
  }

  [zoom>=18]
  {
      polygon-fill: mix( @land, @building, 0% );
  }
}

.buildings[amenity='place_of_worship'],
.buildings[amenity='townhall'],
.buildings[amenity='library'],
{
  [zoom>=14]
  {
    polygon-fill: darken( @building, 10% );
  }
}

.buildings[railway='station'],
.buildings[shop='mall'],
.buildings[amenity='theatre'],
.buildings[amenity='university'],
.buildings[amenity='hospital'],
.buildings[amenity='public_building'],
{
  [zoom>=13]
  {
    polygon-fill: darken( @building, 20% );
  }
}