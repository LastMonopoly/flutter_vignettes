import 'package:flutter/material.dart';
import 'package:carousel/main.dart' as carousel;
import 'package:chart/main.dart' as chart;
import 'package:galaxy/main.dart' as galaxy;
import 'package:zoom_animation/main.dart' as zoom_animation;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<String> demos = const ['chart', 'carousel', 'zoom', 'galaxy'];
  String mode = 'chart';

  Widget _buildSelector() {
    return Row(
      children: [
        for (String m in demos)
          Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  mode = m;
                });
              },
              child: Container(
                color: Colors.black,
                child: Center(
                  child: Text(m, style: TextStyle(color: Colors.white)),
                ),
              ),
            ),
          ),
      ],
    );
  }

  Widget _buildDemo() {
    if (mode == 'chart') return chart.App();
    if (mode == 'galaxy') return galaxy.App();
    if (mode == 'carousel') return carousel.App();
    if (mode == 'zoom') return zoom_animation.App();

    return SizedBox.shrink();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              Expanded(child: _buildSelector()),
              Expanded(flex: 10, child: _buildDemo()),
            ],
          ),
        ),
      ),
    );
  }
}
