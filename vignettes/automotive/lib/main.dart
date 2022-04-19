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
  List<String> demos = const ['Wallpaper', 'Chart', 'Music', 'Shopping'];
  String mode = 'Wallpaper';
  Color themeColor = Color(0xFFD96C00);

  Widget _buildSelector() {
    return Container(
      color: Colors.black,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            for (String m in demos)
              GestureDetector(
                onTap: () {
                  setState(() {
                    mode = m;
                  });
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      _translate(m),
                      style: TextStyle(
                        fontSize: 16,
                        color: m == mode ? themeColor : Colors.white,
                        fontWeight: m == mode ? FontWeight.w600 : FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      m,
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Unica',
                        color: m == mode ? themeColor : Colors.white,
                        fontWeight: m == mode ? FontWeight.w600 : FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }

  String _translate(String mode) {
    if (mode == 'Chart') return '图表';
    if (mode == 'Wallpaper') return '壁纸';
    if (mode == 'Music') return '音乐';
    if (mode == 'Shopping') return '购物';
    return '';
  }

  Widget _buildDemo() {
    if (mode == 'Chart') return chart.App();
    if (mode == 'Wallpaper') return galaxy.App();
    if (mode == 'Music') return carousel.App();
    if (mode == 'Shopping') return zoom_animation.App();

    return SizedBox.shrink();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Builder(builder: (context) {
            return MediaQuery(
              data: MediaQuery.of(context).copyWith(textScaleFactor: 1.5),
              child: Row(
                children: [
                  Expanded(child: _buildSelector()),
                  Expanded(flex: 4, child: _buildDemo()),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}
