@water: hsl( 195, 97%, 62% );
@land: hsl( 180, 0%, 80% );
@park: hsl( 83, 94%, 57% );
@sand: hsl( 50, 80%, 80% );
@road: white;
@runway: hsl( 180, 8%, 92% );

Map {
  background-color: @water;
}

.land {
  line-color: @land;
  line-width: 0.5;
  polygon-opacity: 1;
  polygon-fill: @land;
}

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
      polygon-fill: hsl( 0, 0%, 93% );
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
    line-color: hsl( 180, 9%, 91%) ;

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
