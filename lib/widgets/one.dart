import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ButtonOne extends StatefulWidget {
  ButtonOne({Key? key}) : super(key: key);

  @override
  _ButtonOneState createState() => _ButtonOneState();
}

class _ButtonOneState extends State<ButtonOne> {
  int? groupvalue = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(10),
        child: CupertinoSlidingSegmentedControl<int>(
          backgroundColor: CupertinoColors.systemGrey5,
          thumbColor: CupertinoColors.systemBlue.withOpacity(0.8),
          padding: EdgeInsets.all(4),
          groupValue: groupvalue,
          children: {
            0: buildSegment('Men'),
            1: buildSegment('Women'),
            2: buildSegment('Kids'),
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
