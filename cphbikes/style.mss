@water: #3fcdfd;
@land: #e1e5e5;
@park: #abf82d;
@road_outline: #e1e5e5;
@road_inline: #fff;
@bike_outline: #fff;
@bike_inline: #009734;

Map {
  background-color: @water;
}

.land {

  line-color: #d2d6d6;
  line-width: 0.5;
  polygon-opacity: 1;
  polygon-fill: #d2d6d6;
  
  [zoom>=11]
  {
    line-color: #d5d9d9;
    line-width: 0.5;
    polygon-opacity: 1;
    polygon-fill: #d5d9d9;
  }
  
  [zoom>=12]
  {
    line-color: #d9dddd;
    line-width: 0.5;
    polygon-opacity: 1;
    polygon-fill: #d9dddd;
  }
  
  [zoom>=13]
  {
    line-color: @land;
    line-width: 0.5;
    polygon-opacity: 1;
    polygon-fill: @land;
  }
}

@road: #fff;
@runway: #eaeded;

/* Airport features */

#aeroway
{
  line-width: 0;

  [zoom>=12]
  {
    line-color: @runway;

    [aeroway='runway']
    { line-width: 2; }
  }

  [zoom>=13]
  {
    line-color: @runway;

    [aeroway='aerodrome']
    {
      polygon-fill: #ededed;
      polygon-opacity: 0.2;
    }
    
    [aeroway='runway']
    { line-width: 4; }

    [aeroway='taxiway']
    { line-width: 1.5; }
  }

  [zoom>=14]
  {
    line-color: @runway;
    
    [aeroway='runway']
    { line-width: 10; }

    [aeroway='taxiway']
    { line-width: 2.2; }
  }
  
  [zoom>=15]
  {
    line-color: #e7ebeb;

    [aeroway='runway']
    { line-width: 15; }

    [aeroway='taxiway']
    { line-width: 4; }
  }

  [zoom>=16]
  {
    [aeroway='runway']
    { line-width: 30; }

    [aeroway='taxiway']
    { line-width: 7; }
  }

  [zoom>=17]
  {
    [aeroway='runway']
    { line-width: 55; }

    [aeroway='taxiway']
    { line-width: 15; }
  }
}
