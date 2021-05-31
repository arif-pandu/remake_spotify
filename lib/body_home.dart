import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'home_page.dart';
import 'search_page.dart';
import 'library_page.dart';

class BodyHome extends StatefulWidget {
  @override
  _BodyHomeState createState() => _BodyHomeState();
}

class _BodyHomeState extends State<BodyHome> {
  int index = 0;

  final pages = [
    SpotifyHome(),
    SearchPage(),
    LibraryPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Stack(
        children: [
          SvgPicture.asset(
            "assets/svg/flutter_spotify_bg.svg",
            fit: BoxFit.contain,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            body: pages[index],
            bottomNavigationBar: SizedBox(
              height: MediaQuery.of(context).size.height / 12,
              child: BottomNavigationBar(
                backgroundColor: Color.fromARGB(255, 40, 40, 40),
                currentIndex: index,
                onTap: (int index) => setState(() => this.index = index),
                selectedItemColor: Colors.white,
                unselectedItemColor: Color.fromARGB(255, 158, 158, 158),
                iconSize: 25.0,
                items: [
                  BottomNavigationBarItem(
                    label: "Home",
                    icon: Icon(Icons.home_filled),
                  ),
                  BottomNavigationBarItem(
                    label: "Search",
                    icon: Icon(Icons.search),
                  ),
                  BottomNavigationBarItem(
                    label: "Library",
                    icon: Icon(Icons.list),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
