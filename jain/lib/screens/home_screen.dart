import 'package:flutter/material.dart';
import 'package:jain/constants/labels.dart';
import 'package:jain/constants/list.dart';
import 'package:jain/constants/styles.dart';
import 'package:jain/utils/util.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Scaffold(
        // backgroundColor: yellowColor,
        appBar: PreferredSize(
          preferredSize: Size(screenWidth(context), 50),
          child: Container(
            decoration: BoxDecoration(
              gradient: appBgGradient,
            ),
            child: const Text(
              mainLabel,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 26,
              ),
            ),
          ),
        ),
        body: bodyWidget[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (value) {
            setState(() {
              selectedIndex = value;
            });
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.book_outlined,
                ),
                label: "Pathshala"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.groups,
                ),
                label: "Samaj"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.calendar_today,
                ),
                label: "तिथि"),
          ],
        ),
      ),
    );
  }
}
