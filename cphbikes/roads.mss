.roads
{
  [surface='cobblestone']
  {
    [zoom>=14]
    {
      ::outline
      {
        line-color: #e1e5e5;
        line-opacity: 0.3;
      }

      line-color: #878686;
      line-dasharray: 1, 1;
    }

    [zoom>=15]
    {
      ::outline
      {
        line-opacity: 0.5;
      }

      line-dasharray: 2, 2;
    }

    [zoom>=17]
    {
      line-pattern-file: url("images/cobblestone.png");
    }
  }

  /** Push your bike **/

  [bicycle='dismount'] /* TODO not sure this is catching anything */
  {
    [zoom>=14]
    {
      line-color: #78c600;
      line-dasharray: 2, 3;
    }

    [zoom>=15]
    {
      line-width: 20;
      line-dasharray: 3, 2;
    }

    [zoom>=16]
    {
      line-width: 1.5;
      line-dasharray: 4, 3;
    }
  }
}

#highway
{
  [zoom>=10]
  {
    ::outline
    {
      line-width: 2.5;
      line-color: @color_road_outline;
    }

    line-width: 2.5;
    line-color: @color_road_inline;
  }

  [zoom>=11]
  {
    ::outline
    {
      line-width: 3.5;
    }

    line-width: 3.5;
    line-color: #cddada;
  }

  [zoom>=12]
  {
    ::outline
    {
      line-width: 4.5;
    }

    line-width: 4;
  }

  [zoom>=13]
  {
    ::outline
    {
      line-width: 6;
    }

    line-width: 4;
  }

  [zoom>=14]
  {
    ::outline
    {
      line-width: 12;
    }

    line-width: 6;

    [is_tunnel='yes']
    {
      ::outline
      {
        line-color: #e1e5e5;
        line-opacity: 0.4;
      }

      line-color: #e1e5e5;
      line-opacity: 0.4;
    }
  }

  [zoom>=15]
  {
    ::outline {
      line-width: 15;
    }

    line-width: 8.5;

    [is_tunnel='yes']
    {
      ::outline {
        line-width: 12;
      }

      line-width: 6;
    }
  }

  [zoom>=16]
  {
    ::outline {
      line-width: 17;
    }

    line-width: 9;
  }

  [zoom>=17]
  {
    ::outline {
      line-width: 26;
    }

    line-width: 13;
  }
}

#major_road
{
  [zoom>=10]
  {
    ::outline
    {
      line-width: 1.5;
      line-color: @color_road_outline;
    }

    line-width: 1.5;
    line-color: @color_road_inline;
  }

  [zoom>=11]
  {
    ::outline
    {
      line-width: 2;
    }

    line-width: 2;
  }

  [zoom>=12]
  {
    ::outline
    {
      line-width: 3.2;
    }
  }

  [zoom>=13]
  {
    ::outline
    {
      line-width: 4;
    }
  }

  [zoom>=14]
  {
    ::outline
    {
      line-width: 8;
    }

    line-width: 3;
  }

  [zoom>=15]
  {
    ::outline
    {
      line-width: 12;
    }

    line-width: 5;
  }

  [zoom>=16]
  {
    ::outline
    {
      line-width: 14;
    }

    line-width: 6;
  }

  [zoom>=17]
  {
    ::outline
    {
      line-width: 22;
    }

    line-width: 11;
  }
}

#rail
{
  [zoom>=12]
  {
    ::outline
    {
      line-width: 0.25;
      line-color: @color_road_inline;
    }

    line-width: 4.5;
    line-color: @color_road_inline;
    line-dasharray: 0.5, 5;
  }

  [zoom>=15]
  {
    ::outline
    {
      line-width: 0.5;
    }

    line-width: 5;
    line-dasharray: 0.75, 5;
  }

  [zoom>=16]
  {
    ::outline
    {
      line-width: 0.75;
    }

    line-width: 7;
  }

  [zoom>=17]
  {
    ::outline
    {
      line-width: 1.5;
    }

    line-width: 7.5;
    line-dasharray: 1, 5.5;
  }
}

