import 'package:flutter/material.dart';
import 'home/company_card.dart';
import 'home/home_categories.dart';

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
              // color: Colors.red,
              height: MediaQuery.of(context).size.height * 0.4,
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
          ],
        ),
      ),
    );
  }
}
