import 'package:flutter/material.dart';

class BallPong extends StatelessWidget {
  final double? x;
  final double? y;
  BallPong({this.x, this.y});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment(x!, y!),
      child: Container(
        decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white),
        width: 20,
        height: 20,
      ),
    );
  }
}
