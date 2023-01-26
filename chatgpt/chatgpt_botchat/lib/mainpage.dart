import 'dart:async';
import 'dart:collection';

import 'package:chat_gpt_sdk/chat_gpt_sdk.dart';
import 'package:chatgpt_botchat/model/message_model..dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final messageController = TextEditingController();
  late ChatGPT openAI;
  StreamSubscription? subscription;

  String api = '';

  final message =
      UnmodifiableListView<MessageModel>([MessageModel('tes', true)]);
  @override
  void initState() {
    openAI = ChatGPT.instance.builder(api);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Chat GPT"),
        ),
        body: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: MediaQuery.of(context).size.height * .08,
            padding: EdgeInsets.symmetric(
              horizontal: 10,
            ),
            child: Row(
              children: [
                TextField(
                  decoration: InputDecoration(
                      hintText: "Type a message",
                      disabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.all(Radius.circular(10)))),
                ),
                ElevatedButton(onPressed: () {}, child: Icon(Icons.send))
              ],
            ),
          ),
        ));
  }
}
