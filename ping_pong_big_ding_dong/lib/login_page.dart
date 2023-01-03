import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:ping_pong_big_ding_dong/game_main/homepage.dart';
import 'package:lottie/lottie.dart';
import 'package:rive/rive.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Ping Pong Game",
          textAlign: TextAlign.center,
        ),
      ),
      body: Center(
        child: Stack(children: [
          RiveAnimation.asset(
            'assets/space.riv',
            fit: BoxFit.fitHeight,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Ping Pong",
                style: TextStyle(fontFamily: 'Poppins'),
              ),
              Container(
                child: Lottie.asset('assets/pingpong.json'),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //google login
                  ElevatedButton(
                      onPressed: () {
                        Get.to(HomePage());
                      },
                      child: Icon(Icons.login)),
                ],
              )
            ],
          ),
        ]),
      ),
    );
  }
}
