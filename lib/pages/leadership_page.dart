import 'package:flutter/material.dart';
import 'package:walless_world/components/header.dart';
import 'package:walless_world/components/leader_info.dart';

class LeadershipPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        Header('Who Are We?'),
        SliverList(
          delegate: SliverChildListDelegate([
            LeaderInfo(
              imageName: 'jason.jpg',
              name: 'Jason Telanoff',
              title: 'General',
              description:
                  'Born at the young age of 7, Jason has since dedicated his life to connecting others. Even from a young age he worked on breaking down walls, even creating a small crack in the Great Wall of China while still young because "no wall is great enough to restrict others"',
              color: 0,
            ),
            LeaderInfo(
              imageName: 'owen.jpg',
              name: 'Owen Ries',
              title: 'Admiral',
              description:
                  'Born and raised somewhere on the planet (because no borders means no cities) Owen has lived life walless. This is most notably shown in what place but the public bathroom. Here, Owen shits with pride with the stall doors open, and even sometimes breaks it down because it counts as a wall.',
              color: 1,
            ),
          ]),
        )
      ],
    );
  }
}
