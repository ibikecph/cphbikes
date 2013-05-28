


@water: #3fcdfd;
@land: #e1e5e5;
@park: #abf82d;
@road_outline: #e1e5e5;
@road_inline: #fff;
@bike_outline: #fff;
@bike_inline: #009734;

/* roads */
@highway:		#666;
@highway_case:	@land;
@major:			#000;
@major_case:	#fff;
@minor:			#999;
@minor_2:		#000;
@minor_case:	#fff;
@service:		#666;
@service_case:	@land;
@path:			#fff;
@path_case:		#ededed;
@rail: 			#444;
@aeroway: 		#eee;


/* Parks and water labels */
#water-bodies-labels[zoom=9][area>100000000][type='reservoir'],
#water-bodies-labels[zoom=10][area>100000000][type='reservoir'],
#water-bodies-labels[zoom=11][area>25000000],
#water-bodies-labels[zoom=12][area>5000000][type='reservoir'],
#green-areas-labels[zoom=12][area>5000000],
#water-bodies-labels[zoom=13][area>2000000][type='reservoir'],
#green-areas-labels[zoom=13][area>2000000],
#water-bodies-labels[zoom=14][area>200000],
#green-areas-labels[zoom=14][area>200000],
#water-bodies-labels[zoom=15][area>50000],
#green-areas-labels[zoom=15][area>50000],
#water-bodies-labels[zoom=16][area>10000],
#water-bodies-labels[zoom>=17],
#green-areas-labels[zoom=16][area>10000],
#green-areas-labels[zoom>=17] {
	text-name: '[name]';
	text-face-name: 'Arial Italic';
	text-fill: #fff;
	text-halo-fill: @water;
	text-placement: point;
	text-max-char-angle-delta: 30;
	text-wrap-width: 40;
	text-halo-radius: 2;
	text-allow-overlap: false;
	text-size: 13;
	text-spacing: 100;
	text-line-spacing: -5;
	text-wrap-width: 70;
	
	[zoom>=9][zoom<12] {
		text-name: '[name]';
		text-spacing: 200;
		text-wrap-width: 50;
	}
	[zoom=12] {
		text-name: '[name]';
		text-spacing: 200;
	}
	[zoom=13] {
		text-name: '[name]';
	}
	[zoom=14] {
		text-name: '[name]';
	}
	[zoom=15] {
		text-name: '[name]';
		text-wrap-width: 30;
	}
	[zoom>=15] {
		text-name: '[name]';
		text-wrap-width: 40;
	}
}

#green-areas-labels[zoom=12][area>4000000],
#green-areas-labels[zoom=13][area>2000000],
#green-areas-labels[zoom=14][area>200000],
#green-areas-labels[zoom=15][area>50000],
#green-areas-labels[zoom=16][area>10000],
#green-areas-labels[zoom>=17] 
{
	text-face-name: 'Arial Italic';
	text-name: '[name]';
	text-fill: #0f6e02;
	text-halo-fill: rgba(171, 248, 45, 0.7);
}




.buildings-labels[shop='mall'],
.buildings-labels[amenity='theatre'],
.buildings-labels[amenity='university'],
.buildings-labels[amenity='hospital'],
.buildings-labels[amenity='public_building'],
.buildings-labels[amenity='place_of_worship'],
.buildings-labels[amenity='townhall'],
.buildings-labels[amenity='library']
{
	[zoom>=14]
	{
		[way_area>=20000]
		{
			text-face-name: 'Arial Regular';
			text-size: 10;
			text-name: '[name]';
			text-fill: #000;
			text-wrap-width: 30;
			text-halo-fill: #eceeee;
			text-halo-radius: 2;
			text-wrap-width: 40;
		}
	}
	
	[zoom>=15]
	{
		[way_area>=10000]
		{
			text-face-name: 'Arial Bold';
			text-size: 11;
			text-name: '[name]';
			text-wrap-width: 40;
		}
	}
	
	[zoom>=16]
	{
		[way_area>=5000]
		{
			text-face-name: 'Arial Bold';
			text-size: 12;
			text-name: '[name]';
			text-wrap-width: 40;
		}
	}
	
	[zoom>=17]
	{
		[way_area>=5000]
		{
			text-face-name: 'Arial Bold';
			text-size: 14;
			text-name: '[name]';
			text-wrap-width: 40;
		}
	}
}



