import 'package:flutter/material.dart';

class RippleEffect extends StatefulWidget {
  const RippleEffect({super.key});

  @override
  State<StatefulWidget> createState() => _RippleEffectState();
}

class _RippleEffectState extends State<RippleEffect>
    with SingleTickerProviderStateMixin {
  // variables
  bool flag = true;

  late Animation animation;
  late AnimationController animationController;

  @override
  void initState() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    animation = Tween(begin: 0.0, end: 1.0).animate(animationController);

    animationController.addListener(() {
      setState(() {});
    });

    animationController.forward();

    animationController.repeat();

    super.initState();
  }

  @override
  void dispose() {
    if (animationController.isAnimating) {
      animationController.dispose();
    }
    super.dispose();
  }

  final List<double> radii = [50.0, 100.0, 150.0];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ripple Effect Animation"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          spacing: 16.0,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment(0, 0),
              children: [
                ...radii.map(
                  (radius) => Opacity(
                    opacity: 1 - animationController.value,
                    child: Container(
                      width: radius * animationController.value,
                      height: radius * animationController.value,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    if (animationController.isAnimating) {
                      setState(() {
                        animationController.value = 0;
                        animationController.dispose();
                      });
                    }
                  },
                  icon: Icon(Icons.cancel_outlined),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
