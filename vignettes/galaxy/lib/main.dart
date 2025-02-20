import 'package:flutter/material.dart';
import 'package:shared/env.dart';

import 'demo.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  static String _pkg = "galaxy";
  static String get pkg => Env.getPackage(_pkg);
  static String get bundle => Env.getBundle(_pkg);

  @override
  Widget build(BuildContext context) {
    // SystemChrome.setEnabledSystemUIOverlays(const []);
    return ConstellationsListDemo();
  }
}
