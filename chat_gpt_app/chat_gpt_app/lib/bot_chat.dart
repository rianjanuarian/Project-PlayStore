import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl/intl.dart';

class BotChat extends StatelessWidget {
  const BotChat({super.key});

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedTime = DateFormat.Hm().format(now);
    return Stack(
      children: [
        Container(
          width: 200,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10)),
              border: Border.all(width: 2, color: Colors.green),
              color: Colors.green[200]),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                    "asdajlsbdajksbdkabjscbjk asbdaksbckabs acsn aslncalsc aslcn alsnc lasnc aslnc lans c"),
              ),
              Container(
                  alignment: Alignment.bottomRight,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.check_circle_outline_sharp,
                        size: 15,
                        color: Colors.green[900],
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        formattedTime,
                        style: TextStyle(fontSize: 10),
                      ),
                      SizedBox(
                        width: 5,
                      )
                    ],
                  ))
            ],
          ),
        )
      ],
    );
  }
}
