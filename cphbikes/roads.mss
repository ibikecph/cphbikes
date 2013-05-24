@bike_path: #f0f;
@bike_friendly: #fbd42c;
/* @bike_path: #b1b3b3; */

.line[highway='cycleway']
{
  [zoom>=13]
  {
    line-width: 0.5;
    line-color: #fff;
  }
  [zoom>=14]
  {
    line-width: 1.25;
  }

  [zoom>=15]
  {
    line-width: 1.75;
  }

  [zoom>=16]
  {
    line-width: 2;
  }
}



/* One-way for cars, effectively one-way for bikes */
.line[oneway='yes'][highway!='motorway'][highway!='motorway_link'][cycleway!='opposite'][cycleway!='opposite_lane'][cycleway!='opposite_track'],
.line[oneway='true'][highway!='motorway'][highway!='motorway_link'][cycleway!='opposite'][cycleway!='opposite_lane'][cycleway!='opposite_track'],
.line[oneway='1'][highway!='motorway'][highway!='motorway_link'][cycleway!='opposite'][cycleway!='opposite_lane'][cycleway!='opposite_track'],

{
  [zoom>=16]
  {
    ::overlay
    {
      line-pattern-file: url("images/oneway_right.png");
    }
  }
}

.line[oneway='-1'][highway!='motorway'][highway!='motorway_link'][cycleway!='opposite'][cycleway!='opposite_lane'][cycleway!='opposite_track'],

{
  [zoom>=16]
  {
    ::overlay
    {
      line-pattern-file: url("images/oneway_left.png");
    }
  }
}

/* Explicitly one-way for bikes */
.line['oneway:bicycle'='yes'],
.line['oneway:bicycle'='true'],
.line['oneway:bicycle'='1'],

{
  [zoom>=16]
  {
    ::overlay
    {
      line-pattern-file: url("images/oneway_right.png");
    }
  }
}

