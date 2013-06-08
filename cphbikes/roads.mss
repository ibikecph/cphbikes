@road_outline: hsl( 180, 7%, 89% );
@road_inline: white;
@bike_outline: white;
@bike_inline: hsl( 141, 100%, 30% );
@bike_path: hsl( 300, 100%, 50% );
@bike_friendly: hsl( 49, 0%, 60% );
@pedestrian: hsl( 37, 44%, 85% );
@restricted: hsl( 338, 63%, 73% );
@bridge_outline: hsl( 180, 7%, 89% );
@railway: darken( @land, 10% );

/* Default line styles (to initialize ::outline) */
.line
{
  ::outline
  {
    line-width: 0;
    line-cap: round;
    line-join: round;
  }

  line-width: 0;
  line-cap: butt;
  line-join: miter;
}

.line[highway='cycleway']
{
  [zoom>=13]
  {
    line-width: 0.5;
    line-color: white;
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
      line-pattern-file: url("images/oneway_right2.png");
    }
  }
}

.line[oneway='-1'][highway!='motorway'][highway!='motorway_link'][cycleway!='opposite'][cycleway!='opposite_lane'][cycleway!='opposite_track'],

{
  [zoom>=16]
  {
    ::overlay
    {
      line-pattern-file: url("images/oneway_left2.png");
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
      line-pattern-file: url("images/oneway_right2.png");
    }
  }
}

.line['oneway:bicycle'='-1'],
{
  [zoom>=16]
  {
    ::overlay
    {
      line-pattern-file: url("images/oneway_left2.png");
    }
  }
}

/** Default styles for all roads */
.roads
{
  ::casing
  {
    line-width: 0;
    line-color: black;
    line-cap: round;
    line-join: round;
  }

  ::outline
  {
    line-width: 0;
    line-color: @road_outline;
    line-cap: round;
    line-join: round;
  }

  line-width: 0;
  line-color: @road_inline;
  line-cap: round;
  line-join: round;
}


.roads[cycleway='lane'],
.roads[cycleway='opposite_lane'],
.roads[cycleway='shared_lane'],
.roads[cycleway='track'],
.roads[cycleway='opposite_track'],
{
  ::outline
  {
    line-color: white;
  }

  line-color: @bike_path;
}

/* Low-zoom roads */

.line[highway='motorway']
{

  [zoom=8]
  {
    line-width: 1.5;
    line-color: white;
  } 

  [zoom=9]
  {
    line-width: 2.25;
    line-color: white;
  } 

  [zoom=10]
  {
    line-width: 2.5;
    line-color: white;
  }
}


.line[highway='trunk'],
.line[highway='primary'],
.line[highway='secondary']
{

  [zoom=9]
  {
    line-width: 0.25;
    line-color: hsl( 180, 4%, 95% );
  } 

  [zoom=9]
  {
    line-width: 0.5;
    line-color: hsl( 180, 4%, 95% );
  } 

  [zoom=10]
  {
    line-width: 0.5;
    line-color: white;
  }
}



