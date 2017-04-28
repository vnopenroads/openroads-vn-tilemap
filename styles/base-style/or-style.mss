#network {
  line-color: rgba(0,0,0,0);

 ::case[zoom>=8]{
  line-width: 0;
  line-color: #6a6a56;
  [zoom>=14] { line-width:2; }
  [zoom>=15] { line-width:4; }
  [zoom>=16] { line-width:6.5; }

    [or_responsibility = "national"] { 

      line-color: mix(#e06d5f, #000000, 50);
      line-width: 1;
      [zoom>=0] { line-width: 0; }
      [zoom>=6] { line-width:0.2; }
      [zoom>=7] { line-width:0.2; }
      [zoom>=8] { line-width:0.6; }
      [zoom>=10] { line-width:3; }
      [zoom>=13] { line-width:4.5;  }
      [zoom>=14] { line-width:6.5; }
      [zoom>=15] { line-width:8.5; }
      [zoom>=16] { line-width:11; }
    }

    [or_responsibility='provincial'] {
      line-join:round;
      line-color: mix(#eab056, #000000, 40);
      #road { line-cap: round; }
      [zoom>=0] { line-width: 0; }
      [zoom>=6] { line-width:0.15; }
      [zoom>=7] { line-width:0.2; }
      [zoom>=8] { line-width:0.6; }
      [zoom>=10] { line-width:2; }
      [zoom>=13] { line-width:4; }
      [zoom>=14] { line-width:6; }
      [zoom>=15] { line-width:8; }
      [zoom>=16] { line-width:10; }
    }

    [or_responsibility='municipal']{
      line-join:round;
      line-color: mix(#ffff7e, #000000, 40);
      #road { line-cap: round; }
      [zoom>=0] { line-width: 0; }
      [zoom>=12] { line-width:1.25; }
      [zoom>=14] { line-width:2; }
      [zoom>=15] { line-width:4; }
      [zoom>=16] { line-width:6.5; }
    }

    [or_responsibility='barangay']{
      line-join:round;
      line-color: mix(#eaeaea, #000000, 40);
      line-width: 0;
      #road { line-cap: round; }
      [zoom>=0] { line-width: 0; }
      [zoom>=12] { line-width:1.5; }
      [zoom>=15] { line-width:4; }
      [zoom>=16] { line-width:6; }
    }

  }

  ::fill[zoom>=8]['mapnik::geometry_type'=2] {
    line-width: 0;
    line-color: #c2baa6;

    [zoom>=13] { line-width: 1; }
    [zoom>=15] { line-width:1.5; }
    [zoom>=16] { line-width:4; }

    [or_responsibility='national'][zoom>=8] {
      line-join:round;
      #road, #bridge { line-cap:round; }
      line-color:#e06d5f;
      [zoom>=0] { line-width: 0; }
      [zoom>=6] { line-width:0.5; }
      [zoom>=8] { line-width:1; }
      [zoom>=10] { line-width:1.5; }
      [zoom>=12] { line-width: 2;}
      [zoom>=13] { line-width:2.5; }
      [zoom>=14] { line-width:3.5; }
      [zoom>=15] { line-width:5; }
      [zoom>=16] { line-width:7; }
    }
    [or_responsibility='provincial'][zoom>=8] {
      line-join:round;
      #road, #bridge { line-cap: round; }
      line-color: #eab056;
      [zoom>=8] { line-width: 0.35; }
      [zoom>=10] { line-width:0.55; }
      [zoom>=13] { line-width:1.25; }
      [zoom>=14] { line-width:2.5; }
      [zoom>=15] { line-width:3.5; }
      [zoom>=16] { line-width:6; }
    }
    [or_responsibility='municipal'][zoom>=12] {
      line-width: 0.5;
      line-join:round;
      line-color:#ffff7e;
      [zoom>=12] { line-width:0.5; }
      [zoom>=13] { line-width:1.4; }
      [zoom>=15] { line-width:2.5; }
      [zoom>=16] { line-width:4; }
    }
    [or_responsibility='barangay'][zoom>=12]{
      line-join:round;
      line-color: #eaeaea;
      line-width: 0.5;
      #road { line-cap: round; }
      [zoom>=12] { line-width:0.5; }
      [zoom>=13] { line-width: 1; }
      [zoom>=15] { line-width:1.5; }
      [zoom>=16] { line-width:4; }
    }
  }

  #mun-boundaries-no-maritime[zoom>=7]{
    line-opacity: 0.25;
    line-join: round;
    line-width: 0.5px;
    line-color: black;
    [zoom>=8]{ 
      line-width: 1px; 
      line-opacity: 0.3; 
    }
    [zoom>=9]{
      line-opacity: 0.4;
    }
    [zoom>=10]{
      line-width: 1.5px;
    }
    [zoom>=12]{
      line-width: 4px;
    }
  }

  #region-boundaries-no-maritime[zoom>=6]{
    line-join: round;
    line-color: black;
    line-width: 0.5;
    [zoom>=6] { line-width: 0.5; }
    [zoom>=8] { line-width: 1; }
    [zoom>=10] { line-width: 1.5; }
    [zoom>=11] { line-width: 2.5; }
    [zoom>=11] { line-width: 3; }
    [zoom>=14] { line-width: 5; }
  }

  #prov-labels[zoom>=7]{
    text-name: '[NAME]';
    text-face-name: Roboto Bold;
    text-fill: #efefef;
    text-halo-fill: #333;
    text-size: 12;
    text-halo-radius: 1;
    text-wrap-width: 50;
  }

  #mun-labels{
    [zoom>=10]{
    text-name: '[NAME]';
    text-face-name: Roboto;
    text-fill: #efefef;
    text-size: 12;
    text-halo-fill: #333;
    text-halo-radius: 1.5;
    text-wrap-width: 50;
    }
  }
}