#minor_road
{
  [zoom>=10]
  {
    ::outline
    {
      line-width: 0.25;
      line-color: @color_road_outline;
    }

    line-width: 0.25;
    line-color: @color_road_inline;
  }

  [zoom>=11]
  {
    ::outline
    {
      line-width: 0.3;
    }

    line-width: 0.3;
  }

  [zoom>=13]
  {
    ::outline
    {
      line-width: 0.5;
    }

    line-width: 0.5;
  }

  [zoom>=14]
  {
    ::outline
    {
      line-width: 2.5;
    }

    line-width: 1;

    [access='private'],
    [access='restricted'],
    {
      line-width: 20;
      line-color: #f00;
      line-dasharray: 5, 1.5;
    }
  }

  [zoom>=15]
  {
    ::outline
    {
      line-width: 6;
    }

    line-width: 2;
  }

  [zoom>=16]
  {
    ::outline
    {
      line-width: 8;
    }

    line-width: 3.5;
  }

  [zoom>=17]
  {
    ::outline
    {
      line-width: 13;
    }

    line-width: 7;
  }
}

/** Paths **/

.line[highway='path'],
.line[highway='footway'],
.line[highway='pedestrian'],
{
  line-color: @color_road_inline;
  line-dasharray: 4, 1;

  [bicycle='no']
  {
    line-color: #f6839e;
    line-dasharray: 0.5, 1;
  }

  [zoom>=13]
  {
    line-width: 0.5;
  }

  [zoom>=14]
  {
    line-dasharray: 5, 1.5;
    line-width: 1;

    [bicycle='no']
    {
      line-dasharray: 1.7, 3;
      line-width: 1.2;
    }
  }

  [zoom>=15]
  {
    line-width: 1.25;

    [bicycle='no']
    {
      line-dasharray: 3, 2;
    }
  }

  [zoom>=16]
  {
    line-width: 1.5;
    line-dasharray: 6, 2;

    [bicycle='no']
    {
      line-width: 1.5;
      line-dasharray: 4, 3;
    }
  }

  [zoom>=17]
  {
    line-width: 1.7;
    line-dasharray: 6, 3;

    [bicycle='no']
    {
      line-width: 1.5;
      line-dasharray: 4, 3;
    }
  }
}

/** Steps **/

/* TODO what about standalone steps? */
.line['ramp:bicycle'='yes'][highway='steps']
{
  [zoom>=14]
  {
    line-width: 1;
    line-color: #06ab06;
    line-dasharray: 2, 4;
  }

  [zoom>=15]
  {
    line-width: 10;
    line-color: #f00;
  }
}

/** Bike lanes **/

/* TODO slow? */
/* ASK EMIL ABOUT THESE AFTER ALL THE BIKE LANES TYPES HAVE BEEN ADDED */
.line[highway='cycleway'],
.line[bicycle='yes'][route!='ferry'],
.line[bicycle='designated'],
.line[bicycle='ok'],
.line[route='bicycle'], /* TODO this directly overrides bikeroutes.mss */
/* painted line */
.line[cycleway='lane'],
.line['cycleway:left'='lane'],
.line['cycleway:right'='lane'],
/* raised curb */
.line[cycleway='track'],
.line['cycleway:left'='track'],
.line['cycleway:right'='track'],
/* raised curb (on opposite side) */
.line[cycleway='opposite_track'],
.line['cycleway:left'='opposite_track'],
.line['cycleway:right'='opposite_track'],
/* misc */
.line[cycleway='shared'],
.line[cycleway='segregated'],
.line[cycleway='yes'],
.line[cycleway='opposite_lane'],
.line[cycleway='path'],
.line[cycleway='opposite'],
.line[cycleway='shared_lane'],
{
  ::outline
  {
    line-color: #fff;
    line-width: 0;
  }

  ['cycleway:left'='lane'],
  /* ['cycleway:left'='track'], */
  {
    line-offset: -1;
  }

  ['cycleway:right'='lane'],
  /* ['cycleway:right'='track'], */
  {
    line-offset: 1;
  }

  ['cycleway:left'='track'],
  {
    line-offset: -10;
  }

  ['cycleway:right'='track'],
  {
    line-offset: 10;
  }

  [zoom>=13]
  {
    ::outline {
      line-width: 1; 
      line-color: #fff;
    }

    line-width: 0;
    line-color: #b1b3b3;
  }

  [zoom>=14]
  {
    line-color: #06ab06;
    line-width: 1.25;

    [cycleway='track']
    {
      line-width: 20;
    }

    /* One-Way streets - TODO WRONG */
    .line[oneway='yes'][cycleway='opposite']
    {
      line-width: 2;
      line-color: #f00;
    }
  }

  [zoom>=15]
  {
    line-width: 1.5;
  }

  [zoom>=16]
  {
    ::outline
    {
      line-width: 4;
    }

    line-width: 1.5;
  }

  [zoom>=17]
  {
    ::outline
    {
      line-width: 3.5;
    }
  }
}

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
