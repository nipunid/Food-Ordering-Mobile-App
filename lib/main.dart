import 'package:first_project/screen/detail_recipe.dart';
import 'package:first_project/screen/onboarding.dart';
import 'package:flutter/material.dart';
import 'screen/home_page.dart';
import 'screen/log_page.dart';

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
      home: OnboardPage(),
      theme: ThemeData(primarySwatch: Colors.green),
    );
  }
}
