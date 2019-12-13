import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:Tyred/screens/navigation/home/home_category.dart';

class Vehicles extends StatelessWidget {
  const Vehicles({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
              top: 18,
              bottom: 12,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                HomeCategory(
                  icon: FontAwesomeIcons.motorcycle,
                  color: Theme.of(context).colorScheme.secondaryVariant,
                  iconColor: Colors.white,
                  size: 35,
                  label: 'Bike',
                  onPressed: () {},
                ),
                HomeCategory(
                  icon: FontAwesomeIcons.car,
                  color: Theme.of(context).colorScheme.secondaryVariant,
                  iconColor: Colors.white,
                  size: 35,
                  label: 'Car',
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
