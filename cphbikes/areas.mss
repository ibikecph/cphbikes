.area[leisure='golf_course']
{
  [zoom>=10]
  {
    polygon-fill: #6bf260;
  }
}
.area[leisure='playground']
{
  [zoom>=10]
  {
    polygon-fill: #e4f901;
  }
}

.area[leisure='park'],
.area[leisure='track'],
.area[leisure='common'],
.area[leisure='pitch'],
.area[natural='wood'],
.area[landuse='greenfield'],
.area[landuse='farmland'],
{
  [zoom>=8]
  {
    polygon-fill: @park;
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
    polygon-fill: #72e381;
  }
  
  [zoom>=16]
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
  [zoom>=15]
  {
    polygon-pattern-file: url("images/forest5.png");
  }
}

.area[leisure='garden']
{
  [zoom>=10]
  {
    polygon-fill:#81d400;
  }
}

.area[leisure='stadium']
{
  [zoom>=10]
  {
    polygon-fill:#cfcfcf;
  }
}

.area[surface='grass']
{
  [zoom>=10]
  {
    polygon-fill:#90ea00;
  }
}

.area[natural='beach']
{
  [zoom>=10]
  {
    polygon-fill:#eaddce;
  }
}

.area[natural='sand']
{
  [zoom>=10]
  {
    polygon-fill:#eaddce;
  }
}

.area[tourism='zoo']
{
  [zoom>=10]
  {
    polygon-fill:#90ec00;
  }
}

.area[amenity='grave_yard'],
.area[landuse='cemetery'],
{
  [zoom>=10]
  {
    polygon-fill: #7def92;
  }
}

.area[landuse='allotment'],
.area[landuse='meadow'],
{
  [zoom>=10]
  {
    polygon-fill: #93f200;
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
    polygon-fill:#f1edea;
  }
}

.area[amenity='university']
{
  [zoom>=10]
  {
    polygon-fill: #e1eff1;
  }
}

.area[railway='platform']
{
  [zoom>=17]
  {
    polygon-fill:#eff0f0;
  }
}

.area[landuse='construction']
{
  [zoom>=14]
  {
    polygon-fill:#ded0e0;
  }
}



