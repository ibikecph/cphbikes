@playground: hsl( 50, 100%, 50% );
@graveyard: darken( @park, 10% );
@residential: darken( @land, 3% );
@industrian: darken( @land, 5% );

#copenhagen_polygon
{
  ::golf[leisure='golf_course']
  {
    [zoom>=10]
    {
      polygon-fill: spin( @park, -10 );
    }
  }
  [leisure='playground']
  {
    [zoom>=10]
    {
      polygon-fill: @playground;
    }
  }
  
  ::greens
  {
    [leisure='park'],
    [leisure='track'],
    [leisure='common'],
    [leisure='pitch'],
    [natural='wood'],
    [landuse='greenfield'],
    {
      [zoom>=8]
      {
        polygon-fill: @park;
      }
    }
  }
  ::scrub
  {
    [leisure='recreation_ground'],
    [natural='scrub']
    {
      [zoom>=10]
      {
        polygon-fill: @park;
      }
    }
  }
  
  ::farmland[landuse='farmland'],
  {
    [zoom>=8]
    {
      polygon-fill: @farmland;
    }
  }
  
  ::residential[landuse='residential'],
  {
    [zoom>=8]
    {
      polygon-fill: @residential;
    }
  }

  ::residential[landuse='industrial'],
  {
    [zoom>=8]
    {
      polygon-fill: @residential;
    }
  }
  
  ::wetland[natural='wetland']
  {
    [zoom>=10]
    {
      polygon-fill: hsl( 129, 78%, 70% );
    }
  
    [zoom>=14]
    {
      polygon-pattern-file: url("images/wetland.png");
    }
  }

  ::forest[landuse='forest']
  {
    [zoom>=10]
    {
      polygon-fill: @park;
    }
    [zoom>=14]
    {
      polygon-pattern-file: url("images/forest5.png");
    }
  }

  ::garden[leisure='garden']
  {
    [zoom>=10]
    {
      polygon-fill: lighten( @park, 10 );
    }
  }

  ::stadium[leisure='stadium']
  {
    [zoom>=10]
    {
      polygon-fill: darken( @park, 15 );
    }
  }

  ::grass[surface='grass']
  {
    [zoom>=10]
    {
      polygon-fill: spin( @park, -5 );
    }
  }

  ::beach[natural='beach']
  {
    [zoom>=10]
    {
      polygon-fill: @sand;
    }
  }

  ::sand[natural='sand']
  {
    [zoom>=10]
    {
      polygon-fill: @sand;
    }
  }

  ::zoo[tourism='zoo']
  {
    [zoom>=10]
    {
      polygon-fill: hsl( 50, 70%, 50% );
    }
  }
  
  ::graveyard
  {
    [amenity='grave_yard'],
    [landuse='cemetery'],
    {
      [zoom>=10]
      {
        polygon-fill: @graveyard;
      }
    }
  }
  
  ::meadow
  {
    [landuse='allotment'],
    [landuse='meadow'],
    {
      [zoom>=10]
      {
        polygon-fill: darken( @park, 5);
      }
    }
  }
  
  ::water
  {
    [natural='water'],
    [landuse='reservoir'],
    [waterway!='undefined'] {
      [zoom>=10]
      {
        polygon-fill: @water;
      }
    }
  }
  
  ::pedestrian[highway='pedestrian']
  {
    [zoom>=10]
    {
      polygon-fill: @pedestrian;
    }
  }

  ::university[amenity='university']
  {
    [zoom>=10]
    {
      polygon-fill: hsl( 188, 20%, 95% );
    }
  }

  ::platform[railway='platform']
  {
    [zoom>=17]
    {
      polygon-fill: hsl( 180, 3%, 94% );
    }
  }

  ::construction[landuse='construction']
  {
    [zoom>=14]
    {
      polygon-fill: hsl( 293, 15%, 90% );
    }
  }
}