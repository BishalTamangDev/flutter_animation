import 'package:flutter/material.dart';

import '../../shared/widgets/common_appbar.dart';

class CrossFadeHome extends StatefulWidget {
  const CrossFadeHome({super.key});

  @override
  State<StatefulWidget> createState() => _CrossFadeState();
}

class _CrossFadeState extends State<CrossFadeHome> {
  // variables
  bool flag = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(title: "Crossfade Animation"),
      body: Center(
        child: Column(
          spacing: 16.0,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedCrossFade(
              firstChild: const Icon(
                Icons.light_mode_outlined,
                size: 30.0,
              ),
              secondChild: const Icon(
                Icons.dark_mode_outlined,
                size: 40.0,
              ),
              firstCurve: Curves.linear,
              secondCurve: Curves.linear,
              sizeCurve: Curves.bounceOut,
              crossFadeState:
                  flag ? CrossFadeState.showFirst : CrossFadeState.showSecond,
              duration: const Duration(seconds: 1),
            ),
            OutlinedButton(
              onPressed: () {
                setState(() {
                  flag = !flag;
                });
              },
              child: const Text("Animate Now"),
            ),
          ],
        ),
      ),
    );
  }
}
