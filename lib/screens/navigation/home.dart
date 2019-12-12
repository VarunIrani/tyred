import 'dart:math';

import 'package:flutter/material.dart';
import 'home/company_card.dart';
import 'home/home_categories.dart';
import 'package:flutter_money_formatter/flutter_money_formatter.dart';
import 'home/tyre_card.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(left: 18.0, top: 32.0),
              child: Text(
                'Categories',
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: 'Roboto Mono',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            HomeCategories(),
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(
                left: 18.0,
              ),
              child: Text(
                'Latest In Brands',
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: 'Roboto Mono',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * .42,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (_, index) {
                  return CompanyCard(
                    index: index,
                    image: 'assets/images/companies/$index.png',
                  );
                },
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(
                left: 18.0,
              ),
              child: Text(
                'Recommended',
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: 'Roboto Mono',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * .42,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 6,
                itemBuilder: (_, index) {
                  return TyreCard(
                    rating: 3 + Random().nextInt(2),
                    price: FlutterMoneyFormatter(
                      amount: 1000 + Random().nextInt(500).toDouble(),
                      settings: MoneyFormatterSettings(
                        symbol: '₹',
                        thousandSeparator: ',',
                        fractionDigits: 0,
                      ),
                    ),
                    tyreName: 'Brand Name - Vehicle - Tyre Model ${index + 1}',
                    index: index,
                    image: 'assets/images/tyres/$index.jpg',
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
