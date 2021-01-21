import 'package:flutter/material.dart';
import 'package:walless_world/components/themed_text.dart';
import 'package:walless_world/globals/app_theme.dart';

class Section extends StatelessWidget {
  final String text;
  final String title;
  final Color color;
  Section({@required this.text, @required this.color, @required this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      margin: EdgeInsets.all(16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      color: Color(0x00),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 12, bottom: 8),
              child: Row(
                children: [
                  ThemedText(
                    title,
                    type: Type.h2,
                    color: color,
                  ),
                ],
              ),
            ),
            Divider(),
            ThemedText(
              text,
              textAlign: TextAlign.start,
            ),
          ],
        ),
      ),
    );
  }
}
