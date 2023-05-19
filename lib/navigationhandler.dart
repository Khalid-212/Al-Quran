import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'Pages/Planner/Planner.dart';
import 'Pages/Stats/Stats.dart';
import 'Pages/home/home_page.dart';

class navigationhandler extends StatefulWidget {
  const navigationhandler({Key? key}) : super(key: key);
  @override
  State<navigationhandler> createState() => _navigationhandlerState();
}

class _navigationhandlerState extends State<navigationhandler> {
  int _selectedIndex = 0;
  Widget currentPage = HomePage();
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    if (_selectedIndex == 0) {
      currentPage = const HomePage();
    } else if (_selectedIndex == 1) {
      currentPage = const planner();
    } else if (_selectedIndex == 2) {
      currentPage = const Stats();
    } else {
      currentPage = const HomePage();
    }
  }

  @override
  Widget build(BuildContext context) {
    var viewportConstraints = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Al-Quran')),
        backgroundColor: Color.fromARGB(255, 19, 91, 128),
        foregroundColor: Color.fromARGB(255, 233, 230, 230),
        // foregroundColor: const Color.fromARGB(255, 2, 245, 103),
      ),
      backgroundColor: Color.fromARGB(255, 241, 241, 241),
      // backgroundColor: Color.fromARGB(255, 12, 169, 218),  //blue background
      // backgroundColor: Color.fromARGB(255, 0, 36, 26),
      body: Container(
        height:
            viewportConstraints.height * 0.8, // 0.8 is the height of the appbar
        child: currentPage,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(255, 19, 91, 128),
        // backgroundColor: Color.fromARGB(0, 0, 36, 26),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.checklist_outlined),
            label: 'planner',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.analytics_outlined),
            label: 'stats',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color.fromARGB(255, 203, 215, 250),
        // selectedItemColor: Colors.green,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Color.fromARGB(255, 135, 170, 184),
        // unselectedItemColor: Colors.teal[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
