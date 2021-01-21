import 'package:flutter/material.dart';
import 'package:walless_world/components/header.dart';
import 'package:walless_world/components/section.dart';
import 'package:walless_world/components/themed_text.dart';
import 'package:walless_world/globals/app_theme.dart';

class MissionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        Header('Our Mission'),
        SliverList(
          delegate: SliverChildListDelegate([
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ThemedText(
                  'To break down walls and bring people together.',
                  textAlign: TextAlign.start,
                  type: Type.subtitle),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ThemedText(
                '32 years ago the Berlin wall was taken down. This marked a monumental point in the Cold War as it showed that the US and the USSR could live together. Since then, several more walls have been broken down. The wall separating my kitchen from my living room, as an example, has been broken down. Dozens of walls at my school, Samohi, have been broken down. Protesters spent hours of their lives fighting to break down the tall, sturdy wall that is racism, and have only slightly chipped it.',
                textAlign: TextAlign.start,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ThemedText(
                'This is where WallessWorld comes in. WallessWorld promotes a world without borders. A world where everyone gets along because everyone is respected and belongs. No houses, no schools, no work, no countries even -- just a WallessWorld. WallessWorld has already made several steps towards a world beyond borders with their informative app. General Telanoff, the self appointed leader of the movement promises that by the end of 2022, there will be half as many walls, half as many countries, and half as much discrimination. But he can’t do it alone. With the work of Admiral Ries, the two have already gotten five countries to sign into the agreement, pledging to become part of the non-nation of WallessWorld, with talks for several more on the way.',
                textAlign: TextAlign.start,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ThemedText(
                'Join us in ending discrimination, in ending violence, in creating peace. Join us in our WallessWorld.',
                textAlign: TextAlign.start,
              ),
            ),
          ]),
        )
      ],
    );
  }
}
