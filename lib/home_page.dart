import 'package:devolopment/screens/initial_pages/01_home_category_pgae.dart';
import 'package:devolopment/screens/initial_pages/02_recipe_page.dart';
import 'package:devolopment/screens/initial_pages/03_foodsnap_page.dart';
import 'package:devolopment/screens/initial_pages/04_search_page.dart';
import 'package:devolopment/screens/initial_pages/05_settings_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController _pageController = PageController();
  List<Widget> _screen = [
    HomeCategoryPage(),
    RecipePage(),
    FoodSnapPage(),
    SearchPage(),
    SettingsPage(),
  ];

  int _selectedIndex = 0;

  void _onPageChanged(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onItemTapped(int selectedIndex) {
    _pageController.jumpToPage(selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: _screen,
        onPageChanged: _onPageChanged,
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        elevation: 8,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: _selectedIndex == 0 ? Colors.orange : Colors.grey,
            ),
            title: Text(
              'Home',
              style: TextStyle(
                color: _selectedIndex == 0 ? Colors.orange : Colors.grey,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.restaurant,
              color: _selectedIndex == 1 ? Colors.orange : Colors.grey,
            ),
            title: Text(
              'Recipes',
              style: TextStyle(
                color: _selectedIndex == 1 ? Colors.orange : Colors.grey,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.camera_alt_outlined,
              color: _selectedIndex == 2 ? Colors.orange : Colors.grey,
            ),
            title: Text(
              'FoodSnap',
              style: TextStyle(
                color: _selectedIndex == 2 ? Colors.orange : Colors.grey,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: _selectedIndex == 3 ? Colors.orange : Colors.grey,
            ),
            title: Text(
              'Explore',
              style: TextStyle(
                color: _selectedIndex == 3 ? Colors.orange : Colors.grey,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              color: _selectedIndex == 4 ? Colors.orange : Colors.grey,
            ),
            title: Text(
              'Settings',
              style: TextStyle(
                color: _selectedIndex == 4 ? Colors.orange : Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
