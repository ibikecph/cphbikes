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
  line-color: @land;
  line-width: 0.5;
  polygon-opacity: 1;
  polygon-fill: @land;
}

@road: #fff;
@runway: #eaeded;

/* Airport features */

#aeroway
{
  line-width: 0;

  [zoom>=12]
  {
    line-color: #edefef;

    [aeroway='runway']
    {
      line-width: 4;
    }

    [aeroway='taxiway']
    {
      line-width: 2;
    }
  }

  [zoom>=13]
  {
    line-color: @road;

    [aeroway='aerodrome']
    {
      polygon-fill: #ededed;
      polygon-opacity: 0.2;
    }
  }

  [zoom>=15]
  {
    line-color: @runway;

    [aeroway='runway']
    {
      line-width: 14;
    }

    [aeroway='taxiway']
    {
      line-width: 4;
    }
  }

  [zoom>=16]
  {
    [aeroway='runway']
    {
      line-width: 30;
    }

    [aeroway='taxiway']
    {
      line-width: 7;
    }
  }

  [zoom>=17]
  {
    [aeroway='runway']
    {
      line-width: 50;
    }

    [aeroway='taxiway']
    {
      line-width: 15;
    }
  }
}
