import 'package:flutter/material.dart';

class LibraryPlaylist extends StatelessWidget {
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
                      // maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      // softWrap: true,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
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
                  "assets/image/playlist_icon_1.png", "Create playlist", ""),
              buildPlaylistThumb("assets/image/playlist_icon_1.png",
                  "Liked Songs", "22 songs"),
              buildPlaylistThumb("assets/image/playlist_icon_1.png",
                  "Kumpulan Lagu", "by Dulsimad"),
              buildPlaylistThumb("assets/image/playlist_icon_1.png",
                  "Kumpulan nada", "by Barya Kapila"),
              buildPlaylistThumb("assets/image/playlist_icon_1.png",
                  "Lo-fi coding (beats to code/relaxation)", "by Retro Jungle"),
              buildPlaylistThumb("assets/image/playlist_icon_1.png", "Korea",
                  "by baryakapila"),
              buildPlaylistThumb("assets/image/playlist_icon_1.png",
                  "ASDFGHJKL", "by ASDFGHJKL"),
            ],
          ),
        ],
      ),
    );
  }
}
