@building: desaturate( darken( @land, 6% ), 100% );

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


.buildings::medium[zoom>=14]
{
  [amenity='place_of_worship'],
  [amenity='townhall'],
  [amenity='library'],
  {
    polygon-fill: darken( @building, 3% );
  }
}

.buildings::large[zoom>=13]
{
  [railway='station'],
  [shop='mall'],
  [amenity='theatre'],
  [amenity='university'],
  [amenity='hospital'],
  [amenity='public_building'],
  {
    polygon-fill: darken( @building, 6% );
  }
}