import 'package:flutter/material.dart';
import 'package:shared/env.dart';

import './demo.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  static final String _pkg = 'chart';

  static String get pkg => Env.getPackage(_pkg);

  static String get bundle => Env.getBundle(_pkg);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SpendingTrackerDemo(),
    );
  }
}
