import 'package:chat_gpt_app/bot_chat.dart';
import 'package:chat_gpt_app/userchat.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.36),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "ChatGPT",
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                    Text(
                      "Online",
                      style: TextStyle(fontSize: 10, color: Colors.green),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.3),
                child: Image.network(
                  "https://cdn.discordapp.com/attachments/418302783331106818/1066981198280273960/google_logo.png",
                  width: 30,
                  height: 30,
                ),
              )
            ],
          ),
        ),
        body: ListView.builder(
          itemBuilder: (BuildContext context, int index) => Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Container(
                  margin: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.45),
                  child: ListChat()),
              SizedBox(
                height: 30,
              ),
              Container(
                  margin: EdgeInsets.only(
                      right: MediaQuery.of(context).size.width * 0.45),
                  child: BotChat())
            ],
          ),
        ));
  }
}
    //  Container(
    //           width: 100,
    //           height: 100,
    //           child: ListView.builder(
    //               scrollDirection: Axis.vertical,
    //               itemCount: 15,
    //               itemBuilder: (BuildContext context, int index) => Container(
    //                     child: Text("data"),
    //                   )),
    //         ),