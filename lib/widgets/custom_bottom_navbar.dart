import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const CustomBottomNavBar({super.key, required this.currentIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(

      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.transparent,
      selectedItemColor: Colors.white, // Active icon color
      unselectedItemColor: Colors.white54,
      currentIndex: currentIndex, // Track the selected page
      onTap: onTap, // Handle taps
      iconSize: 28,
      selectedFontSize: 14,
      unselectedFontSize: 12,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_today_outlined),
          label: 'Booking',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.design_services),
          label: 'Services',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
      ],
    );
  }
}
