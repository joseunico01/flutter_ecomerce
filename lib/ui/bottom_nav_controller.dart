//3tittles bloqueados
import 'package:flutter/material.dart';
import 'package:ecomerce/const/AppColors.dart';
import 'package:ecomerce/ui/bottom_nav_pages/cart.dart';
import 'package:ecomerce/ui/bottom_nav_pages/favourite.dart';
import 'package:ecomerce/ui/bottom_nav_pages/home.dart';
import 'package:ecomerce/ui/bottom_nav_pages/profile.dart';

class BottomNavController extends StatefulWidget {
  @override
  _BottomNavControllerState createState() => _BottomNavControllerState();
}

class _BottomNavControllerState extends State<BottomNavController> {
  final _pages = [
    Home(),
    Favourite(),
    Cart(),
    Profile(),
  ];
  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "E-Commerce",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 5,
        selectedItemColor: AppColors.deep_orange,
        backgroundColor: Colors.white,
        unselectedItemColor: Colors.grey,
        currentIndex: _currentIndex,
        selectedLabelStyle:
            TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            //title: Text("Home"),
            label: ("Home"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline),
            label: ("Favourite"),
            //title: Text("Favourite")
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_shopping_cart),
            //title: Text("Cart"),
            label: ("Cart"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            //title: Text("Person"),
            label: ("Person"),
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
            print(_currentIndex);
          });
        },
      ),
      body: _pages[_currentIndex],
    );
  }
}
