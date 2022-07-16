import 'package:demo_app/example_four.dart';
import 'package:demo_app/example_three.dart';
import 'package:demo_app/example_two.dart';
import 'package:demo_app/signup.dart';
import 'package:flutter/material.dart';
import 'package:demo_app/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: const ExampleFour(),
    );
  }
}
