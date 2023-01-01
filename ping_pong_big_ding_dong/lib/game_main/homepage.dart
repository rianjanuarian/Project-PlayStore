import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ping_pong_big_ding_dong/game_main/ball.dart';
import 'package:ping_pong_big_ding_dong/game_main/brick.dart';
import 'package:ping_pong_big_ding_dong/game_main/coverscreen.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
//ball variables
  double ballX = 0;
  double ballY = 0;
  //game settings
  bool gameHasStarted = false;

  void startGame() {
    gameHasStarted = true;
    Timer.periodic(Duration(milliseconds: 1), (timer) {
      setState(() {
        ballY += 0.01;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: startGame,
      child: Scaffold(
        backgroundColor: Colors.grey[900],
        body: Center(
          child: Stack(
            children: [
              //tap everything
              CoverScreen(
                gameHasStarted: gameHasStarted,
              ),
              //top brick
              BrickPong(
                x: 0,
                y: -0.9,
              ),
              //bottom brick
              BrickPong(x: 0, y: 0.9),
              //ball
              BallPong(
                x: ballX,
                y: ballY,
              )
            ],
          ),
        ),
      ),
    );
  }
}
