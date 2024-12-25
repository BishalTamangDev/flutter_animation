import 'package:all_animation_git/animations/foo/foo_home.dart';
import 'package:all_animation_git/animations/hero/hero_home.dart';
import 'package:all_animation_git/animations/opacity/opacity_home.dart';
import 'package:all_animation_git/animations/ripple_effect/ripple_effect_home.dart';
import 'package:all_animation_git/animations/tween/tween_home.dart';
import 'package:flutter/material.dart';

import 'animations/crossfade/crossfade_home.dart';

class Initial extends StatelessWidget {
  Initial({super.key});

  final List<Map<String, dynamic>> _animationPages = [
    {
      'title': 'Crossfade',
      'description':
          'Smoothly transitions between two UI elements or screens by gradually increasing the opacity of one while decreasing the other.',
    },
    {
      'title': 'Foo',
      'description':
          'Refers to a generic placeholder animation used as an example or test in programming contexts.',
    },
    {
      'title': 'Hero',
      'description':
          'Transforms a shared element between two screens or states, maintaining continuity and visual connection during navigation.',
    },
    {
      'title': 'Opacity',
      'description':
          'Gradually changes the transparency of an element, making it appear or disappear smoothly.',
    },
    {
      'title': 'Ripple Effect',
      'description':
          'Simulates a water ripple emanating from a touchpoint, often used in button or touch interactions.',
    },
    {
      'title': 'Tween',
      'description':
          'Interpolates properties like position, size, or color over time, creating smooth transitions between defined states.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animation App"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Column(
            spacing: 16.0,
            children: [
              const SizedBox(height: 0.0),
              ..._animationPages.map(
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
                                case 'Opacity':
                                  return OpacityHome();
                                case 'Ripple Effect':
                                  return RippleEffect();
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
