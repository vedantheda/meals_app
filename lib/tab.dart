import 'package:flutter/material.dart';
import 'package:meals_app/screens/categories.dart';
import 'package:meals_app/screens/meals.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  @override
  Widget build(BuildContext context) {
    int _selectedPageIndex = 0;

    void changePage(index) {
      setState(() {
        _selectedPageIndex = index;
      });
    }

    Widget activeScreen = const CategoriesScreen();

    if (_selectedPageIndex == 1) {
      activeScreen = const MealsScreen(title: 'Favorites', meals: []);
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Meals'),
      ),
      body: activeScreen,
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          _selectedPageIndex;
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.set_meal),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Favorites',
          ),
        ],
      ),
    );
  }
}
