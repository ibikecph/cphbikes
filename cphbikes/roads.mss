@road_outline: hsl( 180, 7%, 89% );
@road_inline: white;
@bike_outline: white;
@bike_inline: hsl( 141, 100%, 30% );
@bike_path: hsl( 300, 100%, 50% );
@bike_friendly: hsl( 49, 0%, 60% );
@pedestrian: hsl( 37, 44%, 85% );
@restricted: hsl( 338, 63%, 73% );
@bridge_outline: hsl( 180, 7%, 89% );
@railway: desaturate( darken( @land, 5% ), 100% );
@minor: white;
@major: white; //hsl( 55, 100%, 90% );
@highway: darken( desaturate( @land, 5% ), 3% );

@cobblestone: hsl( 37, 30%, 80% );
@cobblestone_scale: 1.5;
@cobblestone_width: 0.15;

@width: 1;
@pedestrian_width: 1.5;
@path_width: 0.2;

@c0: @width * 25;
@c1: @width * 15;
@c2: @width * 9;
@c3: @width * 5;
@c4: @width * 2.5;
@c5: @width * 1.2;

/* Default line styles (to initialize ::outline) */
.line,
.roads
{
  ::outline
  {
    line-width: 0;
    line-cap: butt;
    line-join: round;
  }

  line-width: 0;
  line-cap: round;
  line-join: round;
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

  line-color: @road_inline;
}


/* Ferries */
/* TODO layer under bridges */

.line[route='ferry'][zoom>=8]
{
  line-color: darken( @water, 7% );
  line-dasharray: 7, 5;
  line-width: @c4*0.6;
  line-cap: butt;
}

#rail[zoom>=8]
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

.line[zoom>=16]
{
  ::oneway_right
  {
    /* One-way for cars, effectively one-way for bikes */
    [oneway='yes'][highway!='motorway'][highway!='motorway_link'][cycleway!='opposite'][cycleway!='opposite_lane'][cycleway!='opposite_track'],
    [oneway='true'][highway!='motorway'][highway!='motorway_link'][cycleway!='opposite'][cycleway!='opposite_lane'][cycleway!='opposite_track'],
    [oneway='1'][highway!='motorway'][highway!='motorway_link'][cycleway!='opposite'][cycleway!='opposite_lane'][cycleway!='opposite_track'],
    ['oneway:bicycle'='yes'],
    ['oneway:bicycle'='true'],
    ['oneway:bicycle'='1'],
    {
      line-pattern-file: url("images/oneway_right2.png");
    }
  }

  ::oneway_left
  {
    [oneway='-1'][highway!='motorway'][highway!='motorway_link'][cycleway!='opposite'][cycleway!='opposite_lane'][cycleway!='opposite_track'],
    ['oneway:bicycle'='-1'],
    {
      line-pattern-file: url("images/oneway_left2.png");
    }
  }
}

/* Paths */
.line::paths[zoom>=14]
{
  [highway='path'],
  [highway='footway'],
  [highway='track'],
  [bicycle='dismount']
  {
    line-color: darken( @pedestrian, 15% );
    [bicycle='yes'],
    [bicycle='designated']
    {
      line-opacity: 1;
      line-color: @road_inline;
    }
    line-opacity: 0.6;
    [zoom<=14] { line-width: @c5; }
    [zoom=15] { line-width: @c5; }
    [zoom=16] { line-width: @c5; }
    [zoom>=17] { line-width: @c4; }
    [zoom>=19] { line-width: @c3; }

    [bicycle='no']
    {
      [zoom>=15]
      {
        line-color: darken( @pedestrian, 25% );
        line-dasharray: 2, 5;
      }
      [zoom<15]
      {
        line-color: darken( @pedestrian, 15% );
        line-dasharray: 1, 3;      
      }
    }
  }
}

/* TODO: Bike lanes */
/*
.line['cycleway:left'='lane'],
.line['cycleway:right'='lane'],
.line['cycleway:left'='track'],
.line['cycleway:right'='track'],
.line['cycleway:left'='opposite_track'],
.line['cycleway:right'='opposite_track'],
*/


