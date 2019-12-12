import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SeeAllCategories extends StatelessWidget {
  final Function() onPressed;
  const SeeAllCategories({
    Key key,
    @required this.onPressed,
  })  : assert(onPressed != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: <Widget>[
          Container(
            decoration: ShapeDecoration(shape: CircleBorder(), shadows: [
              BoxShadow(
                blurRadius: 20.0,
                color: Colors.black54,
                offset: Offset(0, 10),
              )
            ]),
            child: RawMaterialButton(
              padding: EdgeInsets.all(18.0),
              fillColor: Theme.of(context).colorScheme.primary,
              shape: CircleBorder(),
              // elevation: 10.0,
              onPressed: onPressed,
              child: Padding(
                padding: const EdgeInsets.all(9.0),
                child: Icon(
                  FontAwesomeIcons.chevronRight,
                  color: Color(0xffFFE082),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Center(
              child: Text(
                'See All',
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
