
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

import '../pages/course_page.dart';
import '../pages/event_page.dart';
import '../pages/home_page.dart';
import '../pages/profile_page.dart';
import '../utilities/theme.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});
  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  final List<Widget> widgetList = const [
    HomePage(),
    CoursePage(),
    EventPage(),
    ProfilePage(),
  ];

  int index = 0;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double aspectRatio = MediaQuery.of(context).size.aspectRatio;

    return Scaffold(
      backgroundColor: bgColor,
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(aspectRatio * 13),
        margin: EdgeInsets.only(
            bottom: height * 0.0175, left: width * 0.06, right: width * .06),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          boxShadow: const [
            BoxShadow(
                color: secondaryColor,
                blurRadius: 20,
                spreadRadius: 6,
                offset: Offset(0, 4))
          ],
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            navBarItem(
                icon: Symbols.home_rounded, state: 0, aspectRatio: aspectRatio),
            navBarItem(
                icon: Symbols.play_lesson_rounded,
                state: 1,
                aspectRatio: aspectRatio),
            navBarItem(
                icon: Symbols.network_intelligence_rounded,
                state: 2,
                aspectRatio: aspectRatio),
            navBarItem(
                icon: Symbols.person_rounded,
                state: 3,
                aspectRatio: aspectRatio)
          ],
        ),
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(
              top: height * 0.025, left: width * 0.04, right: width * 0.04),
          child: IndexedStack(
            index: index,
            children: widgetList,
          ),
        ),
      ),
    );
  }

  Widget navBarItem({
    required IconData icon,
    required int state,
    required double aspectRatio,
  }) {
    return GestureDetector(
      onTap: () {
        setState(() {
          index = state;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        width: aspectRatio * 95,
        height: aspectRatio * 95,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: state == index ? linearGradient : null,
          border: Border.all(
            color: Colors.white,
            width: 1.5,
            strokeAlign: BorderSide.strokeAlignCenter,
          ),
        ),
        alignment: Alignment.center,
        child: Icon(
          icon,
          key:
              ValueKey<bool>(state == index), // Unique key to trigger animation
          fill: state == index ? 1 : 0,
          weight: state == index ? 700 : null,
          grade: 200,
          color: state == index ? Colors.white : lightTextColor,
          size: state == index ? aspectRatio * 55 : aspectRatio * 58,
        ),
      ),
    );
  }
}
