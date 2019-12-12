import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CompanyCard extends StatelessWidget {
  final String image;
  final int index;
  const CompanyCard({
    Key key,
    @required this.image,
    @required this.index,
  })  : assert(image != null && index != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 18,
        right: 18,
        bottom: MediaQuery.of(context).size.height * .04,
        top: 18,
      ),
      width: MediaQuery.of(context).size.width,
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
          child: Stack(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Image.asset(
                    image,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
              Container(
                // color: Color(0x33ff0000),
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.only(
                    right: 12.0,
                    bottom: 12.0,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 180,
                    ),
                    child: Container(
                      width: 110,
                      height: 50,
                      child: RawMaterialButton(
                        elevation: 5,
                        shape: StadiumBorder(),
                        fillColor: Theme.of(context).colorScheme.primary,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(
                                top: 16,
                                bottom: 16,
                              ),
                              child: Text(
                                'MORE',
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            IconButton(
                              onPressed: null,
                              color: Color(0xffFFE082),
                              icon: Icon(
                                FontAwesomeIcons.chevronRight,
                                color: Theme.of(context).colorScheme.secondary,
                                size: 18,
                              ),
                            ),
                          ],
                        ),
                        onPressed: () => this._handleNavigation(index),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _handleNavigation(index) {
    print('Page $index');
  }
}
