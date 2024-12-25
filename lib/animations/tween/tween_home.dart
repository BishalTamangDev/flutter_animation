import 'dart:developer';

import 'package:flutter/material.dart';

class TweenHome extends StatefulWidget {
  const TweenHome({super.key});

  @override
  State<StatefulWidget> createState() => _TweenHomeState();
}

class _TweenHomeState extends State<TweenHome>
    with SingleTickerProviderStateMixin {
  // variables
  bool flag = true;

  late Animation animation;
  late AnimationController animationController;

  @override
  void initState() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    animation = Tween(begin: 0.0, end: 250.0).animate(animationController);

    animationController.addListener(() {
      setState(() {
        log("${animation.value}");
      });
    });

    animationController.forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tween Animation"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          spacing: 16.0,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.grey.shade200,
              width: animation.value,
              height: animation.value,
            ),
          ],
        ),
      ),
    );
  }
}
