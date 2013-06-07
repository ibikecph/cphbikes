@bike_path: #f0f;
@bike_friendly: #fbd42c;
/* @bike_path: #b1b3b3; */

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
    line-color: #f0f;
    line-cap: round;
    line-join: round;
  }

  ::outline
  {
    line-width: 0;
    line-color: @color_road_outline;
    line-cap: round;
    line-join: round;
  }

  line-width: 0;
  line-color: @color_road_inline;
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
    line-color: #fff;
  }

  line-color: @bike_path;
}

/* Low-zoom roads */

.line[highway='motorway']
{

  [zoom=8]
  {
    line-width: 1.5;
    line-color: #fff;
  } 

  [zoom=9]
  {
    line-width: 2.25;
    line-color: #fff;
  } 

  [zoom=10]
  {
    line-width: 2.5;
    line-color: #fff;
  }
}


.line[highway='trunk'],
.line[highway='primary'],
.line[highway='secondary']
{

  [zoom=9]
  {
    line-width: 0.25;
    line-color: #f3f4f4;
  } 

  [zoom=9]
  {
    line-width: 0.5;
    line-color: #f3f4f4;
  } 

  [zoom=10]
  {
    line-width: 0.5;
    line-color: #fff;
  }
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

  [zoom>=11]
  {
    ::outline { line-width: 6; line-color: #d5d9d9; }
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

  [zoom>=12]
  {
    ::outline { line-width: 4.5; line-color: #d9dddd; }
    line-width: 4; line-color: #f9f9f9;


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
    line-width: 4; line-color: #f9fafa;

    [is_link='yes']
    {
      ::outline { line-width: 4.5; }
      line-width: 1.75; line-color: #f9fafa;
    }
  }

  [zoom>=14]
  {
    ::outline { line-width: 12; line-color: @land; }
    line-width: 5; line-color: #f0f2f2;


    [is_tunnel='yes']
    {
      ::outline { line-color: #e1e5e5; line-opacity: 0.4; }
      line-color: #e1e5e5; line-opacity: 0.4;
    }
    [is_link='yes']
    {
      ::outline { line-width: 5; }
      line-width: 2.5; line-color: #f0f2f2;
    }
  }

  [zoom>=15]
  {
    ::outline { line-width: 17; }
    line-width: 10; line-color: #d3dbdb;

    [is_tunnel='yes']
    {
      ::outline { line-width: 12; }
      line-width: 6;
    }
    [is_link='yes']
    {
      ::outline { line-width: 6; }
      line-width: 3; line-color: #d3dbdb;
    }
  }

  [zoom>=16]
  {
    ::outline { line-width: 17; }
    line-width: 10.5; line-color: #cddada;

    [is_link='yes']
    {
      ::outline { line-width: 6; }
      line-width: 3; line-color: #cddada;
    }
  }

  [zoom>=17]
  {
    ::outline { line-width: 28; }
    line-width: 18;

    [is_link='yes']
    {
      ::outline { line-width: 10; }
      line-width: 5;
    }
  }

  [zoom>=18]
  {
    ::outline { line-width: 32; }
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
    line-color: #fff;
  }

  [zoom>=11]
  {
    ::outline { line-width: 2; }
    line-width: 1.25;

  }

  [zoom>=12]
  {
    ::outline { line-width: 3.2; }
    line-width: 1.25; line-color: #fff;

    [cycleway='lane'],
    [cycleway='opposite_lane'],
    [cycleway='shared_lane'],
    [cycleway='track'],
    [cycleway='opposite_track'],
    {
      ::outline
      {
        line-width: 3.2;
        line-color: #fff;
      }

      line-color: #fff;
      line-width: 3;
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
    line-width: 3.6;

    [cycleway='lane'],
    [cycleway='opposite_lane'],
    [cycleway='shared_lane'],
    [cycleway='track'],
    [cycleway='opposite_track'],
    {
      ::outline
      {
        line-width: 7;
        line-color: @bike_friendly;
      }

      line-color: #fff;
      line-width: 3.6;
    }

    [bicycle='no'],
    {
      line-color: #f0f2f2;
    }
  }

  [zoom>=15]
  {
    ::outline { line-width: 13; }
    line-width: 7;

    [cycleway='lane'],
    [cycleway='opposite_lane'],
    [cycleway='shared_lane'],
    [cycleway='track'],
    [cycleway='opposite_track'],
    {
      ::outline
      {
        line-width: 13;
        line-color: #ffe400;
      }

      line-color: #fff;
      line-width: 7;
    }

    [bicycle='no'],
    {
      line-color: #d3dbdb;
    }
  }

  [zoom>=16]
  {
    ::outline { line-width: 18; }
    line-width: 10;


    [cycleway='lane'],
    [cycleway='opposite_lane'],
    [cycleway='shared_lane'],
    [cycleway='track'],
    [cycleway='opposite_track'],
    {
      ::outline
      {
        line-width: 18;
        line-color: #ffea00;
      }

      line-color: #fff;
      line-width: 10;
    }

    [bicycle='no'],
    {
      line-color: #cddada;
    }

  }

  [zoom>=17]
  {
    ::outline { line-width: 23; }
    line-width: 16;

    [cycleway='lane'],
    [cycleway='opposite_lane'],
    [cycleway='shared_lane'],
    [cycleway='track'],
    [cycleway='opposite_track'],
    {
      ::outline
      {
        line-width: 23;
        line-color: #ffea00;
      }

      line-color: #fff;
      line-width: 16;
    }

    [bicycle='no'],
    {
      line-color: #cddada;
    }

  }

  [zoom>=18]
  {
    ::outline { line-width: 28; }
    line-width: 20;

    [cycleway='lane'],
    [cycleway='opposite_lane'],
    [cycleway='shared_lane'],
    [cycleway='track'],
    [cycleway='opposite_track'],
    {
      ::outline
      {
        line-width: 28;
        line-color: #ffea00;
      }

      line-color: #fff;
      line-width: 20;
    }

    [bicycle='no'],
    {
      line-color: #cddada;
    }
  }
}

#rail
{

  ::outline
  {
    line-width: 0;
    line-color: #f0f2f2;
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
    line-width: 4.5;
    line-color: #f0f2f2;
    line-dasharray: 0.5, 5;

    [is_bridge='yes']
    {
      ::casing
      {
        line-color: (#e1e5e5);
        line-width: 4;
      }
    }
  }

  [zoom>=15]
  {
    ::outline
    { line-width: 0.5; }
    line-width: 5;
    line-dasharray: 0.75, 5;

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
    line-width: 7.5;
    line-dasharray: 1, 5.5;

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
    line-width: 0; line-color: @color_road_outline;
  }

  line-width: 0; line-color: @color_road_inline;


  [cycleway='lane'],
  [cycleway='opposite_lane'],
  [cycleway='shared_lane'],
  [cycleway='track'],
  [cycleway='opposite_track'],
  {
    line-color: @bike_friendly;
  }

/*
[zoom>=10]
{
::outline
{
line-width: 0.25;
}

line-width: 0.3; line-color: #fff;
}
*/

[zoom>=11]
{
  ::outline { line-width: 0.3; }
  line-width: 0.15;

  [cycleway='lane'],
  [cycleway='opposite_lane'],
  [cycleway='shared_lane'],
  [cycleway='track'],
  [cycleway='opposite_track'],
  {
    line-color: #fff;
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
    line-color: #fff;
    line-width:0.75;
  }
}

[zoom>=13]
{
  ::outline { line-width: 0.5; }
  line-width: 0.5;
}

[zoom>=14]
{
  ::outline { line-width: 4; }
  line-width: 2.1;

  [access='private'],
  [access='restricted'],
  {
    ::outline
    {
      line-width: 2.1;
      line-color: #fff;
      line-cap: butt;
      line-join: miter;
    }
    line-width: 2.1;
    line-color: #e58dad;
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
      line-color: #f0e172;
    }

    line-color: #fff;
    line-width: 2.1;
  }
}

[zoom>=15]
{
  ::outline { line-width: 6; }
  line-width: 3.8;

  [highway='service']
  {
    line-width: 1.25;
  }

  [access='private'],
  [access='restricted'],
  {
    ::outline { line-width: 3.8; line-color: #fff; }
    line-width: 3.8;
    line-color: #d78ba7;
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
      line-color: #ffe400;
    }

    line-color: #fff;
    line-width: 3.8;
  }
}

[zoom>=16]
{
  ::outline { line-width: 6; }
  line-width: 5;

  [highway='service']
  {
    line-width: 1.75;
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
      ::outline { line-width: 1.75; line-color: #fff; }
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
      line-color: #ffea00;
    }

    line-color: #fff;
    line-width: 5;
  }
}

[zoom>=17]
{
  ::outline { line-width: 12; }
  line-width: 9;

  [highway='service']
  {
    line-width: 3;
  }

  [access='private'],
  [access='restricted'],
  {
    ::outline { line-width: 9; line-color: #fff; }
    line-width: 9;
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
      line-width: 12;
      line-color: #ffea00;
    }

    line-color: #fff;
    line-width: 9;
  }
}

[zoom>=18]
{
  ::outline { line-width: 15; }
  line-width: 12;

  [highway='service']
  {
    line-width: 4;
  }

  [access='private'],
  [access='restricted'],
  {
    ::outline { line-width: 12; line-color: #fff; }
    line-width: 12;
    line-color: #efbacd;
    line-dasharray: 10, 4;

    [highway='service']
    {
      ::outline { line-width: 4; line-color: #fff; }
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
      line-color: #ffea00;
    }

    line-color: #fff;
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

  line-color: #c2c4c4;
  line-width: 0;

  [zoom>=13]
  {
    line-width: 0.4;

    [bicycle='no']
    {
      line-color: #c2c4c4;
      line-dasharray: 0.5, 1;
    }
  }

  [zoom>=14]
  {
    line-width: 0.6;

    [bicycle='no']
    { line-dasharray: 1.5, 1.5; line-width: 0.6; }

    [bridge='yes']
    {
      ::outline
      {
        line-color: #e1e5e5;
        line-width: 2;
      }

      line-width: 0.6;
      line-color: #c2c4c4;
    }
  }

  [zoom>=15]
  {
    line-width: 0.8;

    [bicycle='no'] 
    { line-dasharray: 3, 2; line-width: 0.8; }

    [bridge='yes']
    {
      ::outline
      {
        line-color: #e1e5e5;
        line-width: 3;
      }

      ::inline
      {
        line-width: 0.8;
        line-color: #c2c4c4;
      }
    }
  }

  [zoom>=16]
  {
    line-width: 0.9; line-color: #abadad;

    [bicycle='no']
    { line-width: 1; line-dasharray: 4, 3; line-color: #abadad; }

    [bridge='yes']
    {
      ::outline
      {
        line-color: #e1e5e5;
        line-width: 5;
      }

      ::inline
      {
        line-width: 0.9;
        line-color: #abadad;
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
        line-color: #e1e5e5;
        line-width: 6;
      }

      ::inline
      {
        line-width: 1.2;
        line-color: #abadad;
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

  line-color: #c2c4c4;
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
    line-width: 1.25; line-color: #abadad;
  }

  [zoom>=17]
  {
    line-width: 3;
  }

  [zoom>=18]
  {
    line-width: 4;
  }
}

/** Push your bike **/

.line[bicycle='dismount']
{
  [zoom>=14]
  {
    line-color: #c2c4c4;
    line-width: 0.6;
  }

  [zoom>=15]
  {
    line-width: 0.8;
  }

  [zoom>=16]
  {
    line-width: 1.75; line-color: #fffaf3;
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
  [zoom>=14]
  { 
    line-width: 2.5; 
    line-color: #fff; 
    line-dasharray: 1, 0.75; 

    ['ramp:bicycle'='yes']
    {
      line-color: #0089fe;
    }
  }

  [zoom>=15]
  { 
    line-width: 5; 
    line-color: #fe8300; 
    line-dasharray: 1, 1.5; 

    ['ramp:bicycle'='yes']
    {
      line-color: #0089fe;
    }
  }

  [zoom>=16]
  { 
    line-width: 7; 
    line-dasharray: 1.25, 1.5; 

    ['ramp:bicycle'='yes']
    {
      line-color: #0089fe;
    }
  }

  [zoom>=17]
  { 
    line-width: 9; 
    line-dasharray: 1.5, 1.9; 

    ['ramp:bicycle'='yes']
    {
      line-color: #0089fe;
    }
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