.line['oneway:bicycle'='-1'],
{
  [zoom>=16]
  {
    ::overlay
    {
      line-pattern-file: url("images/oneway_left.png");
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


.roads[kind='highway']
{
  
  [cycleway='lane'],
  [cycleway='opposite_lane'],
  [cycleway='shared_lane'],
  [cycleway='track'],
  [cycleway='opposite_track'],
  {
    line-color: @bike_friendly;
    line-width:2.5;
  }
  

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
    line-width: 3.5; line-color: #f2f3f3;

    
    [cycleway='lane'],
    [cycleway='opposite_lane'],
    [cycleway='shared_lane'],
    [cycleway='track'],
    [cycleway='opposite_track'],
    {
      line-color: @bike_friendly;
    }
    
  }

  [zoom>=12]
  {
    ::outline { line-width: 4.5; }
	line-width: 4; line-color: #f2f3f3;

    
    [cycleway='lane'],
    [cycleway='opposite_lane'],
    [cycleway='shared_lane'],
    [cycleway='track'],
    [cycleway='opposite_track'],
    {
      line-color: @bike_friendly;
    }
    
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
  
  [cycleway='lane'],
  [cycleway='opposite_lane'],
  [cycleway='shared_lane'],
  [cycleway='track'],
  [cycleway='opposite_track'],
  {
    line-color: #fff;
  }
  

  [zoom>=10]
  {
    ::outline
    {
      line-width: 1.5;
    }

    line-width: 0.75;
  }

  [zoom>=11]
  {
    ::outline { line-width: 1; }
    line-width: 1;
    
  }

  [zoom>=12]
  {
    ::outline { line-width: 3.2; }
    line-color: #fff;
    
    [cycleway='lane'],
    [cycleway='opposite_lane'],
    [cycleway='shared_lane'],
    [cycleway='track'],
    [cycleway='opposite_track'],
    {
      ::outline
      {
	line-width: 3.5;
	line-color: @bike_friendly;
      }

      line-color: #fff;
      line-width: 2.7;
    }
  }

  [zoom>=13]
  {
    ::outline { line-width: 4; }
    
    [cycleway='lane'],
    [cycleway='opposite_lane'],
    [cycleway='shared_lane'],
    [cycleway='track'],
    [cycleway='opposite_track'],
    {
      ::outline
      {
	line-width: 4.5;
	line-color: @bike_friendly;
      }

      line-color: #fff;
      line-width: 2.5;
    }
  }

  [zoom>=14]
  {
    ::outline { line-width: 8; }
	line-width: 3;
	
	[cycleway='lane'],
    [cycleway='opposite_lane'],
    [cycleway='shared_lane'],
    [cycleway='track'],
    [cycleway='opposite_track'],
    {
      ::outline
      {
	line-width: 6;
	line-color: @bike_friendly;
      }

      line-color: #fff;
      line-width: 3;
    }
  }

  [zoom>=15]
  {
    ::outline { line-width: 12; }
	line-width: 6;
	
	[cycleway='lane'],
    [cycleway='opposite_lane'],
    [cycleway='shared_lane'],
    [cycleway='track'],
    [cycleway='opposite_track'],
    {
      ::outline
      {
	line-width: 12;
	line-color: @bike_friendly;
      }

      line-color: #fff;
      line-width: 6;
    }
  }

  [zoom>=16]
  {
    ::outline { line-width: 16; }
    line-width: 8.5;

    
    [cycleway='lane'],
    [cycleway='opposite_lane'],
    [cycleway='shared_lane'],
    [cycleway='track'],
    [cycleway='opposite_track'],
    {
      ::outline
      {
	line-width: 16;
	line-color: @bike_friendly;
      }

      line-color: #fff;
      line-width: 8.5;
    }
    
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
  { line-width: 0; line-color: #f0f2f2; }
  line-width: 0;

  [zoom>=14]
  {
    ::outline
    { line-width: 0.25; }
    line-width: 4.5;
    line-color: #f0f2f2;
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

  
  [cycleway='lane'],
  [cycleway='opposite_lane'],
  [cycleway='shared_lane'],
  [cycleway='track'],
  [cycleway='opposite_track'],
  {
    line-color: @bike_friendly;
  }
  

  [zoom>=10]
  {
    ::outline
    {
      line-width: 0.25;
    }

    line-width: 0.25; line-color: #fff;
  }

  [zoom>=11]
  {
    ::outline { line-width: 0.3; }
    line-width: 0.3;
    
  }
  
  [zoom>=12]
  {
    [cycleway='lane'],
    [cycleway='opposite_lane'],
    [cycleway='shared_lane'],
    [cycleway='track'],
    [cycleway='opposite_track'],
    {
      line-color: #f7ffcc;
      line-width:1.25;
    }
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
    
    [cycleway='lane'],
    [cycleway='opposite_lane'],
    [cycleway='shared_lane'],
    [cycleway='track'],
    [cycleway='opposite_track'],
    {
      ::outline
      {
	  line-width: 2.75;
	  line-color: #f0e172;
      }

      line-color: #fff;
      line-width: 1;
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

    [cycleway='lane'],
    [cycleway='opposite_lane'],
    [cycleway='shared_lane'],
    [cycleway='track'],
    [cycleway='opposite_track'],
    {
      ::outline
      {
	  line-width: 4;
	  line-color: @bike_friendly;
      }

      line-color: #fff;
      line-width: 2.25;
    }
  }

  [zoom>=16]
  {
    ::outline { line-width: 6; }
	line-width: 5;
	
	[highway='service']
	{
	  line-width: 2.5;
	}
	
	[access='private'],
    [access='restricted'],
    {
      ::outline { line-width: 3.5; line-color: #fff; }
      line-width: 3.5;
      line-color: #e996b5;
      line-dasharray: 5, 2;
      
      [highway='service']
	  {
        ::outline { line-width: 2.5; line-color: #fff; }
	    line-width: 2.5;
	  }
    }

    [cycleway='lane'],
    [cycleway='opposite_lane'],
    [cycleway='shared_lane'],
    [cycleway='track'],
    [cycleway='opposite_track'],
    {
      ::outline
      {
	  line-width: 8;
	  line-color: @bike_friendly;
      }

      line-color: #fff;
      line-width: 5;
    }
  }

  [zoom>=17]
  {
    ::outline { line-width: 10; }
	line-width: 7;
	
	[highway='service']
	{
	  line-width: 3;
	}
	
	[access='private'],
    [access='restricted'],
    {
      ::outline { line-width: 7; line-color: #fff; }
      line-width: 7;
      line-color: #efbacd;
      line-dasharray: 10, 3;

	  [highway='service']
	  {
        ::outline { line-width: 3; line-color: #fff; }
	    line-width: 3;
	  }
    }

    [cycleway='lane'],
    [cycleway='opposite_lane'],
    [cycleway='shared_lane'],
    [cycleway='track'],
    [cycleway='opposite_track'],
    {
      ::outline
      {
	  line-width: 11;
	  line-color: @bike_friendly;
      }

      line-color: #fff;
      line-width: 7;
    }
  }
}


.roads[surface='cobblestone']
{	
	::interior
	{
		[zoom>=14]
		{
		  line-width: 0.5; line-dasharray: 1, 1; line-color: #666; line-offset: -1;
		}
	
		[zoom>=15]
		{
		  line-width: 0.75; line-dasharray: 1.5, 1.5; line-offset: -1;
		}
		
		[zoom>=16]
		{
		  line-width: 1.1; line-dasharray: 2, 2; line-offset: -3;
		}
	
		[zoom>=17]
		{
		  line-width: 2; line-dasharray: 3, 3; line-offset: -4;
		}
    }
}




/** Paths **/

.line[highway='path'],
.line[highway='footway']
{

  line-color: @color_road_inline;
  line-width: 0;

  [zoom>=13]
  {
    line-dasharray: 4, 1;
    line-width: 0.4;

	  [bicycle='no']
	  {
	    line-color: #b0c115;
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


/** Highway pedestrian **/

.line[highway='pedestrian']
{

  line-color: @color_road_inline;
  line-width: 0;

  [zoom>=13]
  {
    line-dasharray: 4, 1;
    line-width: 0.5;
  }

  [zoom>=14]
  {
    line-dasharray: 3, 1.5;
    line-width: 1;
  }

  [zoom>=15]
  {
    line-dasharray: 4, 2;
    line-width: 2.25;
  }

  [zoom>=16]
  {
    line-width: 5;
    line-dasharray: 6, 2;
  }

  [zoom>=17]
  {
    line-width: 7;
    line-dasharray: 6, 3;
  }
}

/** Push your bike **/

.roads[bicycle='dismount']
{
  [zoom>=14]
  {
    ::outline
    {
      line-color: @color_road_outline;
      line-width: 1;
    }

    line-color: @color_road_inline;
    line-width: 1;
    line-dasharray: 3.5, 1.5;
  }

  [zoom>=15]
  {
    ::outline
    {
      line-width: 2;
    }

    line-width: 2;
  }

  [zoom>=16]
  {
    ::outline
    {
      line-width: 2.25;
    }

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
  { line-width: 5; line-color: #fe8300; line-dasharray: 1, 1.5; }
  
  [zoom>=16]
  { line-width: 7; line-dasharray: 1.25, 1.5; }
  
  [zoom>=17]
  { line-width: 9; line-dasharray: 1.5, 1.9; }
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


