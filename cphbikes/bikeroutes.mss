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
      line-color: #d0b6ff;
    }
 
    [rcn='yes'] /* regional cycle networks */
    {
      line-color: #5bd3bd;
    }

    [lcn='yes'] /* local cycle networks */
    {
      line-color: #50d37b;
    }
  }

  [zoom>=13]
  {
    line-width: 1.5;
  }
  
  [zoom>=14]
  {
    line-width: 1.75;
    
    [ncn='yes'] /* national cycle networks */
    {
      line-color: #ab83ed;
    }
 
    [rcn='yes'] /* regional cycle networks */
    {
      line-color: #42a3f0;
    }

    [lcn='yes'] /* local cycle networks */
    {
      line-color: #3ace6b;
    }
  }

  [zoom>=15]
  {
    line-width: 2.25;
    
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
  }

  [zoom>=16]
  {
    line-width: 3.25;
  }

  [zoom>=17]
  {
    line-width: 5;
  }
}
