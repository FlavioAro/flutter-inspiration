import 'package:flutter/material.dart';

enum TypographySize {
  large,
  medium,
  small,
}

class InspirationTypography extends StatefulWidget {
  final String text;
  final TypographySize? size;

  const InspirationTypography({
    Key? key,
    required this.text,
    this.size = TypographySize.small,
  }) : super(key: key);

  @override
  State<InspirationTypography> createState() => _InspirationTypographyState();
}

class _InspirationTypographyState extends State<InspirationTypography> {
  @override
  Widget build(BuildContext context) {
    _getProperties(String propertiesType) {
      dynamic result = "";
      Map<String, dynamic> properties = {};

      switch (widget.size) {
        case TypographySize.large:
          {
            properties['fontSize'] = 40;
            properties['fontWeight'] = FontWeight.normal;
            properties['color'] = Colors.black;
          }
          break;
        case TypographySize.medium:
          {
            properties['fontSize'] = 25;
            properties['fontWeight'] = FontWeight.normal;
            properties['color'] = Colors.black87;
          }
          break;
        default: // small
          {
            properties['fontSize'] = 15;
            properties['fontWeight'] = FontWeight.bold;
            properties['color'] = Colors.black;
          }
      }

      result = properties[propertiesType];
      return result;
    }

    return Text(
      widget.text,
      style: TextStyle(
        fontSize: double.parse(_getProperties('fontSize').toString()),
        fontWeight: _getProperties('fontWeight'),
        color: _getProperties('color'),
      ),
    );
  }
}
