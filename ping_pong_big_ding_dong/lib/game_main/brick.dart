import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class BrickPong extends StatelessWidget {
  final double? x;
  final double? y;
  final brickWidth;
  final thisIsEnemy;

  BrickPong({this.x, this.y, this.brickWidth, this.thisIsEnemy});
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment((2 * x! + brickWidth) / (2 - brickWidth), y!),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          color: (thisIsEnemy) ? Colors.red : Colors.blue,
          height: 20,
          width: MediaQuery.of(context).size.width * brickWidth / 2,
        ),
      ),
    );
  }
}
