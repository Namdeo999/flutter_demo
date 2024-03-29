import 'package:demo_app/pages/home_page.dart';
import 'package:demo_app/pages/login_page.dart';
import 'package:demo_app/utils/routes.dart';
import 'package:demo_app/widgets/themes.dart';
import 'package:flutter/material.dart';

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
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      initialRoute: MyRoutes.homeRoute,
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
