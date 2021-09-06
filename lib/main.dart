import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:segmented_control/widgets/one.dart';
import 'package:segmented_control/widgets/two.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int? groupvalue = 0;
  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: Text('iOS Sliding Segmented Control'),
        backgroundColor: Colors.teal,
      ),
      backgroundColor: CupertinoColors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ButtonOne(),
          SizedBox(height: 20),
          ButtonTwo(),
        ],
      ));
}
