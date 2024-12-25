import 'package:flutter/material.dart';

import '../../shared/widgets/common_appbar.dart';

class OpacityHome extends StatefulWidget {
  const OpacityHome({super.key});

  @override
  State<StatefulWidget> createState() => _OpacityHomeState();
}

class _OpacityHomeState extends State<OpacityHome> {
  // variables
  double _opacity = 0.3;
  bool flag = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(title: "Opacity Animation"),
      body: Center(
        child: Column(
          spacing: 16.0,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
              opacity: _opacity,
              duration: const Duration(seconds: 1),
              curve: Curves.linear,
              child: Container(
                color: Colors.grey.shade300,
                width: 200,
                height: 250,
              ),
            ),
            OutlinedButton(
              onPressed: () {
                setState(() {
                  flag = !flag;
                  _opacity = flag ? 1.0 : 0.3;
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
