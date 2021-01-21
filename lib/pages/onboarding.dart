import 'package:flutter/material.dart';
import 'package:walless_world/components/button.dart';
import 'package:walless_world/components/header.dart';
import 'package:walless_world/components/themed_scaffold.dart';

import 'home_page.dart';

class OnboardingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ThemedScaffold([
      SliverFillRemaining(
          child: Column(
        children: [
          Expanded(child: Container()),
          Image.asset(
            'assets/WallessWorld.png',
            width: MediaQuery.of(context).size.width * 0.7,
          ),
          Expanded(child: Container()),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: double.infinity,
              child: Button(
                'Get Started',
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (c) => HomePage()));
                },
              ),
            ),
          )
        ],
      ))
    ]);
  }
}
