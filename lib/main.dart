import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:sajili/screens/login_screen.dart';

import 'screens/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sajili',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            textStyle: const TextStyle(
              fontSize: 24.0,
            ),
            padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
          ),
        ),
        textTheme: const TextTheme(
          headline1: const TextStyle(
            fontSize: 46.0,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
          bodyText1: const TextStyle(fontSize: 18.0),
        ),
      ),
      home: LoginScreen(),
    );
  }
}
