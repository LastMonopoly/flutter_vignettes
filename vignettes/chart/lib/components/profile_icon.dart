import 'package:flutter/material.dart';
import 'package:chart/main.dart';

class ProfileIcon extends StatelessWidget {
  @override
  Widget build(context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Image.asset('images/headshot.png', package: App.pkg),
    );
  }
}
