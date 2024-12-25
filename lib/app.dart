import 'package:all_animation_git/initial.dart';
import 'package:flutter/material.dart';

class AnimationApp extends StatelessWidget {
  const AnimationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "All Animation App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        brightness: Brightness.light,
        useMaterial3: false,
      ),
      home: Initial(),
    );
  }
}
