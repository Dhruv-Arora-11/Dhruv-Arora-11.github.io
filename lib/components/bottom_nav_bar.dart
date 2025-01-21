import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
   BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
    int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.07,
      width: MediaQuery.of(context).size.width*0.6,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: BottomNavigationBar(
  type: BottomNavigationBarType.fixed, // Use `fixed` to ensure equal spacing
  backgroundColor: Colors.white,
  selectedItemColor: Colors.blue,
  unselectedItemColor: Colors.grey,
  currentIndex: _selectedIndex,
  onTap: _onItemTapped,
  showSelectedLabels: true, // Ensure selected labels are visible
  showUnselectedLabels: true, // Ensure unselected labels are also visible
  items: const [
    BottomNavigationBarItem(
      icon: SizedBox.shrink(), // No icon displayed
      label: 'Home',
    ),
    BottomNavigationBarItem(
      icon: SizedBox.shrink(), // No icon displayed
      label: 'About',
    ),
    BottomNavigationBarItem(
      icon: SizedBox.shrink(), // No icon displayed
      label: 'Services',
    ),
    BottomNavigationBarItem(
      icon: SizedBox.shrink(), // No icon displayed
      label: 'Portfolio',
    ),
    BottomNavigationBarItem(
      icon: SizedBox.shrink(), // No icon displayed
      label: 'Contact',
    ),
  ],
),
      ),
    );
  }
}