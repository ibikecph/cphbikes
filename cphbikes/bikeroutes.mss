/* TODO check if these are used */

@ncn: hsl( 0, 100%, 50% );
@rcn: hsl( 30, 100%, 50% );
@lcn: hsl( 83, 100%, 40% );

@route_width: 0.5;

.bikeroute
{
  line-width: 0;
  line-opacity: 1;
  line-cap: round;
  line-join: round;

  /*
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
  */
  [ncn='yes'],
  [rcn='yes']
  {
    line-width: 0;
  }
  
  [lcn='yes'] // local cycle networks
  {
    line-color: @lcn;
    [zoom<=11] { line-width: @c4*@route_width; }
    [zoom>=12][zoom<=15] { line-width: @c3*@route_width; }
    [zoom=16] { line-width: @c2*@route_width; }
    [zoom>=17] { line-width: @c1*@route_width; }
  }
}
