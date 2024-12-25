import 'package:all_animation_git/animations/foo/foo_home.dart';
import 'package:all_animation_git/animations/hero/hero_home.dart';
import 'package:all_animation_git/animations/lottie/lottie_home.dart';
import 'package:all_animation_git/animations/opacity/opacity_home.dart';
import 'package:all_animation_git/animations/ripple_effect/ripple_effect_home.dart';
import 'package:all_animation_git/animations/rive/rive_home.dart';
import 'package:all_animation_git/animations/tween/tween_home.dart';
import 'package:all_animation_git/shared/constants/pages.dart';
import 'package:all_animation_git/shared/widgets/common_appbar.dart';
import 'package:flutter/material.dart';

import 'animations/crossfade/crossfade_home.dart';

class Initial extends StatelessWidget {
  const Initial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(title: "Animation App"),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Column(
            spacing: 16.0,
            children: [
              const SizedBox(height: 0.0),
              ...animationPages.map(
                (animationPage) => Card(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 16.0),
                    child: ListTile(
                      title: Text("${animationPage['title']} Animation"),
                      subtitle: Text(animationPage['description']),
                      onTap: () {
                        //   navigate to foo animation page
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              switch (animationPage['title']) {
                                case 'Crossfade':
                                  return CrossFadeHome();
                                case 'Foo':
                                  return FooHome();
                                case 'Hero':
                                  return HeroHome();
                                case 'Lottie':
                                  return LottieHome();
                                case 'Opacity':
                                  return OpacityHome();
                                case 'Ripple Effect':
                                  return RippleEffect();
                                case 'Rive':
                                  return RiveHome();
                                case 'Tween':
                                  return TweenHome();
                                default:
                                  return Initial();
                              }
                            },
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
