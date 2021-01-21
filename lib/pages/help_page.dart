import 'package:flutter/material.dart';
import 'package:walless_world/components/header.dart';
import 'package:walless_world/components/section.dart';
import 'package:walless_world/globals/app_theme.dart';

class HelpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        Header('Help Us Help You'),
        SliverList(
          delegate: SliverChildListDelegate([
            Section(
              title: 'Call to Action',
              text:
                  'We ask that everyone take down their walls. Let others into their home, and into their heart. Break down borders and unite under the common goal of a Walless World.',
              color: AppTheme.magenta,
            )
          ]),
        )
      ],
    );
  }
}
