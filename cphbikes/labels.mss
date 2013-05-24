


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
@major:			#929292;
@major_case:	@land;
@minor:			#999;
@minor_2:		#666;
@minor_case:	@land;
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



.buildings-labels[railway='station'],
.buildings-labels[shop='mall'],
.buildings-labels[amenity='theatre'],
.buildings-labels[amenity='university'],
.buildings-labels[amenity='hospital'],
.buildings-labels[amenity='public_building']
{
	[zoom=14]
	{
		[way_area>=100000]
		{
			text-face-name: 'Arial Bold';
			text-size: 12;
			text-name: '[name]';
			text-fill: #000;
			text-wrap-width: 80;
		}
	}
	
	[zoom=15]
	{
		[way_area>=50000]
		{
			text-face-name: 'Arial Bold';
			text-size: 12;
			text-name: '[name]';
			text-fill: #000;
			text-wrap-width: 80;
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
	text-face-name: 'Arial Bold';
	text-placement: line;
	text-max-char-angle-delta: 30;
	text-fill: @major;
	text-halo-radius: 2;
	text-halo-fill: @major_case;
	text-spacing: 100;
	text-placement: line;

	text-dy: 7;
	text-size: 12;
}

/* zoom 13 */
#major-road-labels[highway='primary'][zoom=13],
#major-road-labels[highway='trunk'][zoom=13],
#major-road-labels[highway='secondary'][zoom=13] {
	text-name: '[name]';
	text-face-name: 'Arial Bold';
	text-placement: line;
	text-max-char-angle-delta: 30;
	text-fill: @major;
	text-halo-radius: 2;
	text-halo-fill: @major_case;
	text-spacing: 100;
	text-placement: line;
	
	text-dy: 8;
	text-size: 13;
}

/* zoom 14 */
#major-road-labels[highway='trunk'][zoom=14],
#major-road-labels[highway='primary'][zoom=14],
#major-road-labels[highway='secondary'][zoom=14],
#major-road-labels[highway='tertiary'][zoom=14]
{
	text-name: '[name]';
	text-face-name: 'Arial Bold';
	text-placement: line;
	text-max-char-angle-delta: 30;
	text-fill: @major;
	text-halo-radius: 2;
	text-halo-fill: @major_case;
	text-spacing: 100;
	text-placement: line;

	text-size: 14;
	text-dy: 9;
}

#major-road-labels[highway='secondary'][zoom=14],
#major-road-labels[highway='tertiary'][zoom=14] 
{
	text-size: 12;
	text-dy: 7;
}

/* zoom 15 */
#major-road-labels[highway='trunk'][zoom=15],
#major-road-labels[highway='primary'][zoom=15],
#major-road-labels[highway='secondary'][zoom=15],
#major-road-labels[highway='tertiary'][zoom=15] {
	text-name: '[name]';
	text-face-name: 'Arial Bold';
	text-placement: line;
	text-max-char-angle-delta: 30;
	text-fill: @major;
	text-halo-radius: 2;
	text-halo-fill: @major_case;
	text-spacing: 100;
	text-placement: line;

	text-size: 15;
	text-dy: 12;
}
#major-road-labels[highway='secondary'][zoom=15],
#major-road-labels[highway='tertiary'][zoom=15]  {
	text-size: 12;
	text-dy: 11;
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
	text-dy: 10;

	text-size: 10;
}


/* zoom 16 */
#major-road-labels[highway='trunk'][zoom=16],
#major-road-labels[highway='primary'][zoom=16],
#major-road-labels[highway='secondary'][zoom=16],
#major-road-labels[highway='tertiary'][zoom=16] {
	text-name: '[name]';
	text-face-name: 'Arial Bold';
	text-placement: line;
	text-max-char-angle-delta: 30;
	text-fill: @major;
	text-halo-radius: 2;
	text-halo-fill: @major_case;
	text-spacing: 124;
	text-placement: line;

	text-size: 14;
	text-dy: 13;
}
#major-road-labels[highway='secondary'][zoom=16],
#major-road-labels[highway='tertiary'][zoom=16] {
	text-size: 13;
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
	text-dy: 10;

	text-size: 10;
}

/* zoom 17 */
#major-road-labels[highway='trunk'][zoom=17],
#major-road-labels[highway='primary'][zoom=17],
#major-road-labels[highway='secondary'][zoom=17],
#major-road-labels[highway='tertiary'][zoom=17] {
	text-name: '[name]';
	text-face-name: 'Arial Bold';
	text-placement: line;
	text-max-char-angle-delta: 30;
	text-fill: @major;
	text-halo-radius: 2;
	text-halo-fill: @major_case;
	text-spacing: 180;
	text-placement: line;
	text-dy: 16;

	text-size: 16;
}
#major-road-labels[highway='primary'][zoom=17],
#major-road-labels[highway='secondary'][zoom=17] {
	text-size: 13;
	text-dy: 14;
}
#major-road-labels[highway='tertiary'][zoom=17] {
	text-size: 12;
	text-dy: 13;
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
	text-dy: 13;

	text-size: 12;
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

/* Subway stations and icons */
#poi-stations[zoom>=18][railway='station'] { 
	/* this doesn't have a data source right now */
	text-name: '[name]';
	text-face-name: 'Arial Bold';
	text-size: 12;
	text-placement: point;
	text-max-char-angle-delta: 30;
	text-fill: #4581C3;
	text-halo-radius: 1;
	text-halo-fill: @land;
	text-spacing: 100;
	text-allow-overlap: true;
	text-wrap-width: 30;
	text-dx: 0;
	text-dy: 8;
}

.buildings-labels[zoom>=17]['addr:housenumber'=~'.+'],
.node[zoom>=18]['addr:housenumber'=~'.+']
{
	text-face-name: 'Arial Regular';
	text-size: 9;
	text-name: '[addr:housenumber]';
	text-fill: #848484;
	text-wrap-width: 80;
}

#place-labels
{
  [place='city'][zoom>=10],
  [place='town'][zoom>=10],
  [place='village'][zoom>=12],
  [place='suburb'][zoom>=13],
  [place='neighborhood'][zoom>=13],
  {
    text-name: '[name]';
    text-face-name: 'Arial Regular';
    text-fill: #fff;
    text-halo-fill: @land;
    text-max-char-angle-delta: 30;
    text-wrap-width: 40;
    text-halo-radius: 2;
    text-allow-overlap: false;
    text-size: 13;
    text-spacing: 100;
    text-line-spacing: -5;
    text-wrap-width: 70;
  }
}
