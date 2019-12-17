import 'package:flutter/material.dart';

class HomeCategory extends StatelessWidget {
  final Color color, iconColor;
  final IconData icon;
  final double size;
  final String label;
  final Function() onPressed;
  final Widget child;
  const HomeCategory({
    Key key,
    this.size,
    this.color,
    this.iconColor,
    this.icon,
    @required this.label,
    @required this.onPressed,
    this.child,
  })  : assert(
          label != null,
          onPressed != null,
        ),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            RawMaterialButton(
              padding: EdgeInsets.all(35.0),
              fillColor: this.color,
              shape: CircleBorder(),
              onPressed: null,
              child: Center(),
            ),
            RawMaterialButton(
              onPressed: onPressed,
              shape: child == null ? CircleBorder() : StadiumBorder(),
              splashColor: Theme.of(context).colorScheme.secondary,
              child: Container(
                height: 70,
                alignment: Alignment.center,
                child: child == null
                    ? Icon(
                        icon,
                        size: size,
                        color: iconColor,
                      )
                    : child,
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
    );
  }
}
