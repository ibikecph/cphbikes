/* TODO check if these are used */
@color_road_outline: #e1e5e5;
@color_road_inline: #fff;
@bike_outline: #e1e5e5;
@bike_inline: #009734;

.bikeroute
{
  line-color: #fff;
  line-width: 0;
  
  [zoom=8]
  {
    line-width: 0.1;
  }

  [zoom=9]
  {
    line-width: 0.15;
  }
  
  [zoom=10]
  {
    line-width: 0.35;
  }

  [zoom>=11]
  {
    line-width: 0.8;
  }

  [zoom>=12]
  {
    line-width: 1;
    
    [ncn='yes'] /* national cycle networks */
    {
      /*line-color: #9463e4;*/
      line-color: #d0b6ff;
    }
 
    [rcn='yes'] /* regional cycle networks */
    {
      /*line-color: #0083e9;*/
      line-color: #5bd3bd;
    }

    [lcn='yes'] /* local cycle networks */
    {
      /*line-color: #00bf3f;*/
      line-color: #50d37b;
    }
  }

  [zoom>=13]
  {
    line-width: 1.5;
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
