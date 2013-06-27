#necountries {
  [zoom >= 1][zoom < 4] {
    line-width: 0.5;
    line-color: darken( @land, 20% );
  }
}

#nepopulated {
  [SCALERANK = 1][zoom >= 3][zoom <= 7] {
    text-name: "[NAME]";
    text-size: @scale * 14;
    text-fill: grey;
    text-face-name: @font;
    text-halo-radius: @scale * 1;
    text-dy: 2;
  }
}

#world {
  [zoom >= 0][zoom < 10] {
    polygon-fill: @land;
  }
}

#coast-poly {
  [zoom >= 10] {
    polygon-fill: @land;
  }
}

#builtup {
  [zoom >= 8][zoom < 10] {
    polygon-fill: @residential;
  }
}