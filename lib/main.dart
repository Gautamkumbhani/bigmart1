import 'package:bigmarket/views/screen/bottom_navigation_bar.dart';
import 'package:bigmarket/views/screen/item_screen.dart';
import 'package:bigmarket/views/screen/logo_screen.dart';
import 'package:bigmarket/views/screen/screen2.dart';
import 'package:bigmarket/views/screen/signin_screen.dart';
import 'package:bigmarket/views/screen/signup_screen.dart';
import 'package:bigmarket/views/screen/verify_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SignInScreen(),
    );
  }
}

