import 'package:all_animation_git/animations/hero/hero_detail.dart';
import 'package:flutter/material.dart';

import '../../shared/widgets/common_appbar.dart';

class HeroHome extends StatefulWidget {
  const HeroHome({super.key});

  @override
  State<StatefulWidget> createState() => _HeroHomeState();
}

class _HeroHomeState extends State<HeroHome> {
  // variables
  bool flag = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(title: "Hero Animation"),
      body: Center(
        child: Column(
          spacing: 16.0,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: 'image-1',
              child: CircleAvatar(
                radius: 80.0,
                backgroundImage: AssetImage('assets/images/image-1.jpg'),
              ),
            ),
            OutlinedButton(
              onPressed: () {
                setState(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HeroDetail(),
                    ),
                  );
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
