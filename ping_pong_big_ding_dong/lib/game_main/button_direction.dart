import 'package:flutter/material.dart';

class ButtonDirectionRight extends StatelessWidget {
  final double? x;
  final double? y;

  ButtonDirectionRight({
    this.x,
    this.y,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment(x!, y!),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: SizedBox(
          height: 70,
          width: 70,
          child: ElevatedButton(onPressed: () {}, child: Text(">")),
        ),
      ),
    );
  }
}

class ButtonDirectionLeft extends StatelessWidget {
  final double? x;
  final double? y;
  final Function? moveKiri;
  ButtonDirectionLeft({this.x, this.y, this.moveKiri});
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment(x!, y!),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: SizedBox(
              height: 70,
              width: 70,
              child: ElevatedButton(
                  onPressed: () {
                    moveKiri;
                  },
                  child: Text("<")))),
    );
  }
}
