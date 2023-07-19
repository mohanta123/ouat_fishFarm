import 'package:flutter/material.dart';
import 'package:ouat/home_screen/notification.dart';
import 'package:ouat/home_screen/profile.dart';
import 'package:ouat/home_screen/querry.dart';

import 'home_screen.dart';

class Button_navication extends StatefulWidget {
  const Button_navication({Key? key}) : super(key: key);

  @override
  State<Button_navication> createState() => _Button_navicationState();
}

class _Button_navicationState extends State<Button_navication> {
  int _currentPageIndex = 0; // Track the current page index
  Color selectedColor = Colors.green;

  final List<Widget> _pages = [
    Home_page(),
    Querry(),
    Notification1(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentPageIndex],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.grey[200], // Set the desired background color
        ),
        child: BottomNavigationBar(
          selectedItemColor: Colors.black, // Set the default selected item color
          unselectedItemColor: Colors.grey, // Set the default unselected item color
          currentIndex: _currentPageIndex,
          onTap: (int index) {
            setState(() {
              _currentPageIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.question_answer),
              label: 'Query',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notification_add),
              label: 'Notification',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
          // Set the desired selected icon color
          selectedIconTheme: IconThemeData(color: Colors.green),
        ),

      ),
    );
  }
}
