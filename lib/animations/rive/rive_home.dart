import 'package:flutter/material.dart';

import '../../shared/widgets/common_appbar.dart';

class RiveHome extends StatefulWidget {
  const RiveHome({super.key});

  @override
  State<StatefulWidget> createState() => _RiveHomeState();
}

class _RiveHomeState extends State<RiveHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(title: "Rive Animation"),
      body: Center(
        child: Text("Hello!"),
      ),
    );
  }
}
