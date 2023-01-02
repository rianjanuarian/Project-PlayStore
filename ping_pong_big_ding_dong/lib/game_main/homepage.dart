import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ping_pong_big_ding_dong/game_main/ball.dart';
import 'package:ping_pong_big_ding_dong/game_main/brick.dart';
import 'package:ping_pong_big_ding_dong/game_main/button_direction.dart';
import 'package:ping_pong_big_ding_dong/game_main/coverscreen.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

enum direction { UP, DOWN, LEFT, RIGHT }

class _HomePageState extends State<HomePage> {
  //button direction

  double buttonDirectionRight = 0.9;
  double buttonDirectionY = 0.9;
  double buttonDirectionLeft = -0.9;
  //player variabel (bottom brick)
  double playerX = 0;
  double playerWidth = 0.4;
//ball variables
  double ballX = 0;
  double ballY = 0;
  var ballYDirection = direction.DOWN;
  var ballXDirection = direction.LEFT;

  //game settings
  bool gameHasStarted = false;

  void startGame() {
    gameHasStarted = true;
    Timer.periodic(Duration(milliseconds: 1), (timer) {
      // update direction
      updateDirection();

      moveBall();
      if (isPlayerDead()) {
        timer.cancel();
        resetGame();
      }
    });
  }

  void resetGame() {
    setState(() {
      gameHasStarted = false;
      ballX = 0;
      ballY = 0;
      playerX = -0.2;
    });
  }

  bool isPlayerDead() {
    if (ballY >= 1) {
      return true;
    }
    return false;
  }

  void updateDirection() {
    setState(() {
      //update vertikal
      if (ballY >= 0.66 && playerX >= ballX && playerX + playerWidth <= ballX) {
        ballYDirection = direction.UP;
      } else if (ballY <= -0.9) {
        ballYDirection = direction.DOWN;
      }
      //update horizontal
      if (ballX >= 1) {
        ballXDirection = direction.LEFT;
      } else if (ballX <= -1) {
        ballXDirection = direction.RIGHT;
      }
    });
  }

  void moveBall() {
    setState(() {
      //vertikal
      if (ballYDirection == direction.DOWN) {
        ballY += 0.01;
      } else if (ballYDirection == direction.UP) {
        ballY -= 0.01;
      }
      //horizontal
      if (ballXDirection == direction.LEFT) {
        ballX -= 0.01;
      } else if (ballXDirection == direction.RIGHT) {
        ballX += 0.01;
      }
    });
  }

  void moveLeft() {
    setState(() {
      playerX -= 0.15;
    });
  }

  void moveRight() {
    setState(() {
      playerX += 0.15;
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
                brickWidth: playerWidth,
              ),

              //bottom brick
              BrickPong(
                x: playerX,
                y: 0.7,
                brickWidth: playerWidth,
              ),
              //ball
              BallPong(
                x: ballX,
                y: ballY,
              ),
              Container(
                alignment: Alignment(playerX, 0.7),
                child: Container(
                  width: 2,
                  height: 20,
                  color: Colors.red,
                ),
              ),

              //right direction arrow key
              Container(
                alignment: Alignment(buttonDirectionRight, buttonDirectionY),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: SizedBox(
                    height: 90,
                    width: 90,
                    child: ElevatedButton(
                        onPressed: () {
                          moveRight();
                        },
                        child: Text(
                          ">",
                          style: TextStyle(fontFamily: 'Poppins', fontSize: 30),
                        )),
                  ),
                ),
              ),
              //left direction arrow key
              Container(
                alignment: Alignment(buttonDirectionLeft, buttonDirectionY),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: SizedBox(
                    height: 90,
                    width: 90,
                    child: ElevatedButton(
                        onPressed: () {
                          moveLeft();
                        },
                        child: Text(
                          "<",
                          style: TextStyle(fontFamily: 'Poppins', fontSize: 30),
                        )),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
