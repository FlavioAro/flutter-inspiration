import 'package:flutter/material.dart';

enum CardType {
  vertical,
  horizontal,
}

class InspirationCard extends StatefulWidget {
  final String image;
  final CardType? type;

  const InspirationCard({
    Key? key,
    required this.image,
    this.type = CardType.vertical,
  }) : super(key: key);

  @override
  State<InspirationCard> createState() => _InspirationCardState();
}

class _InspirationCardState extends State<InspirationCard> {
  @override
  Widget build(BuildContext context) {
    _getProperties(String propertiesType) {
      dynamic result = "";
      Map<String, dynamic> properties = {};

      switch (widget.type) {
        case CardType.horizontal:
          {
            properties['height'] = 100;
            properties['width'] = double.infinity;
            properties['margin'] = const EdgeInsets.only(right: 0.0);
          }
          break;
        default: // vertical
          {
            properties['height'] = 50;
            properties['width'] = 200;
            properties['margin'] = const EdgeInsets.only(right: 15.0);
          }
      }

      result = properties[propertiesType];
      return result;
    }

    return Container(
      height: double.parse(_getProperties('height').toString()),
      width: double.parse(_getProperties('width').toString()),
      margin: _getProperties('margin'),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(widget.image),
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            stops: const [0.1, 0.9],
            colors: [
              Colors.black.withOpacity(.8),
              Colors.black.withOpacity(.1),
            ],
          ),
        ),
      ),
    );
  }
}
