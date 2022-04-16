import 'package:flutter/material.dart';
import 'package:carousel/main.dart' as carousel;
import 'package:chart/main.dart' as chart;
import 'package:galaxy/main.dart' as galaxy;
import 'package:zoom_animation/main.dart' as zoom_animation;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return carousel.App();
    // return chart.App();
    // return galaxy.App();
    return zoom_animation.App();
  }
}
