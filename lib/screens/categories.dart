import 'package:flutter/material.dart';
import 'package:Tyred/screens/categories/vehicles.dart';
import 'package:Tyred/screens/categories/brands.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var allCategories = Container(
      width: double.infinity,
      padding: EdgeInsets.only(
        left: 18.0,
      ),
      child: Text(
        'All Categories',
        style: TextStyle(
          fontSize: 30,
          fontFamily: 'Roboto Mono',
          fontWeight: FontWeight.w500,
        ),
      ),
    );
    var vehicles = Container(
      width: double.infinity,
      padding: EdgeInsets.only(left: 18.0, top: 18),
      child: Text(
        'Vehicles',
        style: TextStyle(
          fontSize: 24,
          fontFamily: 'Roboto Mono',
          fontWeight: FontWeight.normal,
        ),
      ),
    );
    var brands = Container(
      width: double.infinity,
      padding: EdgeInsets.only(left: 18.0, top: 18),
      child: Text(
        'Brands',
        style: TextStyle(
          fontSize: 24,
          fontFamily: 'Roboto Mono',
          fontWeight: FontWeight.normal,
        ),
      ),
    );
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 18, right: 18),
            alignment: Alignment.topRight,
            child: FloatingActionButton(
              elevation: 0,
              backgroundColor: Colors.transparent,
              highlightElevation: 0,
              splashColor: Theme.of(context).colorScheme.secondary,
              onPressed: () => Navigator.pop(context),
              child: Icon(
                Icons.close,
                color: Theme.of(context).colorScheme.secondaryVariant,
                size: 30,
              ),
            ),
          ),
          allCategories,
          vehicles,
          Vehicles(),
          brands,
          Brands(),
        ],
      ),
    );
  }
}
