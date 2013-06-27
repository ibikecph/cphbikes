/* TODO check if these are used */

@ncn: hsl( 0, 100%, 70% );
@rcn: hsl( 35, 100%, 80% );
@lcn: hsl( 83, 100%, 40% );

@route_width: 2;

.bikeroute
{
/*
  ::ncn[ncn='yes'][zoom>=7]   // national cycle networks
  {
    line-join: round;
    line-cap: round;
    line-color: @ncn;
    line-width: @route_width;
    [zoom>=10] { line-color: mix( @ncn, @minor, 40% ); }
  }
*/
  ::rcn[rcn='yes'][zoom>=10]    // regional cycle networks
  {
    line-join: round;
    line-cap: round;
    line-color: @rcn;
    line-width: @route_width;
    [zoom>=13] { line-color: mix( @rcn, @minor, 50% ); }
  }

  ::lcn[lcn='yes'][zoom>=13]    // local cycle networks
  {
    line-join: round;
    line-cap: round;
    line-color: @lcn;
    line-width: @route_width;
  }

}
