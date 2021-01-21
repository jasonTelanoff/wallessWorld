import 'package:flutter/material.dart';
import 'package:walless_world/components/themed_text.dart';
import 'package:walless_world/globals/app_theme.dart';

class Button extends StatelessWidget {
  final String text;
  final Function onPressed;
  final Style style;
  final ButtonStyle buttonStyleOverides;
  final TextStyle textStyleOverides;
  final Color color;
  final bool hasPadding;

  Button(
    this.text, {
    this.style = Style.Primary,
    @required this.onPressed,
    this.buttonStyleOverides = const ButtonStyle(),
    this.textStyleOverides = const TextStyle(),
    this.color,
    this.hasPadding = true,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: hasPadding ? 32 : 1),
      child: TextButton(
        child: Text(
          text,
          style: textStyleOverides.merge(
            textStyle,
          ),
        ),
        onPressed: onPressed,
        style: buttonStyleOverides.merge(
          TextButton.styleFrom(
            backgroundColor: color ?? backgroundColor,
            padding: edgeInsets,
            shape: shape,
          ),
        ),
      ),
    );
  }

  Color get backgroundColor {
    switch (style) {
      case Style.Primary:
        return AppTheme.primary;
      case Style.Secondary:
        return AppTheme.primaryText;
      default:
        return AppTheme.primary;
    }
  }

  EdgeInsets get edgeInsets {
    return EdgeInsets.all(
      20,
    );
  }

  OutlinedBorder get shape {
    switch (style) {
      case Style.Primary:
        return RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            16,
          ),
        );
      case Style.Secondary:
        return RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            16,
          ),
        );
      default:
        return RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            16,
          ),
        );
    }
  }

  TextStyle get textStyle {
    switch (style) {
      case Style.Primary:
        return TextStyle(
          fontSize: 18,
          color: AppTheme.buttonText,
        ).merge(
          themedTextStyle(
            Type.button,
          ),
        );
      case Style.Secondary:
        return TextStyle(
          fontSize: 18,
          color: AppTheme.buttonText,
        ).merge(
          themedTextStyle(
            Type.button,
          ),
        );
      default:
        return TextStyle(
          fontSize: 18,
          color: AppTheme.buttonText,
        ).merge(
          themedTextStyle(
            Type.button,
          ),
        );
    }
  }
}

enum Style { Primary, Secondary }
