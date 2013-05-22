@bike_path: #f0f;
@bike_friendly: #00c34e;
/* @bike_path: #b1b3b3; */

.line[highway='cycleway']
{
  [zoom>=13]
  {
    line-width: 0.5;
    line-color: @bike_friendly; line-dasharray: 4, 1;
  }
  [zoom>=14]
  {
    line-width: 1.25;
    line-color: @bike_friendly; line-dasharray: 4, 1;
  }

  [zoom>=15]
  {
    line-width: 1.75; line-dasharray: 5, 2;
  }

  [zoom>=16]
  {
    line-width: 2; line-dasharray: 7, 3;
  }
}

.line[cycleway='lane'],
.line[cycleway='opposite_lane'],
.line[cycleway='shared_lane'],
.line[cycleway='track'],
.line[cycleway='opposite_track'],
{
  line-color: @bike_friendly;

  [zoom>=10][zoom<16]
  {
    line-dasharray: 4, 1;
  }

  [zoom>10]
  {
    line-width: 1;
  }

  [zoom>12]
  {
    line-width: 2;
  }

  [zoom>=14]
  {
    line-width: 4;
  }

  [zoom>=16]
  {
    ::outline
    {
      line-color: @bike_friendly;
      line-dasharray: 4, 1;
      line-width: 8;
    }

    /* TODO should be unnecessary, but something is overriding line-width (?)
     */
    ::interior
    {
      line-color: #fff;
      line-width: 4;
    }
  }
}

/* One-way for cars, effectively one-way for bikes */
.line[highway!='motorway'][highway!='motorway_link'][oneway='yes'],
.line[highway!='motorway'][highway!='motorway_link'][oneway='-1'],
{
  [zoom>=16]
  {
    ::overlay
    {
      line-pattern-file: url("images/forest.png");
    }
  }
}

/* Explicitly one-way for bikes */
.line['oneway:bicycle'='yes'],
.line['oneway:bicycle'='-1'],
{
  [zoom>=16]
  {
    ::overlay
    {
      line-pattern-file: url("images/forest.png");
    }
  }
}

/** Default styles for all roads */
.roads
{
  ::outline
  {
    line-width: 0;
    line-color: @color_road_outline;
  }

  line-width: 0;
  line-color: @color_road_inline;
}

/*
.roads[cycleway='lane'],
.roads[cycleway='opposite_lane'],
.roads[cycleway='shared_lane'],
.roads[cycleway='track'],
.roads[cycleway='opposite_track'],
{
  ::outline
  {
    line-color: #fff;
  }

  line-color: @bike_path;
}
*/

