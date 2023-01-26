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
                    left: MediaQuery.of(context).size.width * 0.23),
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
                child: Image.asset(
                  "assets/chatbot.png",
                  width: 30,
                  height: 30,
                ),
              )
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.8,
                child: ListView.builder(
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
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: MediaQuery.of(context).size.width * 0.12,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(width: 2, color: Colors.amber),
                        color: Colors.grey[200]),
                    child: Container(
                        padding: EdgeInsets.all(10),
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              isCollapsed: true,
                              isDense: true,
                              hintText: "Write a message"),
                        )),
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width * 0.12,
                      height: MediaQuery.of(context).size.width * 0.12,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(width: 2, color: Colors.amber),
                          color: Colors.grey[200]),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            shape: StadiumBorder(),
                            backgroundColor: Colors.amber),
                        child: Container(
                          child: Icon(
                            Icons.send,
                            size: 20,
                          ),
                        ),
                      )),
                ],
              )
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