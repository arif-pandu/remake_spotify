import 'package:flutter/material.dart';

class LibraryArtist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          Column(
            children: [
              Container(
                color: Colors.amber,
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
