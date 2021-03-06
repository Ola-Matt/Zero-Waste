import 'package:flutter/material.dart';
import 'package:zero_waste/constants/main_nav_screens.dart';

class HomeScreen extends StatefulWidget {
  static const id = 'Home';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigators[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/homei.png',
              color: _currentIndex == 0 ? const Color(0xff0A9D56) : Colors.grey,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/fed.png',
              color: _currentIndex == 1 ? const Color(0xff0A9D56) : Colors.grey,
            ),
            label: 'Feeds',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/pi.png',
              color: _currentIndex == 2 ? const Color(0xff0A9D56) : Colors.grey,
            ),
            label: 'Products',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/av.png',
              color: _currentIndex == 3 ? const Color(0xff0A9D56) : Colors.grey,
            ),
            label: 'Account',
          ),
        ],
        currentIndex: _currentIndex,
        selectedItemColor: const Color(0xff0A9D56),
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
