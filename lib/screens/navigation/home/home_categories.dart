import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'home_category.dart';
import 'see_all_categories.dart';
import 'package:Tyred/screens/categories.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding:
            const EdgeInsets.only(top: 16.0, bottom: 16.0, left: 0, right: 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                HomeCategory(
                  icon: FontAwesomeIcons.car,
                  color: Theme.of(context).colorScheme.secondaryVariant,
                  iconColor: Colors.white,
                  size: 35,
                  label: 'Car',
                  onPressed: () {},
                ),
                HomeCategory(
                  icon: FontAwesomeIcons.motorcycle,
                  color: Theme.of(context).colorScheme.secondaryVariant,
                  iconColor: Colors.white,
                  size: 35,
                  onPressed: () {},
                  label: 'Bike',
                ),
                SeeAllCategories(
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Categories(),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