/* Road labels */
#tunnels[zoom>=15] {
	text-name: '[name]';
	text-fill: #777;
	text-halo-fill: @land;
}

/* zoom 12 */
#major-road-labels[highway='primary'][zoom=12],
#major-road-labels[highway='trunk'][zoom=12] {
	text-name: '[name]';
	text-face-name: 'Arial Regular';
	text-placement: line;
	text-max-char-angle-delta: 30;
	text-fill: @major;
	text-halo-radius: 2;
	text-halo-fill: @major_case;
	text-spacing: 100;
	text-placement: line;

	/*text-dy: 1;*/
	text-size: 9;
}

/* zoom 13 */
#major-road-labels[highway='primary'][zoom=13],
#major-road-labels[highway='trunk'][zoom=13],
#major-road-labels[highway='secondary'][zoom=13] {
	text-name: '[name]';
	text-face-name: 'Arial Regular';
	text-placement: line;
	text-max-char-angle-delta: 30;
	text-fill: @major;
	text-halo-radius: 2;
	text-halo-fill: @major_case;
	text-spacing: 100;
	text-placement: line;
	
	text-size: 10;
}

/* zoom 14 */
#major-road-labels[highway='trunk'][zoom=14],
#major-road-labels[highway='primary'][zoom=14],
#major-road-labels[highway='secondary'][zoom=14],
#major-road-labels[highway='tertiary'][zoom=14]
{
	text-name: '[name]';
	text-face-name: 'Arial Regular';
	text-placement: line;
	text-max-char-angle-delta: 30;
	text-fill: @major;
	text-halo-radius: 2;
	text-halo-fill: @major_case;
	text-spacing: 100;
	text-placement: line;

	text-size: 11;
}

#major-road-labels[highway='secondary'][zoom=14],
#major-road-labels[highway='tertiary'][zoom=14] 
{
	text-size: 12;
}

/* zoom 15 */
#major-road-labels[highway='trunk'][zoom=15],
#major-road-labels[highway='primary'][zoom=15],
#major-road-labels[highway='secondary'][zoom=15],
#major-road-labels[highway='tertiary'][zoom=15] {
	text-name: '[name]';
	text-face-name: 'Arial Regular';
	text-placement: line;
	text-max-char-angle-delta: 30;
	text-fill: @major;
	text-halo-radius: 2;
	text-halo-fill: @major_case;
	text-spacing: 100;
	text-placement: line;

	text-size: 12;
}
#major-road-labels[highway='secondary'][zoom=15],
#major-road-labels[highway='tertiary'][zoom=15]  {
	text-size: 12;
}

#minor-road-labels[zoom=15] {
	text-name: '[name]';
	text-face-name: 'Arial Regular';
	text-placement: line;
	text-max-char-angle-delta: 30;
	text-fill: @minor_2;
	text-halo-radius: 2;
	text-halo-fill: @minor_case;
	text-spacing: 124;

	text-size: 9;
}


/* zoom 16 */
#major-road-labels[highway='trunk'][zoom=16],
#major-road-labels[highway='primary'][zoom=16],
#major-road-labels[highway='secondary'][zoom=16],
#major-road-labels[highway='tertiary'][zoom=16] {
	text-name: '[name]';
	text-face-name: 'Arial Regular';
	text-placement: line;
	text-max-char-angle-delta: 30;
	text-fill: @major;
	text-halo-radius: 2;
	text-halo-fill: @major_case;
	text-spacing: 124;
	text-placement: line;

	text-size: 12;
}
#major-road-labels[highway='secondary'][zoom=16],
#major-road-labels[highway='tertiary'][zoom=16] {
	text-size: 12;
}

#minor-road-labels[zoom=16] {
	text-name: '[name]';
	text-face-name: 'Arial Regular';
	text-placement: line;
	text-max-char-angle-delta: 30;
	text-fill: @minor_2;
	text-halo-radius: 2;
	text-halo-fill: @minor_case;
	text-spacing: 124;

	text-size: 10;
}

