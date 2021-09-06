import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ButtonTwo extends StatefulWidget {
  ButtonTwo({Key? key}) : super(key: key);

  @override
  _ButtonTwoState createState() => _ButtonTwoState();
}

class _ButtonTwoState extends State<ButtonTwo> {
  int? groupvalue = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(10),
        child: CupertinoSlidingSegmentedControl<int>(
          backgroundColor: CupertinoColors.systemGrey5,
          thumbColor: CupertinoColors.systemYellow.withOpacity(0.8),
          padding: EdgeInsets.all(4),
          groupValue: groupvalue,
          children: {
            0: buildSegment('One'),
            1: buildSegment('Two'),
            2: buildSegment('Three'),
          },
          onValueChanged: (groupvalue) {
            setState(() => this.groupvalue = groupvalue);
          },
        ));
  }

  Widget buildSegment(String text) => Container(
        padding: EdgeInsets.all(10),
        child: Text(
          text,
          style: TextStyle(fontSize: 20),
        ),
      );
}
