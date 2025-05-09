import 'package:flutter/material.dart';
import 'package:saloon_shop/BookingTab/BookingTab.dart';
import 'package:saloon_shop/CurrentLocation/CurrentLocation.dart';
import 'package:saloon_shop/ProfileTab/ProfileTab.dart';
import 'package:saloon_shop/ServiceTab/ServiceTab.dart';

import '../widgets/custom_bottom_navbar.dart';

class Bottomnavmainscreen extends StatefulWidget {
  const Bottomnavmainscreen({super.key});

  @override
  State<Bottomnavmainscreen> createState() => _BottomnavmainscreenState();
}

class _BottomnavmainscreenState extends State<Bottomnavmainscreen> {
  int _selectedIndex = 0;

  // List of pages corresponding to each menu item
  final List<Widget> _pages = [
    Currentlocation(),
    Bookingtab(),
    Servicetab(),
    Profiletab(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index; // Update selected index
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: _pages[_selectedIndex], // Show selected page
      bottomNavigationBar: CustomBottomNavBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}