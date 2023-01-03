import 'dart:async';
import 'dart:ui';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get_core/get_core.dart';
import 'package:lottie/lottie.dart';
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
  //Score time
  int scoreTime = 0;
  bool isStop = true;
  //button direction
  double buttonDirectionRight = 0.9;
  double buttonDirectionY = 0.9;
  double buttonDirectionLeft = -0.9;

  //player variabel (bottom brick)
  double playerX = -0.2;
  double brickWidth = 0.4;

  //enemy variables
  double enemyX = -0.2;

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
      highScore();
      // update direction
      updateDirection();

      moveBall();

      moveEnemy();

      if (isPlayerDead()) {
        timer.cancel();

        _showDialog();
      }
    });
  }

  void moveEnemy() {
    setState(() {
      enemyX = ballX;
    });
  }

  void highScore() {
    scoreTime = 0;
    isStop = false;
    Timer.periodic(Duration(seconds: 1), (timer) {
      if (isStop) {
        timer.cancel();
      } else {
        setState(() {
          scoreTime++;
        });
      }
    });
  }

  void _showDialog() {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            backgroundColor: Color.fromARGB(255, 58, 3, 63),
            title: Center(
              child: Column(
                children: [
                  Container(
                    child: Lottie.asset('assets/pingpong.json'),
                  ),
                  Text(
                    'Score : $scoreTime',
                    style:
                        TextStyle(fontFamily: 'Poppins', color: Colors.white),
                  ),
                ],
              ),
            ),
            actions: [
              GestureDetector(
                onTap: resetGame,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Container(
                    padding: EdgeInsets.all(7),
                    color: Colors.deepPurple[100],
                    child: Text(
                      "Play Again",
                      style:
                          TextStyle(color: Colors.black, fontFamily: 'Poppins'),
                    ),
                  ),
                ),
              )
            ],
          );
        });
  }

  void resetGame() {
    isStop = true;
    Get.back();
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
      if (ballY >= 0.9 && playerX + brickWidth >= ballX && playerX <= ballX) {
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
        ballY += 0.005;
      } else if (ballYDirection == direction.UP) {
        ballY -= 0.005;
      }
      //horizontal
      if (ballXDirection == direction.LEFT) {
        ballX -= 0.005;
      } else if (ballXDirection == direction.RIGHT) {
        ballX += 0.005;
      }
    });
  }

  void moveLeft() {
    setState(() {
      if (!(playerX - 0.1 <= -1)) {
        playerX -= 0.2;
      }
    });
  }

  void moveRight() {
    setState(() {
      if (!(playerX + brickWidth >= 1)) {
        playerX += 0.2;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 3, 12, 92),
      body: Center(
        child: Stack(
          children: [
            //right direction arrow key
            Container(
              alignment: Alignment(buttonDirectionRight, buttonDirectionY),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width / 2,
                  child: ElevatedButton(
                      onPressed: () {
                        moveRight();
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          primary: Colors.transparent,
                          shadowColor: Colors.transparent,
                          animationDuration: Duration(microseconds: 0),
                          onPrimary: Colors.transparent),
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
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width / 2,
                  child: ElevatedButton(
                      onPressed: () {
                        moveLeft();
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          primary: Colors.transparent,
                          shadowColor: Colors.transparent,
                          onPrimary: Colors.transparent),
                      child: Text(
                        "<",
                        style: TextStyle(fontFamily: 'Poppins', fontSize: 30),
                      )),
                ),
              ),
            ),
            //tap everything
            GestureDetector(
              onTap: startGame,
              child: CoverScreen(
                gameHasStarted: gameHasStarted,
              ),
            ),
            //top brick
            BrickPong(
              x: enemyX,
              y: -0.9,
              brickWidth: brickWidth,
              thisIsEnemy: true,
            ),

            //bottom brick
            BrickPong(
              x: playerX,
              y: 0.95,
              thisIsEnemy: false,
              brickWidth: brickWidth,
            ),
            //ball
            GestureDetector(
              onTap: startGame,
              child: BallPong(
                x: ballX,
                y: ballY,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
