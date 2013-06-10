@playground: hsl( 50, 100%, 50% );

.area[leisure='golf_course']
{
  [zoom>=10]
  {
    polygon-fill: spin( @park, -10 );
  }
}
.area[leisure='playground']
{
  [zoom>=10]
  {
    polygon-fill: @playground;
  }
}

.area[leisure='park'],
.area[leisure='track'],
.area[leisure='common'],
.area[leisure='pitch'],
.area[natural='wood'],
.area[landuse='greenfield'],
{
  [zoom>=8]
  {
    polygon-fill: @park;
  }
}

.area[landuse='farmland'],
{
  [zoom>=8]
  {
    polygon-fill: @farmland;
  }
}

.area[leisure='recreation_ground'],
.area[natural='scrub']
{
  [zoom>=10]
  {
    polygon-fill: @park;
  }
}


.area[natural='wetland']
{
  [zoom>=10]
  {
    polygon-fill: hsl( 129, 78%, 70% );
  }
  
  [zoom>=14]
  {
    polygon-pattern-file: url("images/wetland.png");
  }
}

.area[landuse='forest']
{
  [zoom>=10]
  {
    polygon-fill: @park;
  }
  [zoom>=14]
  {
    polygon-pattern-file: url("images/forest5.png");
  }
}

.area[leisure='garden']
{
  [zoom>=10]
  {
    polygon-fill: lighten( @park, 10 );
  }
}

.area[leisure='stadium']
{
  [zoom>=10]
  {
    polygon-fill: darken( @park, 15 );
  }
}

.area[surface='grass']
{
  [zoom>=10]
  {
    polygon-fill: spin( @park, -5 );
  }
}

.area[natural='beach']
{
  [zoom>=10]
  {
    polygon-fill: @sand;
  }
}

.area[natural='sand']
{
  [zoom>=10]
  {
    polygon-fill: @sand;
  }
}

.area[tourism='zoo']
{
  [zoom>=10]
  {
    polygon-fill: hsl( 50, 70%, 50% );
  }
}

.area[amenity='grave_yard'],
.area[landuse='cemetery'],
{
  [zoom>=10]
  {
    polygon-fill: darken( @park, 10% );
  }
}

.area[landuse='allotment'],
.area[landuse='meadow'],
{
  [zoom>=10]
  {
    polygon-fill: darken( @park, 5);
  }
}

.area[natural='water'],
.area[landuse='reservoir'],
.area[waterway!='undefined'] {
  [zoom>=10]
  {
    polygon-fill: @water;
  }
}

.area[highway='pedestrian']
{
  [zoom>=10]
  {
    polygon-fill: @pedestrian;
  }
}

.area[amenity='university']
{
  [zoom>=10]
  {
    polygon-fill: hsl( 188, 36%, 91% );
  }
}

.area[railway='platform']
{
  [zoom>=17]
  {
    polygon-fill: hsl( 180, 3%, 94% );
  }
}

.area[landuse='construction']
{
  [zoom>=14]
  {
    polygon-fill: hsl( 293, 21%, 85% );
  }
}



