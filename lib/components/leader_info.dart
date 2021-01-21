import 'package:flutter/material.dart';
import 'package:walless_world/components/themed_text.dart';
import 'package:walless_world/globals/app_theme.dart';

class LeaderInfo extends StatelessWidget {
  final String imageName, name, title, description;
  final int color;
  LeaderInfo({
    @required this.imageName,
    @required this.name,
    @required this.title,
    @required this.description,
    @required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Card(
        color: col,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(
                    MediaQuery.of(context).size.width / 4),
                child: Image.asset(
                  'assets/$imageName',
                  width: MediaQuery.of(context).size.width * 0.5,
                ),
              ),
              ThemedText(name, type: Type.h1),
              ThemedText(title, type: Type.subtitle),
              Divider(),
              ThemedText(description)
            ],
          ),
        ),
      ),
    );
  }

  get col {
    switch (color) {
      case 0:
        return AppTheme.lightGreen;
      case 1:
        return AppTheme.lightBlue;
      case 2:
        return AppTheme.lightMagenta;
    }
  }
}
