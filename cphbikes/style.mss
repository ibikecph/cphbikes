@water: hsl( 195, 95%, 75% );
@land: hsl( 40, 35%, 97% );
@park: hsl( 75, 90%, 60% );
@farmland: hsl( 60, 60%, 90% );
@sand: hsl( 50, 80%, 90% );
@road: white;
@runway: hsl( 180, 8%, 92% );

@font: 'Arial Regular';
@font_bold: 'Arial Bold';

Map {
  background-color: @water;
}

#coastline {
  line-color: @land;
  line-width: 0.5;
  polygon-opacity: 1;
  polygon-fill: @land;
}
