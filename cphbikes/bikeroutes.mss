/* TODO check if these are used */

/*
@ncn: hsl( 0, 100%, 50% );
@rcn: hsl( 30, 100%, 50% );
@lcn: hsl( 110, 100%, 40% );

@route_width: 0.3;

.bikeroute
{
  line-width: 0;
  line-opacity: 0.5;
  line-cap: round;
  line-join: round;
  
  [zoom>=1] { line-width: 1*@route_width; }
  [zoom>=2] { line-width: 2*@route_width; }
  [zoom>=3] { line-width: 3*@route_width; }
  [zoom>=4] { line-width: 4*@route_width; }
  [zoom>=5] { line-width: 5*@route_width; }
  [zoom>=6] { line-width: 6*@route_width; }
  [zoom>=7] { line-width: 7*@route_width; }
  [zoom>=8] { line-width: 8*@route_width; }
  [zoom>=9] { line-width: 9*@route_width; }
  [zoom>=10] { line-width: 10*@route_width; }
  [zoom>=11] { line-width: 11*@route_width; }
  [zoom>=12] { line-width: 12*@route_width; }
  [zoom>=13] { line-width: 13*@route_width; }
  [zoom>=14] { line-width: 14*@route_width; }
  [zoom>=15] { line-width: 15*@route_width; }
  [zoom>=16] { line-width: 16*@route_width; }
  [zoom>=17] { line-width: 17*@route_width; }
  [zoom>=18] { line-width: 18*@route_width; }

  [ncn='yes'] // national cycle networks 
  {
    line-color: @ncn;
    [zoom>=14]
    {
      line-width: 0;
    }
  }

  [rcn='yes'] // regional cycle networks
  {
    line-color: @rcn;
    [zoom<=10]
    {
      line-width: 0;
    }
    [zoom>=16]
    {
      line-width: 0;
    }
  }

  [lcn='yes'] // local cycle networks
  {
    line-color: @lcn;
    [zoom<=12]
    {
      line-width: 0;
    }
  }
}
*/