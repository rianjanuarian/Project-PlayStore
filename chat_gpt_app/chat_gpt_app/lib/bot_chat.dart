import 'package:bubble/bubble.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl/intl.dart';
import 'package:chat_gpt_app/mainpage.dart';

class BotChat extends StatelessWidget {
  int? index;
  String? pesan;
  BotChat({super.key, this.pesan, this.index});

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String timeFormat = DateFormat.Hm().format(now);
    return Stack(
      children: [
        (pesan!.isEmpty)
            ? Container()
            : Bubble(
                margin: BubbleEdges.only(top: 10),
                alignment: Alignment.topLeft,
                nipWidth: 8,
                nipHeight: 24,
                nip: BubbleNip.leftTop,
                color: Colors.white,
                child: Column(
                  children: [
                    Text(pesan!),
                    SizedBox(
                      height: 5,
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        timeFormat,
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 10),
                      ),
                    ),
                  ],
                ),
              )
      ],
    );
  }
}