.roads[kind='highway']
{

  [zoom>=11]
  {
    line-width: 4; line-color: hsl( 180, 4%, 95% );

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
    line-width: 4; line-color: hsl( 0, 0%, 98% );


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
    line-width: 4; line-color: hsl( 180, 9%, 98%);

    [is_link='yes']
    {
      ::outline { line-width: 4.5; }
      line-width: 1.75; line-color: hsl( 180, 9%, 98%);
    }
  }

  [zoom>=14]
  {
    line-width: 5; line-color: hsl( 180, 7%, 95% );

    [is_tunnel='yes']
    {
      ::outline { line-color: hsl( 180, 7%, 89% ); line-opacity: 0.4; }
      line-color: hsl( 180, 7%, 89% ); line-opacity: 0.4;
    }
    [is_link='yes']
    {
      ::outline { line-width: 5; }
      line-width: 2.5; line-color: hsl( 180, 7%, 95% );
    }
  }

  [zoom>=15]
  {
    line-width: 10; line-color: hsl( 180, 10%, 84%);

    [is_tunnel='yes']
    {
      ::outline { line-width: 12; }
      line-width: 6;
    }
    [is_link='yes']
    {
      ::outline { line-width: 6; }
      line-width: 3; line-color: hsl( 180, 10%, 84% );
    }
  }

  [zoom>=16]
  {
    line-width: 10.5; line-color: hsl( 180, 15%, 83% );

    [is_link='yes']
    {
      ::outline { line-width: 6; }
      line-width: 3; line-color: hsl( 180, 15%, 83% );
    }
  }

  [zoom>=17]
  {
    line-width: 18;

    [is_link='yes']
    {
      ::outline { line-width: 10; }
      line-width: 5;
    }
  }

  [zoom>=18]
  {
    line-width: 24;

    [is_link='yes']
    {
      ::outline { line-width: 14; }
      line-width: 7;
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
    line-color: white;
  }

  [zoom>=11]
  {
    line-width: 1.25;

  }

  [zoom>=14]
  {
    line-width: 3.6;

    [cycleway='lane'],
    [cycleway='opposite_lane'],
    [cycleway='shared_lane'],
    [cycleway='track'],
    [cycleway='opposite_track'],
    {
      ::outline
      {
        line-width: 5;
        line-color: @bike_friendly;
      }

      line-color: white;
      line-width: 3.6;
    }

    [bicycle='no'],
    {
      line-color: hsl( 180, 7%, 95% );
    }
  }

  [zoom>=15]
  {
    line-width: 6;

    [cycleway='lane'],
    [cycleway='opposite_lane'],
    [cycleway='shared_lane'],
    [cycleway='track'],
    [cycleway='opposite_track'],
    {
      ::outline
      {
        line-width: 10;
        line-color: @bike_friendly;
      }

      line-color: white;
      line-width: 7;
    }

    [bicycle='no'],
    {
      line-color: hsl( 180, 10%, 84% );
    }
  }

  [zoom>=16]
  {
    line-width: 10;


    [cycleway='lane'],
    [cycleway='opposite_lane'],
    [cycleway='shared_lane'],
    [cycleway='track'],
    [cycleway='opposite_track'],
    {
      ::outline
      {
        line-width: 14;
        line-color: @bike_friendly;
      }

      line-color: white;
      line-width: 10;
    }

    [bicycle='no'],
    {
      line-color: hsl( 180, 15%, 83% );
    }

  }

  [zoom>=17]
  {
    line-width: 16;

    [cycleway='lane'],
    [cycleway='opposite_lane'],
    [cycleway='shared_lane'],
    [cycleway='track'],
    [cycleway='opposite_track'],
    {
      ::outline
      {
        line-width: 20;
        line-color: @bike_friendly;
      }

      line-color: white;
      line-width: 16;
    }

    [bicycle='no'],
    {
      line-color: hsl( 180, 15%, 83% );
    }

  }

  [zoom>=18]
  {
    line-width: 20;

    [cycleway='lane'],
    [cycleway='opposite_lane'],
    [cycleway='shared_lane'],
    [cycleway='track'],
    [cycleway='opposite_track'],
    {
      ::outline
      {
        line-width: 25;
        line-color: @bike_friendly;
      }

      line-color: white;
      line-width: 20;
    }

    [bicycle='no'],
    {
      line-color: hsl( 180, 15%, 83% );
    }
  }
}

#rail
{

  ::outline
  {
    line-width: 0;
    line-color: @railway;
    line-cap: butt;
    line-join: miter;
  }
  line-width: 0;
  line-cap: butt;
  line-join: miter;

  [zoom>=14]
  {
    ::outline
    { line-width: 0.25; }
    
    line-color: @railway;
    line-width: 4.5;
    line-dasharray: 0.5, 10;

    [is_bridge='yes']
    {
      ::casing
      {
        line-color: hsl( 180, 7%, 89% );
        line-width: 4;
      }
    }
  }

  [zoom>=15]
  {
    ::outline
    { line-width: 0.5; }
    
    line-color: @railway;
    line-width: 5;
    line-dasharray: 0.75, 10;
    [is_bridge='yes']
    {
      ::casing
      {
        line-width: 6;
      }
    }
  }

  [zoom>=16]
  {
    ::outline
    { line-width: 0.75; }
    
    line-color: @railway;
    line-width: 7;

    [is_bridge='yes']
    {
      ::casing
      {
        line-width: 8;
      }
    }
  }

  [zoom>=17]
  {
    ::outline
    { line-width: 1.5; }
  
    line-color: @railway;
    line-width: 7.5;
    line-dasharray: 1, 10;
  
    [is_bridge='yes']
    {
      ::casing
      {
        line-width: 12;
      }
    }
  }


}

.roads[kind='minor_road']
{
  ::outline
  {
    line-width: 0; line-color: @road_outline;
  }

  line-width: 0; line-color: @road_inline;


  [cycleway='lane'],
  [cycleway='opposite_lane'],
  [cycleway='shared_lane'],
  [cycleway='track'],
  [cycleway='opposite_track'],
  {
    line-color: @bike_friendly;
  }

[zoom>=11]
{
  line-width: 0.15;

  [cycleway='lane'],
  [cycleway='opposite_lane'],
  [cycleway='shared_lane'],
  [cycleway='track'],
  [cycleway='opposite_track'],
  {
    line-color: white;
    line-width:0.15;
  }

}

[zoom>=12]
{

  [cycleway='lane'],
  [cycleway='opposite_lane'],
  [cycleway='shared_lane'],
  [cycleway='track'],
  [cycleway='opposite_track'],
  {
    line-color: white;
    line-width:0.75;
  }
}

[zoom>=13]
{
  line-width: 0.5;
}

[zoom>=14]
{
  line-width: 2.1;

  [access='private'],
  [access='restricted'],
  {
    ::outline
    {
      line-width: 2.1;
      line-color: white;
      line-cap: butt;
      line-join: miter;
    }
    line-width: 2.1;
    line-color: @restricted;
    line-dasharray: 3, 1;
    line-cap: butt;
    line-join: miter;
  }

  [cycleway='lane'],
  [cycleway='opposite_lane'],
  [cycleway='shared_lane'],
  [cycleway='track'],
  [cycleway='opposite_track'],
  {
    ::outline
    {
      line-width: 5.5;
      line-color: @bike_friendly;
    }

    line-color: white;
    line-width: 2.1;
  }
}

[zoom>=15]
{
  line-width: 3.8;

  [highway='service']
  {
    line-width: 1.25;
  }

  [access='private'],
  [access='restricted'],
  {
    ::outline { line-width: 3.8; line-color: white; }
    line-width: 3.8;
    line-color: @restricted;
    line-dasharray: 3.8, 2;
  }

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

    line-color: white;
    line-width: 3.8;
  }
}

[zoom>=16]
{
  line-width: 5;

  [highway='service']
  {
    line-width: 1.75;
  }

  [access='private'],
  [access='restricted'],
  {
    ::outline { line-width: 3.5; line-color: white; }
    line-width: 3.5;
    line-color: @restricted;
    line-dasharray: 5, 2;

    [highway='service']
    {
      ::outline { line-width: 1.75; line-color: white; }
      line-width: 1.75;
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

    line-color: white;
    line-width: 5;
  }
}

[zoom>=17]
{
  line-width: 9;

  [highway='service']
  {
    line-width: 3;
  }

  [access='private'],
  [access='restricted'],
  {
    ::outline { line-width: 9; line-color: white; }
    line-width: 9;
    line-color: @restricted;
    line-dasharray: 10, 3;

    [highway='service']
    {
      ::outline { line-width: 3; line-color: white; }
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
      line-width: 12;
      line-color: @bike_friendly;
    }

    line-color: white;
    line-width: 9;
  }
}

[zoom>=18]
{
  line-width: 12;

  [highway='service']
  {
    line-width: 4;
  }

  [access='private'],
  [access='restricted'],
  {
    ::outline { line-width: 12; line-color: white; }
    line-width: 12;
    line-color: @restricted;
    line-dasharray: 10, 4;

    [highway='service']
    {
      ::outline { line-width: 4; line-color: white; }
      line-width: 4;
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
      line-width: 15;
      line-color: @bike_friendly;
    }

    line-color: white;
    line-width: 12;
  }
}

}


.roads[surface='cobblestone']
{	
  ::interior
  {
    [zoom>=14]
    {
      line-width: 0.5; line-dasharray: 1, 1; line-color: hsl( 0, 0%, 50% ); line-offset: -1;
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
  line-color: lighten( @pedestrian, 5% );
  line-width: 0;
  
  [zoom>=13]
  {
    line-width: 0.4;

    [bicycle='no']
    {
      line-dasharray: 0.5, 1;
    }
  }

  [zoom>=14]
  {
    line-width: 0.6;

    [bicycle='no']
    {
      line-dasharray: 1.5, 1.5;
      line-width: 0.6;
    }

    [bridge='yes']
    {
      ::outline
      {
        line-color: @bridge_outline;
        line-width: 2;
      }

      line-width: 0.6;
      line-color: @pedestrian;
    }
  }

  [zoom>=15]
  {
    line-width: 0.8;

    [bicycle='no'] 
    {
      line-dasharray: 3, 2;
      line-width: 0.8;
    }

    [bridge='yes']
    {
      ::outline
      {
        line-color: @bridge_outline;
        line-width: 3;
      }

      ::inline
      {
        line-width: 0.8;
        line-color: @pedestrian;
      }
    }
  }

  [zoom>=16]
  {
    line-width: 0.9;

    [bicycle='no']
    {
      line-width: 1;
      line-dasharray: 4, 3;
    }

    [bridge='yes']
    {
      ::outline
      {
        line-color: @bridge_outline;
        line-width: 5;
      }
    }
  } 

  [zoom>=17]
  {
    line-width: 1.2;

    [bicycle='no']
    { 
      line-width: 1.2; 
      line-dasharray: 4, 3; 
    }

    [bridge='yes']
    {
      ::outline
      {
        line-color: @bridge_outline;
        line-width: 6;
      }
    }
  }

  [zoom>=18]
  {
    line-width: 1.5;

    [bicycle='no']
    { 
      line-width: 1.5; 
      line-dasharray: 4, 3; 
    }
  }
}


/** Highway pedestrian **/

.line[highway='pedestrian']
{

  line-color: @pedestrian;
  line-width: 0;

  [zoom>=13]
  {
    line-width: 0.5;
  }

  [zoom>=14]
  {
    line-width: 0.5;
  }

  [zoom>=15]
  {
    line-width: 1.7;
  }

  [zoom>=16]
  {
    line-width: 1.5;
  }

  [zoom>=17]
  {
    line-width: 4;
  }

  [zoom>=18]
  {
    line-width: 6;
  }
}

/** Push your bike **/

.line[bicycle='dismount']
{
  [zoom>=14]
  {
    line-color: @pedestrian;
    line-width: 0.6;
  }

  [zoom>=15]
  {
    line-width: 0.8;
  }

  [zoom>=16]
  {
    line-width: 1.75;
  }

  [zoom>=17]
  {
    line-width: 5; 
  }

  [zoom>=18]
  {
    line-width: 7; 
  }
}

/** Steps **/

/* TODO what about standalone steps? */

.line[highway='steps']
{
  line-color: lighten( @pedestrian, 5% ); 

  ['ramp:bicycle'='yes']
  {
    line-color: @bike_friendly;
  }

  [zoom>=14]
  { 
    line-width: 2.5; 
    line-dasharray: 1, 0.75; 
  }

  [zoom>=15]
  { 
    line-width: 5; 
    line-dasharray: 1, 1.5; 
  }

  [zoom>=16]
  { 
    line-width: 7; 
    line-dasharray: 1.25, 1.5; 
  }

  [zoom>=17]
  { 
    line-width: 9; 
    line-dasharray: 1.5, 1.9; 
  }
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
    line-width: 1.2;
    line-color: darken( @water, 12% );
    line-dasharray: 5, 2;
  }

  [zoom>=15]
  {
    line-width: 1.5;
  }

  [zoom>=16]
  {
    line-width: 2;
  }
}


