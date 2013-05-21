/* TODO check if these are used */
@color_road_outline: #e1e5e5;
@color_road_inline: #fff;
@bike_outline: #e1e5e5;
@bike_inline: #009734;

.bikeroute
{
  [ncn='yes'] /* national cycle networks */
  {
    line-color: #fec509;
  }

  [rcn='yes'] /* regional cycle networks */
  {
    line-color: #fb9e24;
  }

  [lcn='yes'] /* local cycle networks */
  {
    line-color: #48ae02;
  }

  [zoom>=10]
  {
    line-width: 0.5;
  }

  [zoom>=11]
  {
    line-width: 0.85;
  }

  [zoom>=12]
  {
    line-width: 1;
  }

  [zoom>=13]
  {
    line-width: 1.5;
  }

  [zoom>=15]
  {
    line-width: 2;
  }

  [zoom>=16]
  {
    line-width: 3.5;
  }

  [zoom>=17]
  {
    line-width: 7;
  }
}
