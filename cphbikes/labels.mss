/* roads */
@highway_case: @land;
@major_text: black;
@major_text_case: @major;
@minor:			#999;
@minor_2:		black;
@minor_case:	white;
@service:		#666;
@service_case:	@land;
@path:			white;
@path_case:		#ededed;
@rail: 			#444;
@aeroway: 		#eee;

@label: black;
@label_light: mix( black, @land, 70% );

@label_scale: @scale * 1.2;
@label_halo: @scale * 1;

@label_scale_water: 10;
@label_halo_water: lighten( @water, 20% );

@label_scale_green: 10;
@label_halo_green: lighten( @land, 20% );

@label_scale_building: 10;
@label_halo_building: lighten( @land, 20% );

@label_road: @label;
@label_roads_halo: @scale * 2;


@char_spacing: 0.3;


@major_label_c0: 22 * @label_scale;
@major_label_c1: 15 * @label_scale;
@major_label_c2: 12 * @label_scale;
@major_label_c3: 10 * @label_scale;

@minor_label_c0: 19 * @label_scale;
@minor_label_c1: 13 * @label_scale;
@minor_label_c2: 11 * @label_scale;
@minor_label_c3: 9 * @label_scale;


@label_halo_place: lighten( @land, 20% );

@place_c0: 22 * @label_scale;
@place_c1: 14 * @label_scale;
@place_c2: 12 * @label_scale;
@place_c3: 11 * @label_scale;
@place_c4: 10 * @label_scale;
@place_c5: 9 * @label_scale;



/* Parks and water labels */
#water-bodies-labels
{
  ::z9[zoom=9][area>100000000],
  ::z10[zoom=10][area>100000000],
  ::z11[zoom=11][area>25000000],
  ::z12[zoom=12][area>5000000],
  ::z13[zoom=13][area>2000000],
  ::z14[zoom=14][area>200000],
  ::z15[zoom=15][area>50000],
  ::z16[zoom=16][area>10000],
  ::z17[zoom>=17]
  {
  	text-name: '[name]';
  	text-face-name: 'Arial Italic';
  	text-fill: mix( @water, @label, 50% );
  	text-halo-fill: @water;
  	text-placement: point;
  	text-max-char-angle-delta: 30;
  	text-halo-radius: @label_halo;
  	text-allow-overlap: false;
  	text-size: @label_scale * @label_scale_water;
  	text-spacing: 100;
  	text-line-spacing: -5;
  	text-wrap-width: 70;
		text-character-spacing: @char_spacing;
  }
}

#green-areas-labels
{
  ::z12[zoom=12][area>4000000],
  ::z13[zoom=13][area>2000000],
  ::z14[zoom=14][area>200000],
  ::z15[zoom=15][area>50000],
  ::z16[zoom=16][area>10000],
  ::z17[zoom>=17] 
  {
  	::playground[leisure='playground']
  	{
    	text-name: '[name]';
    	text-face-name: 'Arial Italic';
    	text-fill: @label;
    	text-placement: point;
    	text-max-char-angle-delta: 30;
    	text-halo-radius: @label_halo;
    	text-allow-overlap: false;
    	text-size: @label_scale * @label_scale_green;
    	text-spacing: 100;
    	text-line-spacing: -5;
    	text-wrap-width: 70;
    	text-halo-fill: @label_halo_green;
  		text-character-spacing: @char_spacing;
    }
  	text-name: '[name]';
  	text-face-name: 'Arial Italic';
  	text-fill: @label;
  	text-placement: point;
  	text-max-char-angle-delta: 30;
  	text-halo-radius: @label_halo;
  	text-allow-overlap: false;
  	text-size: @label_scale * @label_scale_green;
  	text-spacing: 100;
  	text-line-spacing: -5;
  	text-wrap-width: 70;
  	text-halo-fill: @label_halo_green;
		text-character-spacing: @char_spacing;
  }
}

#buildings-labels
{
  [shop='mall'],
  [amenity='theatre'],
  [amenity='university'],
  [amenity='hospital'],
  [amenity='public_building'],
  [amenity='place_of_worship'],
  [amenity='townhall'],
  [amenity='library']
  {
  	::z14[zoom=14][way_area>=20000],
  	::z15[zoom=15][way_area>=10000],
  	::z16[zoom=16][way_area>=5000],
  	::z17[zoom>=17][way_area>=5000]
		{
			text-face-name: @font;
			text-size: @label_scale * @label_scale_building;
			text-name: '[name]';
			text-fill: @label;
    	text-allow-overlap: false;
			text-wrap-width: 30;
			text-halo-fill: darken(@land, 0%);
			text-halo-radius: @label_halo;
			text-wrap-width: 40;
  		text-character-spacing: @char_spacing;
		}
  }
}


// road labels

#major-road-labels[zoom>=11]
{
  [zoom<=13] { text-size: @major_label_c3; }
  [zoom>=14][zoom<=16] { text-size: @major_label_c2; }
  [zoom>=17][zoom<=18] { text-size: @major_label_c1; }
  [zoom>=19] { text-size: @major_label_c0; }
  
  text-name: '[name]';
	text-face-name: @font;
	text-placement: line;
	text-max-char-angle-delta: 30;
	text-fill: @label_road;
	text-halo-fill: @major;
	text-halo-radius: @label_roads_halo;
	text-character-spacing: 0.5;
	text-spacing: 200;
	text-avoid-edges: true;
	text-allow-overlap: false;
	text-character-spacing: @char_spacing;
}

