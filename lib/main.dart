import 'package:flutter/material.dart';
import 'package:walless_world/pages/onboarding.dart';

import 'globals/app_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Walless World',
      theme: ThemeData(
        primaryColor: AppTheme.primary,
        scaffoldBackgroundColor: AppTheme.scaffold,
      ),
      home: OnboardingPage(),
    );
  }
}
