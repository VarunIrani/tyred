import 'package:flutter/material.dart';
import 'package:flutter_money_formatter/flutter_money_formatter.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class TyreCard extends StatelessWidget {
  final String tyreName, image;
  final FlutterMoneyFormatter price;
  final int index, rating;

  const TyreCard({
    Key key,
    @required this.tyreName,
    @required this.price,
    @required this.image,
    @required this.index,
    @required this.rating,
  })  : assert(
          tyreName != null &&
              price != null &&
              image != null &&
              index != null &&
              rating != null,
        ),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 18,
        right: 18,
        bottom: MediaQuery.of(context).size.height * .03,
        top: 18,
      ),
      width: MediaQuery.of(context).size.width * 0.50,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              blurRadius: 10.0,
              color: Colors.black12,
              offset: Offset(0, 10),
            ),
          ],
        ),
        child: Card(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: RawMaterialButton(
            onPressed: () => _handleCardPress(index),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            splashColor: Theme.of(context).colorScheme.secondary,
            child: Column(
              children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Image.asset(
                      image,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 8.0, right: 8),
                  alignment: Alignment.topLeft,
                  height: 42,
                  child: Column(
                    children: <Widget>[
                      Text(
                        this.tyreName,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Roboto',
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 8.0),
                  alignment: Alignment.topLeft,
                  height: 18,
                  child: Column(
                    children: <Widget>[
                      Text(
                        '${this.price.output.symbolOnLeft}',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Roboto',
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  child: RatingBar(
                    itemSize: 22,
                    ignoreGestures: true,
                    initialRating: this.rating.toDouble(),
                    direction: Axis.horizontal,
                    allowHalfRating: false,
                    itemCount: 5,
                    itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _handleCardPress(int index) {
    print('Tyre ${index + 1}');
  }
}