/* zoom 17 */
#major-road-labels[highway='trunk'][zoom=17],
#major-road-labels[highway='primary'][zoom=17],
#major-road-labels[highway='secondary'][zoom=17],
#major-road-labels[highway='tertiary'][zoom=17] {
	text-name: '[name]';
	text-face-name: 'Arial Regular';
	text-placement: line;
	text-max-char-angle-delta: 30;
	text-fill: @major;
	text-halo-radius: 2;
	text-halo-fill: @major_case;
	text-spacing: 180;
	text-placement: line;

	text-size: 16;
}
#major-road-labels[highway='primary'][zoom=17],
#major-road-labels[highway='secondary'][zoom=17] {
	text-size: 13;
}
#major-road-labels[highway='tertiary'][zoom=17] {
	text-size: 12;
}
#minor-road-labels[zoom=17] {
	text-name: '[name]';
	text-face-name: 'Arial Regular';
	text-placement: line;
	text-max-char-angle-delta: 30;
	text-fill: @minor_2;
	text-halo-radius: 2;
	text-halo-fill: @minor_case;
	text-spacing: 180;

	text-size: 11;
}

/* zoom 18+ */
#major-road-labels[highway='trunk'][zoom>=18],
#major-road-labels[highway='primary'][zoom>=18],
#major-road-labels[highway='secondary'][zoom>=18],
#major-road-labels[highway='tertiary'][zoom>=18] {
	text-name: '[name]';
	text-face-name: 'Arial Bold';
	text-placement: line;
	text-max-char-angle-delta: 30;
	text-fill: @major;
	text-halo-radius: 2;
	text-halo-fill: @major_case;
	text-spacing: 300;
	text-placement: line;

	text-size: 16;
}
#major-road-labels[highway='primary'][zoom>=18],
#major-road-labels[highway='secondary'][zoom>=18] {
	text-size: 14;
}
#major-road-labels[highway='tertiary'][zoom>=18] {
	text-size: 12;
}
#minor-road-labels[zoom>=18] {
	text-name: '[name]';
	text-face-name: 'Arial Regular';
	text-placement: line;
	text-max-char-angle-delta: 30;
	text-fill: @minor_2;
	text-halo-radius: 2;
	text-halo-fill: @minor_case;
	text-spacing: 400;

	text-size: 12;
}

/* Subway and rail stations */
#poi-station-labels[railway='station']
{
  point-allow-overlap: false;
  point-ignore-placement: true;
  point-placement: interior;
  [zoom>=14]
  { point-file: url("images/railway_11px2.png"); }
  [zoom>=15]
  { point-file: url("images/railway_16px.png"); }
  [zoom>=16]
  { point-file: url("images/railway_16px.png"); }
}

/* Use for subway */
#poi-station-labels[railway='station'][name =~ '.+Metro\)']
{
  [zoom>=14]
  { point-file: url("images/metro_small4.png"); }
  [zoom>=15]
  { point-file: url("images/metro_12px.png"); }
  [zoom>=16]
  { point-file: url("images/metro_16px.png"); }
}

#poi-station-labels[zoom>=15][railway='station'] { 
  text-name: '[name]';
  text-face-name: 'Arial Regular';
  text-size: 9;
  text-max-char-angle-delta: 30;
  text-fill: #000;
  text-halo-radius: 2;
  text-halo-fill: @land;
  text-spacing: 100;
  text-min-distance: 10;
  text-allow-overlap: false;
  text-wrap-width: 30;
  text-dx: 0;
  text-dy: 8;
  
  [zoom>=15]
  {
    text-name: '[name]';
    text-face-name: 'Arial Regular';
    text-size: 9;
    text-halo-radius: 3;
  }
  
  [zoom>=16]
  {
    text-halo-radius: 2;
  }
  
  [zoom>=17]
  {
    text-name: '[name]';
    text-face-name: 'Arial Regular';
    text-size: 11;
    text-halo-radius: 2;
  }
}

