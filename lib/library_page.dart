import 'package:flutter/material.dart';

class LibraryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
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

  @override
  void initState() {
    controller = new TabController(length: 3, vsync: this);
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
      body: Column(
        children: [
          Container(
            height: 200,
            color: Colors.black,
            width: MediaQuery.of(context).size.width,
          ),
          Container(
              child: TabBar(
            controller: controller,
            tabs: [
              Tab(icon: Icon(Icons.music_note, color: Colors.black)),
              Tab(icon: Icon(Icons.library_add, color: Colors.black)),
              Tab(icon: Icon(Icons.comment, color: Colors.black)),
            ],
          )),
          Container(
            height: 80,
            child: new TabBarView(
              controller: controller,
              children: <Widget>[
                Center(child: Text("SCREEN 1")),
                Center(child: Text("SCREEN 2")),
                Center(child: Text("SCREEN 3")),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
