import 'package:flutter/material.dart';
import 'package:resume_app/ui/app_theme.dart';
import 'package:resume_app/ui/home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Resume App',
        theme: appTheme,
        home: const HomeScreen());
  }
}
