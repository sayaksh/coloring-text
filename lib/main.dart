import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const TestingWidget(),
    );
  }
}

class TestingWidget extends StatefulWidget {
  const TestingWidget({Key? key}) : super(key: key);

  @override
  State<TestingWidget> createState() => _TestingWidgetState();
}

class _TestingWidgetState extends State<TestingWidget> {
  String name = 'saya';
  List<Color> colors = [
    Colors.orange,
    Colors.green,
    Colors.yellow,
    Colors.blue
  ];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: colors[index],
      appBar: AppBar(
        title: const Text('Welcome to MyApp'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              name,
              style: TextStyle(
                fontSize: 30,
                color: colors[index],
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                // if (index == 3) {
                //   index = 0;
                // } else {
                //   index += 1;
                // }
                index = index == 3 ? 0 : index + 1;
                name = 'saya';
              });
            },
            child: const Text('Click Here'),
          )
        ],
      ),
    );
  }
}
/*class Testingwidget extends StatefulWidget {
  const Testingwidget({ Key? key }) : super(key: key);

  @override
  State<TestingWidget> createState() => _TestingWidgetState();
}

class _TestingwidgetState extends State<Testingwidget> {
 @override
Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
        title: const Text("myapp"),
     ),body: Column(children: [Center(child: Text("Lata"),)]),
    );
  }
}*/