.roads[kind='highway']
{
  /*
  [cycleway='lane'],
  [cycleway='opposite_lane'],
  [cycleway='shared_lane'],
  [cycleway='track'],
  [cycleway='opposite_track'],
  {
    line-color: @bike_friendly;
    line-dasharray: 4, 1;
  }
  */

  [zoom>=10]
  {
    ::outline
    {
      line-width: 2.5;
    }

    line-width: 2.5;
  }

  [zoom>=11]
  {
    ::outline { line-width: 3.5; }
    line-width: 3.5; line-color: #eef0f0;

    /*
    [cycleway='lane'],
    [cycleway='opposite_lane'],
    [cycleway='shared_lane'],
    [cycleway='track'],
    [cycleway='opposite_track'],
    {
      line-color: @bike_friendly;
    }
    */
  }

  [zoom>=12]
  {
    ::outline { line-width: 4.5; }
	line-width: 4; line-color: #cbd6d6;

    /*
    [cycleway='lane'],
    [cycleway='opposite_lane'],
    [cycleway='shared_lane'],
    [cycleway='track'],
    [cycleway='opposite_track'],
    {
      line-color: @bike_friendly;
    }
    */
  }

  [zoom>=13]
  {
    ::outline { line-width: 6; }
	 line-width: 4; line-color: #cddada;
	 
	 [is_link='yes']
    {
      ::outline { line-width: 4.5; }
	  line-width: 1.75;
    }
  }

  [zoom>=14]
  {
    ::outline { line-width: 12; }
	line-width: 5;

    [is_tunnel='yes']
    {
      ::outline { line-color: #e1e5e5; line-opacity: 0.4; }
	  line-color: #e1e5e5; line-opacity: 0.4;
    }
    [is_link='yes']
    {
      ::outline { line-width: 5; }
	  line-width: 2.5;
    }
  }

  [zoom>=15]
  {
    ::outline { line-width: 15; }
	line-width: 7;

    [is_tunnel='yes']
    {
      ::outline { line-width: 12; }
	  line-width: 6;
    }
    [is_link='yes']
    {
      ::outline { line-width: 6; }
	  line-width: 3;
    }
  }

  [zoom>=16]
  {
    ::outline { line-width: 17; }
	line-width: 10.5;
	
	[is_link='yes']
    {
      ::outline { line-width: 6; }
	  line-width: 3;
    }
  }

  [zoom>=17]
  {
    ::outline { line-width: 28; }
	line-width: 15;
	
	[is_link='yes']
    {
      ::outline { line-width: 10; }
	  line-width: 5;
    }
  }
}

.roads[kind='major_road']
{
  /*
  [cycleway='lane'],
  [cycleway='opposite_lane'],
  [cycleway='shared_lane'],
  [cycleway='track'],
  [cycleway='opposite_track'],
  {
    line-color: @bike_friendly;

    [zoom>=10][zoom<16]
    {
      line-dasharray: 4, 1;
    }
  }
  */

  [zoom>=10]
  {
    ::outline
    {
      line-width: 1.5;
    }

    line-width: 1.5;
  }

  [zoom>=11]
  {
    ::outline { line-width: 2; }
    line-width: 2; line-color: #eef0f0;

    /*
    [cycleway='lane'],
    [cycleway='opposite_lane'],
    [cycleway='shared_lane'],
    [cycleway='track'],
    [cycleway='opposite_track'],
    {
      line-color: @bike_friendly;
      line-width: 1;
    }
    */
  }

  [zoom>=12]
  {
    ::outline { line-width: 3.2; }
    line-color: #fff;
  }

  [zoom>=13]
  {
    ::outline { line-width: 4; }
  }

  [zoom>=14]
  {
    ::outline { line-width: 8; }
	line-width: 3;
  }

  [zoom>=15]
  {
    ::outline { line-width: 12; }
	line-width: 6;
  }

  [zoom>=16]
  {
    ::outline { line-width: 14; }
    line-width: 8.5;

    /*
    [cycleway='lane'],
    [cycleway='opposite_lane'],
    [cycleway='shared_lane'],
    [cycleway='track'],
    [cycleway='opposite_track'],
    {
      ::outline
      {
	line-dasharray: 4, 1;
	line-color: @bike_friendly;
      }

      line-color: #fff;
    }
    */
  }

  [zoom>=17]
  {
    ::outline { line-width: 23; }
    line-width: 12;
  }
}

.roads[kind='rail']
{
  
  ::outline
  { line-width: 0; line-color: @color_road_inline; }
  line-width: 0;

  [zoom>=14]
  {
    ::outline
    { line-width: 0.25; }
    line-width: 4.5;
    line-color: @color_road_inline;
    line-dasharray: 0.5, 5;
  }

  [zoom>=15]
  {
    ::outline
    { line-width: 0.5; }
    line-width: 5;
    line-dasharray: 0.75, 5;
  }

  [zoom>=16]
  {
    ::outline
    { line-width: 0.75; }
 	line-width: 7;
  }

  [zoom>=17]
  {
    ::outline
    { line-width: 1.5; }
	line-width: 7.5;
    line-dasharray: 1, 5.5;
  }
}

.roads[kind='minor_road']
{
  ::outline
  {
    line-color: @color_road_outline;
  }

  line-color: @color_road_inline;

  /*
  [cycleway='lane'],
  [cycleway='opposite_lane'],
  [cycleway='shared_lane'],
  [cycleway='track'],
  [cycleway='opposite_track'],
  {
    line-color: @bike_friendly;
    line-dasharray: 4, 1;
  }
  */

  [zoom>=10]
  {
    ::outline
    {
      line-width: 0.25;
    }

    line-width: 0.25;
  }

  [zoom>=11]
  {
    ::outline { line-width: 0.3; }
    line-width: 0.3;
  }

  [zoom>=13]
  {
    ::outline { line-width: 0.5; }
	line-width: 0.5;
  }

  [zoom>=14]
  {
    ::outline { line-width: 2.5; }
	line-width: 1;

    [access='private'],
    [access='restricted'],
    {
      ::outline { line-width: 1; line-color: #fff; }
      line-width: 1;
      line-color: #e58dad;
      line-dasharray: 3, 1;
    }
  }

  [zoom>=15]
  {
    ::outline { line-width: 3.5; }
	line-width: 2.25;
	
	[access='private'],
    [access='restricted'],
    {
      ::outline { line-width: 2.25; line-color: #fff; }
      line-width: 2.25;
      line-color: #d78ba7;
      line-dasharray: 3, 2;
    }
  }

  [zoom>=16]
  {
    ::outline { line-width: 6; }
	line-width: 5;
	
	[access='private'],
    [access='restricted'],
    {
      ::outline { line-width: 3.5; line-color: #fff; }
      line-width: 3.5;
      line-color: #e996b5;
      line-dasharray: 5, 2;
    }
  }

  [zoom>=17]
  {
    ::outline { line-width: 10; }
	line-width: 7;
	
	[access='private'],
    [access='restricted'],
    {
      ::outline { line-width: 7; line-color: #fff; }
      line-width: 7;
      line-color: #efbacd;
      line-dasharray: 10, 3;
    }
  }
}

.roads[surface='cobblestone']
{	
    [zoom>=14]
    {
      ::outline { line-color: #b5b5b5; line-width: 1; }
      line-width: 1; line-color: #fff; line-dasharray: 1, 3;
    }

    [zoom>=15]
    {
      ::outline { line-color: #b5b4b4; line-width: 2; }
      line-width: 2; line-color: #fff; line-dasharray: 2, 3;
    }
    
    [zoom>=16]
    {
      line-pattern-file: url("images/cobblestone5.png");
    }

    [zoom>=17]
    {
      line-pattern-file: url("images/cobblestone4.png");
    }
}


/** Paths **/

.roads[highway='path'],
.roads[highway='footway'],
.roads[highway='pedestrian'],
{

  line-color: @color_road_inline;
  line-width: 0;

  [zoom>=13]
  {
    line-dasharray: 4, 1;
    line-width: 0.4;

	  [bicycle='no']
	  {
	    line-color: #fd4571;
	    line-dasharray: 0.5, 1;
      }
  }

  [zoom>=14]
  {
    line-dasharray: 3, 1.5;
    line-width: 1;

    [bicycle='no']
    { line-dasharray: 1.5, 1.5; line-width: 0.6; }
  }

  [zoom>=15]
  {
    line-dasharray: 4, 2;
    line-width: 1.35;
    
    [bicycle='no'] 
    { line-dasharray: 3, 2; line-width: 1; }
  }

  [zoom>=16]
  {
    line-width: 1.4;
    line-dasharray: 6, 2;

    [bicycle='no']
    { line-width: 1.2; line-dasharray: 4, 3; }
  }

  [zoom>=17]
  {
    line-width: 1.7;
    line-dasharray: 6, 3;

    [bicycle='no']
    { line-width: 1.5; line-dasharray: 4, 3; }
  }
}

/** Push your bike **/

.roads[bicycle='dismount']
{
  [zoom>=14]
  {
    ::outline
    {
      line-color: #fff;
      line-width: 1;
    }

    line-color: #f4b201;
    line-width: 1;
    line-dasharray: 3.5, 1.5;
  }

  [zoom>=15]
  {
    ::outline
    {
      line-width: 2;
    }

    line-color: #ffba00;
    line-width: 2;
  }

  [zoom>=16]
  {
    ::outline
    {
      line-width: 2.25;
    }

    line-color: #ffc000;
    line-width: 2.25;
    line-dasharray: 6, 2.5;
  }
}

/** Steps **/

/* TODO what about standalone steps? */

.line[highway='steps']
{
  [zoom>=14]
  { line-width: 2.5; line-color: #fff; line-dasharray: 1, 0.75; }

  [zoom>=15]
  { line-width: 5; line-color: #fff; line-dasharray: 1, 1.5; }
  
  [zoom>=16]
  { line-width: 7; line-color: #fff; line-dasharray: 1.25, 1.5; }
  
  [zoom>=17]
  { line-width: 9; line-color: #fff; line-dasharray: 1.5, 1.9; }
}

/** Bike lanes **/
/*
.line['cycleway:left'='lane'],
.line['cycleway:right'='lane'],
.line['cycleway:left'='track'],
.line['cycleway:right'='track'],
.line['cycleway:left'='opposite_track'],
.line['cycleway:right'='opposite_track'],
*/

/* Ferries */
/* TODO layer under bridges */

.line[route='ferry']
{
  [zoom>=14]
  {
    line-width: 1.3;
    line-color: #00b0ec;
    line-dasharray: 5, 2;
  }

  [zoom>=15]
  {
    line-width: 1.75;
    line-dasharray: 6, 3;
  }

  [zoom>=16]
  {
    line-width: 2.25;
  }
}


