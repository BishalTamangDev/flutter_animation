import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../shared/widgets/common_appbar.dart';

class LottieHome extends StatefulWidget {
  const LottieHome({super.key});

  @override
  State<StatefulWidget> createState() => _LottieHomeState();
}

class _LottieHomeState extends State<LottieHome> with TickerProviderStateMixin {
  // variables
  bool flag = true;
  late AnimationController controller;

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
    );

    controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Navigator.pop(context);
        controller.reset();
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(title: "Lottie Animation"),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          spacing: 16.0,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width / 1.25,
              child: Lottie.asset(
                'assets/lottie_animations/running_car.json',
                animate: flag,
              ),
            ),
            OutlinedButton(
              onPressed: () {
                setState(() {
                  flag = !flag;
                });
              },
              child: flag ? Text("Stop Animation") : Text("Resume Animation"),
            ),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  barrierDismissible: false,
                  builder: (context) => AlertDialog(
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                    title: Column(
                      mainAxisSize: MainAxisSize.min,
                      spacing: 16.0,
                      children: [
                        Lottie.asset(
                          'assets/lottie_animations/done.json',
                          controller: controller,
                          repeat: false,
                          onLoaded: (composition) {
                            controller.duration = composition.duration;
                            controller.forward();
                          },
                        ),
                      ],
                    ),
                  ),
                );
              },
              child: const Text("Show Dialog Box"),
            ),
          ],
        ),
      ),
    );
  }
}
