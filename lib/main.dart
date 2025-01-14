import 'package:flutter/material.dart';
import 'loginSignup/welcome_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.deepPurple,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedIconTheme: IconThemeData(color: Theme.of(context).primaryColor),
          unselectedIconTheme: const IconThemeData(color: Colors.grey),
          selectedItemColor: Theme.of(context).primaryColor,
          unselectedItemColor: Colors.grey,
        )
      ),
      home: const WelcomeScreen(),
    );
  }
}
