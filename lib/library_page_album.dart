import 'package:flutter/material.dart';

class LibraryAlbum extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          Column(
            children: [
              Container(
                color: Colors.lightGreen,
                height: 100,
                width: 100,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
