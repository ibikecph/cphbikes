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
    polygon-fill: #ddf100;
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
  [zoom>=10]
  {
    polygon-fill: @park;
  }
}
/* TODO
.area[leisure='recreation_ground'] { polygon-pattern-file: url("images/wetland2.png"); }
.area[landuse='forest'] { polygon-pattern-file: url("images/forest2.png"); }
.area[natural='wetland'] { polygon-pattern-file: url("images/wetland_blue.png"); }
.area[natural='scrub'] { polygon-pattern-file: url("images/scrub.png"); }
*/
.area[leisure='recreation_ground'],
.area[landuse='forest'],
.area[natural='wetland'],
.area[natural='scrub'],
{
  [zoom>=10]
  {
    polygon-fill: @park;
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
    polygon-fill:#eceeee;
  }
}

.area[amenity='university']
{
  [zoom>=10]
  {
    polygon-fill: #e9ead5;
  }
}
