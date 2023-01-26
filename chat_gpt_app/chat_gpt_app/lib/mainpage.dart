import 'dart:async';
import 'dart:collection';

import 'package:chat_gpt_app/bot_chat.dart';
import 'package:chat_gpt_app/model/message_model.dart';
import 'package:chat_gpt_app/userchat.dart';
import 'package:chat_gpt_sdk/chat_gpt_sdk.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  late ChatGPT openAI;
  StreamSubscription? subscription;
  List userChat = [ListChat()];
  ListChat? user;
  final messagecontroller = TextEditingController();
  String apikey = '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';
  final messages = [MessageModel(true, "")];

  void clearText() {
    messagecontroller.clear();
  }

  @override
  void initState() {
    openAI = ChatGPT.instance.builder(apikey);
    super.initState();
  }

  void sendMessage(String message) async {
    final request =
        CompleteReq(prompt: message, model: kTranslateModelV3, max_tokens: 200);
    final res = await openAI.onCompleteText(request: request);
    setState(() {
      messages.add(MessageModel(true, "${res!.choices.last.text}"));
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.23),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "ChatGPT",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  const Text(
                    "Online",
                    style: TextStyle(
                        fontSize: 10, color: Color.fromARGB(255, 3, 92, 8)),
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 2.4),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.8,
                child: ListView.builder(
                    itemCount: messages.length,
                    itemBuilder: (BuildContext context, int index) {
                      return (messages[index].isBot!)
                          ? Container(
                              padding: const EdgeInsets.only(left: 10),
                              margin: EdgeInsets.only(
                                  right:
                                      MediaQuery.of(context).size.width * 0.5),
                              child: BotChat(
                                index: index,
                                pesan: messages[index].msg,
                              ),
                            )
                          : Container(
                              padding: const EdgeInsets.only(right: 10),
                              margin: EdgeInsets.only(
                                  left:
                                      MediaQuery.of(context).size.width * 0.5),
                              child: ListChat(
                                  index: index,
                                  pesan: messages[index]
                                      .msg!
                                      .replaceAll('/[A-Za-z0-9_]/;', '')));
                    }),
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
                    border: Border.all(width: 2, color: Colors.blue),
                    color: Colors.grey[200]),
                child: Container(
                    padding: const EdgeInsets.all(10),
                    child: TextField(
                      controller: messagecontroller,
                      decoration: const InputDecoration(
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
                      border: Border.all(width: 2, color: Colors.blue),
                      color: Colors.grey[200]),
                  child: ElevatedButton(
                    onPressed: () {
                      FocusScopeNode currentFocus = FocusScope.of(context);

                      if (!currentFocus.hasPrimaryFocus) {
                        currentFocus.unfocus();
                      }
                      setState(() {
                        sendMessage(messagecontroller.text.toString());
                        messages.add(MessageModel(
                            false, messagecontroller.text.toString()));
                      });
                      clearText();
                    },
                    style: ElevatedButton.styleFrom(
                        shape: const StadiumBorder(),
                        backgroundColor: Colors.blue),
                    child: Container(
                      child: const Icon(
                        Icons.send,
                        size: 20,
                      ),
                    ),
                  )),
            ],
          )
        ],
      ),
    );
  }
}
