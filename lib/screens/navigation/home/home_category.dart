import 'package:flutter/material.dart';

class HomeCategory extends StatelessWidget {
  final Color color, iconColor;
  final IconData icon;
  final double size;
  final String label;
  final Function() onPressed;
  const HomeCategory({
    Key key,
    this.size,
    @required this.color,
    @required this.iconColor,
    @required this.icon,
    @required this.label,
    @required this.onPressed,
  })  : assert(
          color != null && icon != null && iconColor != null && label != null,
          onPressed != null,
        ),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              RawMaterialButton(
                padding: EdgeInsets.all(40.0),
                fillColor: this.color,
                elevation: 0,
                shape: CircleBorder(),
                highlightElevation: 0,
                onPressed: null,
                child: Center(),
              ),
              RawMaterialButton(
                onPressed: onPressed,
                shape: CircleBorder(),
                child: Container(
                  height: 75,
                  alignment: Alignment.center,
                  child: Icon(
                    icon,
                    size: size,
                    color: iconColor,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Center(
              child: Text(
                this.label,
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
