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

  final Image myPicture = Image.asset('images/image.png');

   static final doubleTween = Tween<double>(begin: 0, end: 2 * pi);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TweenAnimationBuilder<double>(
          duration: const Duration(seconds: 5),
          tween: doubleTween,
          builder: (_, double angle, __) {
            return Transform.rotate(
              angle: angle,
              child: myPicture,
            );
          },
        ),
      ),
    );
  }
}
