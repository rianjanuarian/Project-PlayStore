import 'package:firebase_auth/firebase_auth.dart';
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
      body: Center(
        child: Stack(children: [
          RiveAnimation.asset(
            'assets/space.riv',
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.2,
            child: Container(
              alignment: Alignment.center,
              child: Text(
                "ENDLESS PING PONG",
                style: TextStyle(fontFamily: 'Poppins', fontSize: 30),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
                      if (FirebaseAuth.instance.currentUser != null) {
                        FirebaseAuth.instance.signOut();
                      } else {
                        FirebaseAuth.instance.signInAnonymously();
                      }
                      Get.to(HomePage());
                    },
                    child: SizedBox(
                      width: 90,
                      height: 90,
                      child: Container(
                        alignment: Alignment.center,
                        child: Text(
                          "Enter Game",
                          style: TextStyle(fontFamily: 'Poppins'),
                        ),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(primary: Colors.purple),
                  ),
                ],
              )
            ],
          ),
        ]),
      ),
    );
  }
}
