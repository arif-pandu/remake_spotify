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
              height: MediaQuery.of(context).size.height / 6,
              child: Container(
                child: Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height / 12 - 1,
                      width: MediaQuery.of(context).size.width,
                      color: Color.fromARGB(255, 40, 40, 40),
                      child: Row(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height / 12 - 1,
                            width: MediaQuery.of(context).size.height / 12 - 1,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/image/playlist_icon_2.png"),
                                  fit: BoxFit.fitHeight),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            width: MediaQuery.of(context).size.width * 0.5,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text(
                                    "Girls Like You(feat. Cardi B)",
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  child: Text("Maroon 5",
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500)),
                                )
                              ],
                            ),
                          ),
                          Container(
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.favorite_outline,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Container(
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.play_arrow),
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    //SPACER FOR BOTTOM BAR AND PLAYMUSIC BAR
                    Container(
                      height: 2,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.transparent,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 12 - 1,
                      child: BottomNavigationBar(
                        backgroundColor: Color.fromARGB(255, 40, 40, 40),
                        currentIndex: index,
                        onTap: (int index) =>
                            setState(() => this.index = index),
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
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
