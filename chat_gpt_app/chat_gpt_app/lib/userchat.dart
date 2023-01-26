import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ListChat extends StatelessWidget {
  String? pesan;
  int? index;
  ListChat({super.key, this.index, this.pesan});

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedTime = DateFormat.Hm().format(now);
    return Stack(
      children: [
        Bubble(
          margin: const BubbleEdges.only(top: 10),
          alignment: Alignment.topLeft,
          nipWidth: 8,
          nipHeight: 24,
          nip: BubbleNip.rightTop,
          color: Colors.blue[200],
          child: Column(
            children: [
              Text(pesan!),
              const SizedBox(
                height: 5,
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  formattedTime,
                  textAlign: TextAlign.left,
                  style: const TextStyle(fontSize: 10),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
