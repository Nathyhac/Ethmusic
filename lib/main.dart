import 'package:ethmusic/core/config/themes/app_theme.dart';
import 'package:ethmusic/presentation/splash/pages/splash_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
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
        theme: AppTheme.lightMode,
        debugShowCheckedModeBanner: false,
        home: Container(
          child: const Splashpage(),
        ));
  }
}
