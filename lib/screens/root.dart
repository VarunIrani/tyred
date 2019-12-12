import 'package:flutter/material.dart';
import 'package:outline_material_icons/outline_material_icons.dart';
import 'navigation/home.dart';
import 'navigation/search.dart';
import 'navigation/cart.dart';
import 'navigation/profile.dart';
import 'navigation/more.dart';

class Root extends StatefulWidget {
  @override
  _RootState createState() => _RootState();
}

class _RootState extends State<Root> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    Home(),
    Search(),
    Cart(),
    Profile(),
    More(),
  ];

  void _handleScreenChange(index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        selectedItemColor: Theme.of(context).colorScheme.secondaryVariant,
        unselectedItemColor: Color(0xff515C6F),
        showUnselectedLabels: true,
        currentIndex: _currentIndex,
        onTap: _handleScreenChange,
        items: [
          BottomNavigationBarItem(
            icon: Icon(OMIcons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
            ),
            title: Text('Search'),
          ),
          BottomNavigationBarItem(
            icon: Icon(OMIcons.shoppingCart),
            title: Text('Cart'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              OMIcons.person,
            ),
            title: Text('Profile'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            title: Text('More'),
          ),
        ],
      ),
      body: _children[_currentIndex],
    );
  }
}
