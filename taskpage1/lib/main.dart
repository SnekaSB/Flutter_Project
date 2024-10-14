import 'package:flutter/material.dart';
import 'package:taskpage1/screens/mypage.dart';
//import 'package:taskpage1/screens/account_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: const MyPage(),
      initialRoute: '/',
      routes: {
        '/': (context) => const MyPage(),
      },
    );
  }
}
