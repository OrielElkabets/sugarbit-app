import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Navbar extends StatelessWidget {
  final void Function(int) cb;
  const Navbar({super.key, required this.cb});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 5,
        vertical: 10,
      ),
      color: Colors.lightBlue[300],
      child: GNav(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        color: Colors.white,
        activeColor: Colors.white,
        tabBackgroundColor: Colors.white.withOpacity(0.2),
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        onTabChange: cb,
        gap: 3,
        tabs: const [
          GButton(
            icon: Icons.home,
            text: "home",
          ),
          GButton(
            icon: Icons.star,
            text: "favorite",
          ),
          GButton(
            icon: Icons.archive,
            text: "archive",
          ),
          GButton(
            icon: Icons.settings,
            text: "settings",
          ),
        ],
      ),
    );
  }
}