.buildings-labels[zoom>=17]['addr:housenumber'!=''],
.node[zoom>=18]['addr:housenumber'!='']
{
	text-face-name: 'Arial Bold';
	text-size: 10;
	text-name: '[addr:housenumber]';
	text-fill: #fff;
	text-wrap-width: 80;
}

#place-labels
{
  [place='city'][zoom>=10],
  [place='town'][zoom>=10],
  [place='village'][zoom>=12],
  [place='suburb'][zoom>=13],
  [place='neighborhood']
  {
    text-name: '[name]';
    text-face-name: 'Arial Regular';
    text-fill: #000;
    text-halo-fill: @land;
    text-max-char-angle-delta: 30;
    text-wrap-width: 40;
    text-halo-radius: 2;
    text-allow-overlap: false;
    text-size: 10;
    text-spacing: 100;
    text-line-spacing: 2;
    text-wrap-width: 70;
  }
  
  [zoom>=11]
  {
  	[population>=50000]
  	{
      text-name: '[name]';
      text-face-name: 'Arial Regular';
      text-size: 16;
    }
  }
  
  [zoom>=12]
  {
  	[population>=50000]
  	{
      text-name: '[name]';
      text-face-name: 'Arial Regular';
      text-size: 15;
    }
  }
  
  [zoom>=14][zoom<=15]
  {
  	[population>=40000]
  	{
      text-name: '[name]';
      text-face-name: 'Arial Regular';
      text-size: 17;
    }
    
    [population>=15000]
  	{
      text-name: '[name]';
      text-face-name: 'Arial Regular';
      text-size: 14;
    }
  }
}


#bike-route-labels
{
  [chars>4]
  {
    text-name: '[ref]';
    text-face-name: 'Arial Bold';
    text-size: 13;
    text-halo-radius: 2;
    text-placement: line;
    
    [ncn='yes'] /* national cycle networks */
    {
      text-fill: #9463e4;
    }

    [rcn='yes'] /* regional cycle networks */
    {
      text-fill: #0083e9;
    }

    [lcn='yes'] /* local cycle networks */
    { 
      text-halo-fill: #00bf3f;
      text-fill: #fff;
    }
  }

  [chars<=4]
  {
    shield-file: url("images/shield_test4.png");
    shield-name: '[ref]';
    shield-face-name: 'Arial Bold';
    shield-size: 10;
    shield-fill: #fff;
    /*
    shield-halo-radius: 1;
    shield-halo-fill: @land;
    */
    shield-spacing: 200;
    shield-wrap-width: 30;

    [chars=1]
    {
      [ncn='yes'] /* national cycle networks */
      {
        shield-file: url("images/shield_ncn_15px.png");
      } 

      [rcn='yes'] /* regional cycle networks */
      {
        shield-file: url("images/shield_rcn_15px.png");
      }

      [lcn='yes'] /* local cycle networks */
      {
        shield-file: url("images/shield_lcn_15px.png");
      }
    }

    [chars=2]
    {
      [ncn='yes'] /* national cycle networks */
      {
        shield-file: url("images/shield_ncn_18px.png");
      } 

      [rcn='yes'] /* regional cycle networks */
      {
        shield-file: url("images/shield_rcn_18px.png");
      }

      [lcn='yes'] /* local cycle networks */
      {
        shield-file: url("images/shield_lcn_18px.png");
      }
    }

    [chars=3]
    {
      [ncn='yes'] /* national cycle networks */
      {
        shield-file: url("images/shield_ncn_26px.png");
      } 

      [rcn='yes'] /* regional cycle networks */
      {
        shield-file: url("images/shield_rcn_26px.png");
      }

      [lcn='yes'] /* local cycle networks */
      {
        shield-file: url("images/shield_lcn_26px.png");
      }
    }

    [chars=4]
    {
      [ncn='yes'] /* national cycle networks */
      {
        shield-file: url("images/shield_ncn_30px.png");
      } 

      [rcn='yes'] /* regional cycle networks */
      {
        shield-file: url("images/shield_rcn_30px.png");
      }

      [lcn='yes'] /* local cycle networks */
      {
        shield-file: url("images/shield_lcn_30px.png");
      }
    }
  }
}

