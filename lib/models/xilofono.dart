import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:xylophone_app/models/tecla.dart';

import '../util.dart';

Color color = Color.new(0);

class Xilofono {
  int colorBase;
  AudioPlayer audioPlayer = AudioPlayer();
  //int red, green, blue;
  List<Tecla> teclas = [];
  List<int> rgb = [0, 0, 0];

  Xilofono(int n, [this.colorBase = 0]) {
    rgb = intToRgb(colorBase);
    for (int i = 0; i < n; i++) {
      teclas.add(Tecla(
          id: i,
          color: rgbToIntColor(
              rgb[0] + (i * 20), rgb[1] + (i * 5), rgb[2] + (i * 30)),
          tocarNota: () => {playSound(i + 1)}));
    }
  }

  void playSound(int number) {
    audioPlayer.play(AssetSource("audios/note$number.wav"));
  }
}
