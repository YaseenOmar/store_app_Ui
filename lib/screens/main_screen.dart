import 'package:flutter/material.dart';
import 'package:store_app/screens/bn_screen/cart_screen.dart';
import 'package:store_app/screens/bn_screen/home_screen.dart';
import 'package:store_app/screens/bn_screen/setting_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _index = 0;


  List _screens = [
    HomeScreen(),
    CartScreen(),
    SettingsScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.grey,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Main Screen'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 10,
        backgroundColor: Colors.white,
        selectedFontSize: 20,
        unselectedFontSize: 10,
        selectedItemColor: Colors.blue,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        unselectedItemColor: Colors.purple,
        currentIndex: _index,
        onTap: (int selectedItemIndex){
         setState(() {
           _index = selectedItemIndex;
         });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              activeIcon: Icon(Icons.home),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined),
              activeIcon: Icon(Icons.shopping_cart),
              label: "Cart"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings_outlined),
              activeIcon: Icon(Icons.settings),
              label: "Setting"),
        ],
      ),

        body: _screens[_index],
    );


  }
}
