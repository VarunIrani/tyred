import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'home_category.dart';
import 'see_all_categories.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
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
                  size: 42,
                  label: 'Car',
                  onPressed: () {},
                ),
                HomeCategory(
                  icon: FontAwesomeIcons.truck,
                  color: Theme.of(context).colorScheme.secondaryVariant,
                  iconColor: Colors.white,
                  size: 42,
                  onPressed: () {},
                  label: 'Truck',
                ),
                HomeCategory(
                  icon: FontAwesomeIcons.bus,
                  color: Theme.of(context).colorScheme.secondaryVariant,
                  iconColor: Colors.white,
                  size: 42,
                  onPressed: () {},
                  label: 'Bus',
                ),
                SeeAllCategories(
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