#minor-road-labels[zoom>=15]
{
  [zoom>=15][zoom<=16] { text-size: @minor_label_c2; }
  [zoom>=17][zoom<=18] { text-size: @minor_label_c1; }
  [zoom>=19] { text-size: @minor_label_c0; }
	
	text-name: '[name]';
	text-face-name: @font;
	text-placement: line;
	text-max-char-angle-delta: 30;
	text-fill: @label_road;
	text-halo-radius: @label_roads_halo;
	text-halo-fill: @minor;
	text-spacing: 124;
	text-min-distance: 200;
	text-character-spacing: 0.5;
	text-avoid-edges: true;
	text-allow-overlap: false;
	text-character-spacing: @char_spacing;
}


// address numbers

#buildings-labels[zoom>=17]['addr:housenumber'!=''],
#copenhagen_point[zoom>=18]['addr:housenumber'!='']
{
	text-face-name: 'Arial Bold';
	text-size: @label_scale * 9;
	text-name: '[addr:housenumber]';
	text-fill: darken( @building, 20% );
	text-wrap-width: 80;
	text-halo-radius: 0.5;
	text-halo-fill: @land;
	text-character-spacing: @char_spacing;
}


#place-labels
{
  ::capital[zoom>=7][zoom<=15]
  {
    [place='city'][population>=300000]
    {
      text-size: 0;
      text-name: '[name]';
      text-face-name: @font_bold;
      text-fill: @label;
      text-halo-fill: @label_halo_place;
      text-wrap-width: 40;
      text-halo-radius: @label_halo;
      text-allow-overlap: false;
      text-line-spacing: 2;
      text-wrap-width: 70;
      text-character-spacing: @char_spacing;
      
      [zoom>=8][zoom<=12] { text-size: @place_c1; }
      [zoom>=13][zoom<=14] { text-size: @place_c0; }
      [zoom=15] { text-size: @place_c0; text-transform: uppercase; text-face-name: @font_bold; }
    }
  }

  ::city[zoom>=8][zoom<=15]
  {
    [place='city'][population<300000]
    {
      text-size: 0;
      text-name: '[name]';
      text-face-name: @font;
      text-fill: @label;
      text-halo-fill: @label_halo_place;
      text-wrap-width: 40;
      text-halo-radius: @label_halo;
      text-allow-overlap: false;
      text-line-spacing: 2;
      text-wrap-width: 70;
      text-character-spacing: @char_spacing;
      
      [zoom>=8][zoom<=12] { text-size: @place_c2; }
      [zoom>=13][zoom<=14] { text-size: @place_c1; }
      [zoom=15] { text-size: @place_c1; text-transform: uppercase; text-face-name: @font_bold; }
    }
  }
  
  ::town_large[zoom>=9][zoom<=16]
  {
    [place='town'][population>=10000],
    [place='suburb']
    {
      text-size: 0;
      text-name: '[name]';
      text-face-name: @font;
      text-fill: @label;
      text-halo-fill: @label_halo_place;
      text-wrap-width: 40;
      text-halo-radius: @label_halo;
      text-allow-overlap: false;
      text-line-spacing: 2;
      text-wrap-width: 70;
      text-character-spacing: @char_spacing;

      [place='suburb'] { text-fill: @label_light; }
      
      [zoom>=10][zoom<=14] { text-size: @place_c3; }
      [zoom>=15][zoom<=16] { text-size: @place_c2; text-transform: uppercase; text-face-name: @font_bold; }
    }
  }

  ::town_small[zoom>=10][zoom<=17]
  {
    [place='town'][population<10000],
    [place='neighborhood']
    {
      text-size: 0;
      text-name: '[name]';
      text-face-name: @font;
      text-fill: @label;
      text-halo-fill: @label_halo_place;
      text-wrap-width: 40;
      text-halo-radius: @label_halo;
      text-allow-overlap: false;
      text-line-spacing: 2;
      text-wrap-width: 70;
      text-character-spacing: @char_spacing;
      
      [place='neighborhood'] { text-fill: @label_light; }
      [zoom>=10][zoom<=14] { text-size: @place_c4; }
      [zoom>=15][zoom<=17] { text-size: @place_c3; text-transform: uppercase; text-face-name: @font_bold; }
    }
  }

  ::village_big[zoom>=10][zoom<=16]
  {
    [place='village'][population>=2000]
    {
      text-size: 0;
      text-name: '[name]';
      text-face-name: @font;
      text-fill: @label;
      text-halo-fill: @label_halo_place;
      text-wrap-width: 40;
      text-halo-radius: @label_halo;
      text-allow-overlap: false;
      text-line-spacing: 2;
      text-wrap-width: 70;
      text-character-spacing: @char_spacing;

      [zoom>=10][zoom<=14] { text-size: @place_c5; }
      [zoom>=15][zoom<=16] { text-size: @place_c4; text-transform: uppercase; text-face-name: @font_bold; }
    }
  }
  
  ::village_small[zoom>=12][zoom<=17]
  {
    [place='village'][population<1000]
    {
      text-size: 0;
      text-name: '[name]';
      text-face-name: @font;
      text-fill: @label;
      text-halo-fill: @label_halo_place;
      text-wrap-width: 40;
      text-halo-radius: @label_halo;
      text-allow-overlap: false;
      text-line-spacing: 2;
      text-wrap-width: 70;
      text-character-spacing: @char_spacing;

      [zoom>=12][zoom<=14] { text-size: @place_c5; }
      [zoom>=15][zoom<=17] { text-size: @place_c4; text-transform: uppercase; text-face-name: @font_bold; }
    }
  }
}
