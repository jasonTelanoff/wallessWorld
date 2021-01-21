import 'package:flutter/material.dart';
import 'package:walless_world/globals/app_theme.dart';
import 'package:walless_world/pages/question_answer_page.dart';

import 'help_page.dart';
import 'leadership_page.dart';
import 'mission_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index;

  @override
  void initState() {
    index = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        selectedItemColor: AppTheme.primary,
        unselectedItemColor: AppTheme.secondaryText,
        onTap: (i) => setState(() => index = i),
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.grass,
            ),
            label: "Our Mission",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.check,
            ),
            label: "You Can Help",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.people,
            ),
            label: "Who Are We?",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.question_answer,
            ),
            label: "FAQ",
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(
          //     Icons.settings,
          //   ),
          //   label: "Settings",
          // ),
        ],
      ),
      body: () {
        switch (index) {
          case 0:
            return MissionPage();
          case 1:
            return HelpPage();
          case 2:
            return LeadershipPage();
          case 3:
            return QuestionAnswerPage();
        }
      }(),
    );
  }
}
