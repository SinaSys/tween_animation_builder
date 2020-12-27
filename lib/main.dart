import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: TweenAnimationBuilder(
          child: Text("This is an Animation text",
            style: TextStyle(
                fontSize: 36, color: Colors.black, fontWeight: FontWeight.bold),),
          tween: Tween<double>(begin: 0, end: 1),
          duration: Duration(milliseconds: 500),
          builder: (BuildContext context, double _val, Widget child) {
            return Opacity(
              opacity: _val,
              child:
              Padding(padding: EdgeInsets.only(top: _val * 20), child: child),
            );
          },
        ));
  }
}
