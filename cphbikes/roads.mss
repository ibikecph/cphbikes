@road_outline: hsl( 180, 7%, 89% );
@road_inline: white;
@bike_outline: white;
@bike_inline: hsl( 141, 100%, 30% );
@bike_path: hsl( 300, 100%, 50% );
@bike_friendly: hsl( 49, 0%, 60% );
@pedestrian: hsl( 37, 44%, 85% );
@restricted: hsl( 338, 63%, 73% );
@bridge_outline: hsl( 180, 7%, 89% );
@railway: darken( @land, 5% );
@major: hsl( 50, 100%, 50% );
@highway: lighten( @land, 5% );

@cobblestone: hsl( 37, 30%, 80% );
@cobblestone_scale: 1.1;

@width: 1;
@pedestrian_width: 1.5;
@path_width: 0.2;

@c1: @width * 15;
@c2: @width * 10;
@c3: @width * 5;
@c4: @width * 2;
@c5: @width * 0.7;

/* Default line styles (to initialize ::outline) */
.line
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

/* Ferries */
/* TODO layer under bridges */
.line[route='ferry']
{
  line-color: darken( @water, 15% );
  line-dasharray: 7, 5;
  line-width: @c4;
  line-cap: butt;
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


/* Paths */
.line[highway='path'],
.line[highway='footway'],
.line[bicycle='dismount']
{
  line-color: lighten( @pedestrian, 5% );
  line-opacity: 0.8;
  [zoom<=13] { line-width: 0; }
  [zoom=14] { line-width: @c5; }
  [zoom=15] { line-width: @c5; }
  [zoom=16] { line-width: @c5; }
  [zoom>=17] { line-width: @c4; }
  
  [bicycle='no']
  {
    line-dasharray: 2, 4;
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
.line[highway='steps']
{
  line-color: lighten( @pedestrian, 5% ); 
  line-dasharray: 2, 2; 
  line-cap: butt;
  [zoom<=12] { line-width: 0; }
  [zoom>=13][zoom<=15] { line-width: @c5*4; }
  [zoom=16] { line-width: @c4*3; }
  [zoom=17] { line-width: @c4*4; }
  [zoom>=18] { line-width: @c4*4; }
  ['ramp:bicycle'='yes']
  {
      line-color: @road_inline;
  }
}

.line[highway='pedestrian']
{
  line-color: @pedestrian;
  [zoom<=12] { line-width: 0; }
  [zoom=13] { line-width: @c5; }
  [zoom=14] { line-width: @c4; }
  [zoom=15] { line-width: @c3; }
  [zoom=16] { line-width: @c3; }
  [zoom>=17] { line-width: @c2; }
}

.line[highway='cycleway']
{
  line-color: @road_inline;
  [zoom<=12] { line-width: 0; }
  [zoom=13] { line-width: @c5; }
  [zoom=14] { line-width: @c4; }
  [zoom=15] { line-width: @c4; }
  [zoom=16] { line-width: @c3; }
  [zoom=17] { line-width: @c3; }
  [zoom=18] { line-width: @c3; }
  [zoom>=19] { line-width: @c3; }
}

.roads[kind='minor_road'],
{
  [zoom<=12] { line-width: 0; }
  [zoom=13] { line-width: @c5; }
  [zoom=14] { line-width: @c4; }
  [zoom=15] { line-width: @c3; }
  [zoom=16] { line-width: @c2; }
  [zoom>=17] { line-width: @c1; }
  
  [highway='service']
  {
    [zoom<=15] { line-width: 0; }
    [zoom=16] { line-width: @c4; }
    [zoom=17] { line-width: @c3; }
    [zoom=18] { line-width: @c2; }
    [zoom>=19] { line-width: @c1; }
  }
  
}


// cobblestones
.line[highway='pedestrian'],
.line[highway='cycleway'],
.roads[kind='minor_road'],
.roads[kind='major_road']
{
  [surface='cobblestone']
  {
    ::left
    {
      line-dasharray: 1.5*@cobblestone_scale, 4.7*@cobblestone_scale, 1.5*@cobblestone_scale, 3*@cobblestone_scale, 1.5*@cobblestone_scale, 5.1*@cobblestone_scale;
      [zoom<=16] { line-offset: @c2 * @cobblestone_scale * 0.2; }
      [zoom>=17] { line-offset: @c1 * @cobblestone_scale * 0.2; }
    }
    ::right
    {
      line-dasharray: 1.5*@cobblestone_scale, 3.1*@cobblestone_scale, 1.5*@cobblestone_scale, 5.3*@cobblestone_scale, 1.5*@cobblestone_scale, 4.2*@cobblestone_scale;
      [zoom<=16] { line-offset: @c2 * @cobblestone_scale * -0.2; }
      [zoom>=17] { line-offset: @c1 * @cobblestone_scale * -0.2; }
    }
    ::left, ::right
    {
      line-width: 1.5*@cobblestone_scale;
      line-color: @cobblestone;
    }
  }
}
.line[highway='pedestrian'],
{
  [surface='cobblestone']
  {
    ::left, ::right
    {
      line-color: darken( @cobblestone, 20% );
    }
  }
}

.roads[kind='major_road']
{
  line-color: @major;
  [zoom<=11] { line-width: @c4; }
  [zoom>=12][zoom<=15] { line-width: @c3; }
  [zoom=16] { line-width: @c2; }
  [zoom>=17] { line-width: @c1; }
}

.roads[kind='highway']
{
  line-color: @highway;
  [zoom<=14] { line-width: @c3; }
  [zoom=15] { line-width: @c2; }
  [zoom>=16] { line-width: @c1; }
}