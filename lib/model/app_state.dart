import 'package:flutter/material.dart';

class AppState {
  double sliderFontSize;
  bool bold;
  bool italic;

  AppState(
      {@required this.sliderFontSize, this.bold = false, this.italic = false});

  AppState.fromAppState(AppState another) {
    sliderFontSize = another.sliderFontSize;
    italic = another.italic;
    bold = another.bold;
  }

  double get viewFontSize => sliderFontSize * 30;
}
