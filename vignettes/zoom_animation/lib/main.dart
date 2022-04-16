import 'package:flutter/material.dart';
import 'package:shared/env.dart';

import 'demo.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  static String _pkg = "zoom_animation";
  static String get pkg => Env.getPackage(_pkg);

  @override
  Widget build(BuildContext context) {
    return ProductDetailZoomDemo();
  }
}
