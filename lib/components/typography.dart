import 'package:flutter/material.dart';

enum TypographySize {
  large,
  medium,
  small,
}

class InspirationTypography extends StatefulWidget {
  final String text;
  final Color? color;
  final TypographySize? size;
  final FontWeight? fontWeight;

  const InspirationTypography({
    Key? key,
    required this.text,
    this.color = Colors.black,
    this.size = TypographySize.small,
    this.fontWeight,
  }) : super(key: key);

  @override
  State<InspirationTypography> createState() => _InspirationTypographyState();
}

class _InspirationTypographyState extends State<InspirationTypography> {
  @override
  Widget build(BuildContext context) {
    _getFontSize() {
      final double result;
      switch (widget.size) {
        case TypographySize.large:
          {
            result = 40;
          }
          break;
        case TypographySize.medium:
          {
            result = 25;
          }
          break;
        default: // small
          {
            result = 15;
          }
      }

      return result;
    }

    return Text(
      widget.text,
      style: TextStyle(
        fontSize: _getFontSize(),
        fontWeight: widget.fontWeight,
        color: widget.color,
      ),
    );
  }
}
