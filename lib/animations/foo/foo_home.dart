import 'package:flutter/material.dart';

class FooHome extends StatefulWidget {
  const FooHome({super.key});

  @override
  State<StatefulWidget> createState() => _FooHomeState();
}

class _FooHomeState extends State<FooHome> {
  // variables
  double _width = 100.0;
  double _height = 200.0;

  bool flag = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Foo Animation"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          spacing: 16.0,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: 1000),
              curve: Curves.bounceOut,
              width: _width,
              height: _height,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(flag ? 8.0 : 0.0),
              ),
            ),
            OutlinedButton(
              onPressed: () {
                setState(() {
                  flag = !flag;
                  _width = flag ? 200.0 : 100.0;
                  _height = flag ? 100.0 : 200.0;
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
