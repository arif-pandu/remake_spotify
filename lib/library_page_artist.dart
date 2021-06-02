import 'package:flutter/material.dart';

class LibraryArtist extends StatelessWidget {
//WIDGET THUMBNAIL FOR PLAYLIST
  Widget buildPlaylistThumb(
      String playlistThumbURL, String playlistTitle, String playlistAuthor) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15, vertical: 7),
            height: 65,
            width: 65,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(playlistThumbURL),
              ),
            ),
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 250,
                  child: Text(playlistTitle,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontFamily: "Gotham",
                        color: Colors.white,
                        fontSize: 18,
                      )),
                ),
                Container(
                  child: Text(playlistAuthor,
                      textAlign: TextAlign.left,
                      style: TextStyle(color: Colors.grey)),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          Column(
            children: [
              buildPlaylistThumb(
                  "assets/image/library_playlist_1.png", "Create playlist", ""),
              buildPlaylistThumb("assets/image/library_playlist_2.png",
                  "Liked Songs", "22 songs"),
              buildPlaylistThumb("assets/image/library_playlist_3.png",
                  "Kumpulan Lagu", "by Dulsimad"),
              buildPlaylistThumb("assets/image/library_playlist_4.png",
                  "Kumpulan nada", "by Barya Kapila"),
              buildPlaylistThumb("assets/image/library_playlist_5.png",
                  "우리 지은❤", "by Barya Kapila"),
              buildPlaylistThumb("assets/image/library_playlist_6.png",
                  "SQUARE", "by Blackpink"),
              buildPlaylistThumb("assets/image/good_afternoon_2.png",
                  "Murottal Juz 30", "by Mishary Rasyid"),
            ],
          ),
        ],
      ),
    );
  }
}
