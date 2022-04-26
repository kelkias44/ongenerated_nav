import 'package:flutter/material.dart';
import 'home.dart';
import 'account.dart';
import 'saved.dart';

class ButtomNav extends StatefulWidget {
  ButtomNav({ Key? key}) : super(key: key);
  @override
  State<ButtomNav> createState() => _ButtomNavState();
}

class _ButtomNavState extends State<ButtomNav> {
  int _currentIndex = 0; 

  final tabs = [
    Home(),
    Saved(),
    Account()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: tabs[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Color(0xff2657e).withOpacity(0.5),
                size: 40,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
                color: Color(0xff2657e).withOpacity(0.5),
                size: 40,
              ),
              label: 'Saved',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle,
                color: Color(0xff2657e).withOpacity(0.5),
                size: 40,
              ),
              label: 'Account',
            ),
          ],
          selectedItemColor: Color(0xff2657e).withOpacity(0.5),
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        )      
    );
  }
}