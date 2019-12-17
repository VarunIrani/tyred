import 'package:flutter/material.dart';
import 'package:Tyred/screens/navigation/home/home_category.dart';

const List<String> brand_names = [
  'Apollo',
  'Bridgestone',
  'CEAT',
  'JK Tyres',
  'MRF'
];

class Brands extends StatelessWidget {
  const Brands({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .5,
      child: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 12,
        childAspectRatio: 1.6,
        children: List.generate(
          5,
          (index) {
            return HomeCategory(
              size: 35,
              label: brand_names[index],
              onPressed: () {},
              child: Image.asset('assets/images/companies/$index.png'),
            );
          },
        ),
      ),
    );
  }
}
