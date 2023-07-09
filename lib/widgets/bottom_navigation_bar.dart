import 'package:brackethub_app/utils/app_style.dart';
import 'package:flutter/material.dart';

class CustomNavigationBar extends StatefulWidget {
  const CustomNavigationBar({super.key});

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: kBackgroundColor,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white.withOpacity(.60),
      currentIndex: selectedIndex,
      selectedFontSize: 14,
      unselectedFontSize: 14,
      onTap: (value) {
        setState(() {
          selectedIndex = value;
        });
      },
      items: const [
        BottomNavigationBarItem(
          label: '',
          icon: Icon(Icons.home_rounded),
        ),
        BottomNavigationBarItem(
          label: '',
          icon: Icon(Icons.person_add_alt_rounded),
        ),
        BottomNavigationBarItem(
          label: '',
          icon: Icon(Icons.notifications),
        ),
        BottomNavigationBarItem(
          label: '',
          icon: Icon(Icons.person_2),
        ),
      ],
    );
  }
}
