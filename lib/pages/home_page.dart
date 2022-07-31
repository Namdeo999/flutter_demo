import 'package:demo_app/widgets/drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  final int days = 30;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.white,
        // elevation: 0.0,
        // iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'Home Page',
          // style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: Container(
          child: Text('First App $days'),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
