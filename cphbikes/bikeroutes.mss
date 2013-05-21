/* TODO check if these are used */
@color_road_outline: #e1e5e5;
@color_road_inline: #fff;
@bike_outline: #e1e5e5;
@bike_inline: #009734;

.bikeroute
{
  [ncn='yes'] /* national cycle networks */
  {
    line-color: #9463e4;
  }

  [rcn='yes'] /* regional cycle networks */
  {
    line-color: #0083e9;
  }

  [lcn='yes'] /* local cycle networks */
  {
    line-color: #00bf3f;
  }

  [zoom>=10]
  {
    line-width: 0.5;
  }

  [zoom>=11]
  {
    line-width: 0.8;
  }

  [zoom>=12]
  {
    line-width: 1.1;
  }

  [zoom>=13]
  {
    line-width: 2;
  }
  
  [zoom>=14]
  {
    line-width: 2.5;
  }

  [zoom>=15]
  {
    line-width: 2.75;
  }

  [zoom>=16]
  {
    line-width: 3.8;
  }

  [zoom>=17]
  {
    line-width: 7;
  }
}
