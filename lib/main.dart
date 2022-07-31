import 'package:demo_app/pages/home_page.dart';
import 'package:demo_app/pages/login_page.dart';
import 'package:demo_app/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: HomePage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
        // primaryTextTheme: GoogleFonts.latoTextTheme()
      ),
      darkTheme: ThemeData(brightness: Brightness.dark),
      initialRoute: '/login',
      routes: {
        '/': (context) => const LoginPage(),
        MyRoutes.homeRoute: (context) => const HomePage(),
        MyRoutes.loginRoute: (context) => const LoginPage(),
      },
    );
  }
}



// import 'package:demo_app/example_fiver.dart';
// import 'package:demo_app/example_four.dart';
// import 'package:demo_app/example_three.dart';
// import 'package:demo_app/example_two.dart';
// import 'package:demo_app/signup.dart';
// import 'package:flutter/material.dart';
// import 'package:demo_app/home_screen.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
        
//         primarySwatch: Colors.blue,
//       ),
//       home: const ExampleThree(),
//     );
//   }
// }