/* TODO what about standalone steps? */
.line::steps[highway='steps'][zoom>=13]
{
  line-color: darken( @pedestrian, 15% );
  line-dasharray: 2, 2; 
  line-cap: butt;
  line-join: round;
  [zoom<=15] { line-width: @c5*4; }
  [zoom=16] { line-width: @c4*3; }
  [zoom=17] { line-width: @c4*4; }
  [zoom>=18] { line-width: @c4*4; }
  [zoom>=19] { line-width: @c3*3; }
  ['ramp:bicycle'='yes']
  {
    line-color: @road_inline;
  }
}

.line::pedestrian[highway='pedestrian'][zoom>=13]
{
  line-color: @pedestrian;
  [bicycle='yes'] { line-color: @road_inline; }
  line-cap: round;
  line-join: round;
  [zoom<=13] { line-width: @c5; }
  [zoom=14] { line-width: @c4; }
  [zoom=15] { line-width: @c3; }
  [zoom=16] { line-width: @c3; }
  [zoom>=17] { line-width: @c2; }
  [zoom>=19] { line-width: @c1; }
}

.line::cycleways[highway='cycleway'][zoom>=13]
{
  line-color: @road_inline;
  line-cap: round;
  line-join: round;
  [zoom<=13] { line-width: @c5; }
  [zoom=14] { line-width: @c4; }
  [zoom=15] { line-width: @c4; }
  [zoom=16] { line-width: @c3; }
  [zoom=17] { line-width: @c3; }
  [zoom=18] { line-width: @c3; }
  [zoom>=19] { line-width: @c3; }
}

@casing: 1.5;
@casing_color: darken( @land, 10% );

.roads::minor[kind='minor_road'][zoom>=10]
{
  line-color: @minor;
  line-cap: round;
  line-join: round;
  [zoom<=13] { line-width: @c5; }
  [zoom=14] { line-width: @c4; }
  [zoom=15] { line-width: @c3; }
  [zoom=16] { line-width: @c2; }
  [zoom=17] { line-width: @c2; }
  [zoom>=18] { line-width: @c1; }

  [highway='service']
  {
    [zoom<=15] { line-width: @c5 ; }
    [zoom=16] { line-width: @c4; }
    [zoom=17] { line-width: @c3; }
    [zoom=18] { line-width: @c2; }
    [zoom>=19] { line-width: @c1; }
  }
}

.roads::major[kind='major_road'][zoom>=7]
{
  line-color: @major;
  line-cap: round;
  line-join: round;
  [bicycle='no']
  {
    line-color: @highway;
  }
  [zoom<=13] { line-width: @c4; }
  [zoom=14] { line-width: @c4; }
  [zoom=15] { line-width: @c3; }
  [zoom=16] { line-width: @c2; }
  [zoom=17] { line-width: @c1; }
  [zoom=18] { line-width: @c1; }
  [zoom>=19] { line-width: @c0; }
}

.roads::highway[kind='highway'][zoom>=6]
{
  line-color: @highway;
  [bicycle='yes'] { line-color: @road_inline; }
  [zoom<=13] { line-width: @c4; }
  [zoom<=13] { line-width: @c4; }
  [zoom=14] { line-width: @c3; }
  [zoom=15] { line-width: @c2; }
  [zoom>=16][zoom<=18] { line-width: @c1; }
  [zoom>=19] { line-width: @c0; }
}

// cobblestones
.line,
.roads
{
  [surface='cobblestone'][zoom>=16]
  {
    ::left
    {
      line-dasharray: 1.5*@cobblestone_scale, 4.7*@cobblestone_scale, 1.5*@cobblestone_scale, 2.6*@cobblestone_scale, 1.5*@cobblestone_scale, 5.1*@cobblestone_scale;
      [zoom=16] { line-offset: @c2 * @cobblestone_scale * @cobblestone_width; }
      [zoom>=17] { line-offset: @c1 * @cobblestone_scale * @cobblestone_width; }
    }
    ::right
    {
      line-dasharray: 1.5*@cobblestone_scale, 3.1*@cobblestone_scale, 1.5*@cobblestone_scale, 5.3*@cobblestone_scale, 1.5*@cobblestone_scale, 4.2*@cobblestone_scale;
      [zoom=16] { line-offset: @c2 * @cobblestone_scale * @cobblestone_width * -1; }
      [zoom>=17] { line-offset: @c1 * @cobblestone_scale * @cobblestone_width * -1; }
    }
    ::left, ::right
    {
      line-width: 1.5*@cobblestone_scale;
      line-color: @cobblestone;
    }
  }
}

