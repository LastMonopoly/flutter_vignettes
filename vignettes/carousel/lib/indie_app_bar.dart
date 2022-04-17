import 'package:flutter/material.dart';
import 'main.dart';

class IndieAppBar extends StatelessWidget {
  const IndieAppBar({Key key}) : super(key: key);

  @override
  Widget build(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
          child: Icon(Icons.volume_up_rounded, size: 28),
          // child: SizedBox(height: 32),
        ),
        Container(
          color: Color(0xFF010101),
          child: Text(
            'FRESH BEATS BY',
            textAlign: TextAlign.right,
            style: TextStyle(
              package: App.pkg,
              letterSpacing: 2,
              fontFamily: 'Staatliches',
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 11,
            ),
          ),
          padding: EdgeInsets.only(top: 8, bottom: 8, left: 50, right: 16),
        ),
      ],
    );
  }
}
