import 'package:flutter/material.dart';
import 'package:walless_world/components/header.dart';
import 'package:walless_world/components/section.dart';
import 'package:walless_world/globals/app_theme.dart';

class QuestionAnswerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        Header('FAQ'),
        SliverList(
          delegate: SliverChildListDelegate([
            Section(
              title: 'Why now?',
              text:
                  'For too long have we been repressed. Walls built to seperate us. This has needed to be done for centuries if not millennia now, the best time to act is now.',
              color: AppTheme.green,
            ),
            Section(
              title: 'What did walls ever do to you?',
              text:
                  'Walls are the reason for everything malevolent. Countries go to war to expand their walls. Racism occurs because people believe that others are part of a different group -- that they belong inside other walls. Without walls, division can not occur, and everyone will live in harmony.',
              color: AppTheme.blue,
            ),
            Section(
              title: 'What defines a wall?',
              text:
                  'A wall is any physical or metaphorical thing that separates two or more pieces of anything.',
              color: AppTheme.magenta,
            )
          ]),
        )
      ],
    );
  }
}
