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

  static final colorTween = ColorTween(begin: Colors.red, end: Colors.blue);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TweenAnimationBuilder<Color>(
          curve: Curves.bounceIn,
          onEnd: ()=> print("All done") ,
          child: myPicture,
          duration: const Duration(seconds: 5),
          tween: colorTween,
          builder: (_, Color color, Widget child) {
            return ColorFiltered(
              colorFilter: ColorFilter.mode(color, BlendMode.modulate),
              child: child,
            );
          },
        ),
      ),
    );
  }
}
