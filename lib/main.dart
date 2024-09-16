import 'package:flutter/material.dart';
import 'package:store_api_app/theme_Data.dart';
import 'package:store_api_app/views/home_view.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: themeData,
        debugShowCheckedModeBanner: false,
        home: const HomeView());
  }
}
