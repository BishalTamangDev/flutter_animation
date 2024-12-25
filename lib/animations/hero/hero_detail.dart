import 'package:flutter/material.dart';

class HeroDetail extends StatefulWidget {
  const HeroDetail({super.key});

  @override
  State<StatefulWidget> createState() => _HeroDetailState();
}

class _HeroDetailState extends State<HeroDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hero - Detail"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Hero(
              tag: 'image-1',
              child: Image.asset('assets/images/image-1.jpg'),
            ),

            Container(
              margin: const EdgeInsets.only(bottom: 20.0),
              child: Text("Hello!"),
            )
          ],
        ),
      ),
    );
  }
}
