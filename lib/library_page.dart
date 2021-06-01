import 'package:flutter/material.dart';
import 'package:remake_spotify/library_page_album.dart';
import 'package:remake_spotify/library_page_artist.dart';
import 'package:remake_spotify/library_page_playlist.dart';

class LibraryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new LibraryPageStatefull(),
    );
  }
}

class LibraryPageStatefull extends StatefulWidget {
  @override
  _LibraryPageStatefullState createState() => new _LibraryPageStatefullState();
}

class _LibraryPageStatefullState extends State<LibraryPageStatefull>
    with SingleTickerProviderStateMixin {
  //create controller for tabbar
  late TabController controller;

  //index for tab
  int selectedIndex = 0;

  @override
  void initState() {
    controller = new TabController(
      length: 3,
      vsync: this,
      initialIndex: selectedIndex,
    );
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        children: [
          //TOP SPACER
          Container(
            height: MediaQuery.of(context).size.height / 8,
            color: Colors.transparent,
            width: double.infinity,
            child: Align(
              alignment: Alignment(0, 0.6),
              child: Container(
                margin: EdgeInsets.fromLTRB(15, 0, 0, 0),
                child: Row(
                  children: [
                    Text("Music",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold)),
                    SizedBox(width: 10),
                    Text("Podcasts",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 30,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ),
          ),
          //CONTROLLER TABBAR
          Align(
            alignment: Alignment(-1, 0),
            child: Container(
                color: Colors.transparent,
                width: MediaQuery.of(context).size.width * 0.8 - 24,
                child: TabBar(
                  indicatorColor: Colors.green,
                  controller: controller,
                  onTap: (int index) {
                    setState(() {
                      selectedIndex = index;
                      controller.animateTo(index);
                    });
                  },
                  tabs: [
                    Tab(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Playlist",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Tab(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Artist",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Tab(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Albums",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )),
          ),
          //TABBAR VIEWER
          Container(
            color: Colors.transparent,
            height: MediaQuery.of(context).size.height - 277,
            child: TabBarView(
              controller: controller,
              children: [
                LibraryPlaylist(),
                LibraryArtist(),
                LibraryAlbum(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
