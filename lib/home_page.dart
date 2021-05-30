import 'package:flutter/material.dart';

class SpotifyHome extends StatelessWidget {
  //WIDGET THUMBNAIL RECENTLY PLAYED
  Widget buildSmallerThumbnail(String imageURLRecent) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 1),
      child: Column(
        children: [
          Container(
              height: 130,
              width: 130,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: NetworkImage(imageURLRecent),
                  ))),
          Container(
              padding: EdgeInsets.only(top: 5),
              width: 150,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 15),
                    child: Text(
                      "Judul Lagu Kecil",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }

//WIDGET THUMBNAIL GET INSPIRED
  Widget buildBiggerThumbnail(String imageURLInspired) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: NetworkImage(imageURLInspired),
                  ))),
          Container(
              padding: EdgeInsets.only(top: 5),
              width: 150,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 5),
                    child: Text(
                      "Judul Lagu 1",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            //BACKGROUND
            /*
            SvgPicture.asset(
              "assets/svg/flutter_spotify_bg.svg",
              fit: BoxFit.contain,
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
            ),
            */
            //CONTENT
            ListView(
              children: [
                Column(
                  children: [
                    //TOP BAR
                    Container(
                      height: MediaQuery.of(context).size.height / 9,
                      child: Container(
                        color: Color.fromARGB(0, 255, 255, 255),
                        child: Align(
                          alignment: Alignment(0, 0),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                  child: Text(
                                    "Good afternoon",
                                    style: TextStyle(
                                        fontFamily: "Gotham",
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                                IconButton(
                                  icon:
                                      Icon(Icons.settings, color: Colors.white),
                                  onPressed: () {},
                                ),
                              ]),
                        ),
                      ),
                    ),
                    //RECENT PLAYLIST + GOOD AFTERNOON
                    Container(
                      child: Column(children: [
                        //FIRST LINE OF THUMBNAIL
                        Container(
                          height: MediaQuery.of(context).size.height / 14,
                          child: Row(
                            children: [
                              //A Thumbmnail playlist
                              Flexible(
                                flex: 1,
                                child: Container(
                                  margin: EdgeInsets.symmetric(horizontal: 5),
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [
                                          Colors.black87,
                                          Colors.white10,
                                        ],
                                        begin: Alignment.bottomRight,
                                        end: Alignment.topLeft,
                                      ),
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Row(
                                    children: [
                                      Container(
                                        height:
                                            MediaQuery.of(context).size.height /
                                                14,
                                        width:
                                            MediaQuery.of(context).size.height /
                                                14,
                                        //flex: 1,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.transparent,
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(5),
                                                bottomLeft: Radius.circular(5)),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/image/playlist_icon_1.png"),
                                                fit: BoxFit.fitHeight),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        //flex: 1,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.transparent,
                                            borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(5),
                                                bottomRight:
                                                    Radius.circular(5)),
                                          ),
                                          child: Center(
                                            child: Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  9,
                                              child: Text(
                                                "Kum-nada",
                                                style: TextStyle(
                                                    fontFamily: "Gotham",
                                                    fontStyle: FontStyle.normal,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              //A Thumbmnail playlist
                              Flexible(
                                flex: 1,
                                child: Container(
                                  margin: EdgeInsets.symmetric(horizontal: 5),
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [
                                          Colors.black87,
                                          Colors.white10,
                                        ],
                                        begin: Alignment.bottomRight,
                                        end: Alignment.topLeft,
                                      ),
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Row(
                                    children: [
                                      Container(
                                        height:
                                            MediaQuery.of(context).size.height /
                                                14,
                                        width:
                                            MediaQuery.of(context).size.height /
                                                14,
                                        //flex: 1,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.transparent,
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(5),
                                                bottomLeft: Radius.circular(5)),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/image/playlist_icon_2.png"),
                                                fit: BoxFit.fitHeight),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        //flex: 1,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.transparent,
                                            borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(5),
                                                bottomRight:
                                                    Radius.circular(5)),
                                          ),
                                          child: Center(
                                            child: Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  9,
                                              child: Text(
                                                "Daily mix",
                                                style: TextStyle(
                                                    fontFamily: "Gotham",
                                                    fontStyle: FontStyle.normal,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              //A Thumbmnail playlist
                              Flexible(
                                flex: 1,
                                child: Container(
                                  margin: EdgeInsets.symmetric(horizontal: 5),
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [
                                          Colors.black87,
                                          Colors.white10,
                                        ],
                                        begin: Alignment.bottomRight,
                                        end: Alignment.topLeft,
                                      ),
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Row(
                                    children: [
                                      Container(
                                        height:
                                            MediaQuery.of(context).size.height /
                                                14,
                                        width:
                                            MediaQuery.of(context).size.height /
                                                14,
                                        //flex: 1,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.transparent,
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(5),
                                                bottomLeft: Radius.circular(5)),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/image/playlist_icon_2.png"),
                                                fit: BoxFit.fitHeight),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        //flex: 1,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.transparent,
                                            borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(5),
                                                bottomRight:
                                                    Radius.circular(5)),
                                          ),
                                          child: Center(
                                            child: Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  9,
                                              child: Text(
                                                "Daily mix 2",
                                                style: TextStyle(
                                                    fontFamily: "Gotham",
                                                    fontStyle: FontStyle.normal,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                        //baris ke 2
                        Container(
                          height: MediaQuery.of(context).size.height / 14,
                          child: Row(
                            children: [
                              //A Thumbmnail playlist
                              Flexible(
                                flex: 1,
                                child: Container(
                                  margin: EdgeInsets.symmetric(horizontal: 5),
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [
                                          Colors.black87,
                                          Colors.white10,
                                        ],
                                        begin: Alignment.bottomRight,
                                        end: Alignment.topLeft,
                                      ),
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Row(
                                    children: [
                                      Container(
                                        height:
                                            MediaQuery.of(context).size.height /
                                                14,
                                        width:
                                            MediaQuery.of(context).size.height /
                                                14,
                                        //flex: 1,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.transparent,
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(5),
                                                bottomLeft: Radius.circular(5)),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/image/playlist_icon_2.png"),
                                                fit: BoxFit.fitHeight),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        //flex: 1,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.transparent,
                                            borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(5),
                                                bottomRight:
                                                    Radius.circular(5)),
                                          ),
                                          child: Center(
                                            child: Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  9,
                                              child: Text(
                                                "Kum-Lagu",
                                                style: TextStyle(
                                                    fontFamily: "Gotham",
                                                    fontStyle: FontStyle.normal,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              //A Thumbmnail playlist
                              Flexible(
                                flex: 1,
                                child: Container(
                                  margin: EdgeInsets.symmetric(horizontal: 5),
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [
                                          Colors.black87,
                                          Colors.white10,
                                        ],
                                        begin: Alignment.bottomRight,
                                        end: Alignment.topLeft,
                                      ),
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Row(
                                    children: [
                                      Container(
                                        height:
                                            MediaQuery.of(context).size.height /
                                                14,
                                        width:
                                            MediaQuery.of(context).size.height /
                                                14,
                                        //flex: 1,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.transparent,
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(5),
                                                bottomLeft: Radius.circular(5)),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/image/playlist_icon_2.png"),
                                                fit: BoxFit.fitHeight),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        //flex: 1,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.transparent,
                                            borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(5),
                                                bottomRight:
                                                    Radius.circular(5)),
                                          ),
                                          child: Center(
                                            child: Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  9,
                                              child: Text(
                                                "Pop Mix",
                                                style: TextStyle(
                                                    fontFamily: "Gotham",
                                                    fontStyle: FontStyle.normal,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              //A Thumbmnail playlist
                              Flexible(
                                flex: 1,
                                child: Container(
                                  margin: EdgeInsets.symmetric(horizontal: 5),
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [
                                          Colors.black87,
                                          Colors.white10,
                                        ],
                                        begin: Alignment.bottomRight,
                                        end: Alignment.topLeft,
                                      ),
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Row(
                                    children: [
                                      Container(
                                        height:
                                            MediaQuery.of(context).size.height /
                                                14,
                                        width:
                                            MediaQuery.of(context).size.height /
                                                14,
                                        //flex: 1,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.transparent,
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(5),
                                                bottomLeft: Radius.circular(5)),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/image/playlist_icon_2.png"),
                                                fit: BoxFit.fitHeight),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        //flex: 1,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.transparent,
                                            borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(5),
                                                bottomRight:
                                                    Radius.circular(5)),
                                          ),
                                          child: Center(
                                            child: Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  9,
                                              child: Text(
                                                "Daily Fresh",
                                                style: TextStyle(
                                                    fontFamily: "Gotham",
                                                    fontStyle: FontStyle.normal,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ]),
                    ),
                    //ENDING THUMBNAIL PLAYLIST
                    SizedBox(height: 50),
                    Container(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 15),
                          child: Text(
                            "Recently played",
                            style: TextStyle(
                                fontFamily: "Gotham",
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 29),
                          ),
                        ),
                      ],
                    )),
                    //RECENTLY PLAYED
                    Container(
                      height: MediaQuery.of(context).size.height / 4 - 25,
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(vertical: 10),
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          buildSmallerThumbnail(
                              "https://1.bp.blogspot.com/-Nngt_SqPmZs/XUsZj_uy1DI/AAAAAAAAANc/IYr2bxWvx_YQ4DWnHpcvrROYSJh26WT7wCEwYBhgL/s200/https%2B_images.genius.com_86e007cc5872614096efa618034e4a73.640x640x1.jpg"),
                          buildSmallerThumbnail(
                              "https://spotlight.radiopublic.com/images/thumbnail?url=https%3A%2F%2Fqurancentral.com%2Fwp-content%2Fuploads%2Fmishary-rashid-alafasy.jpg"),
                          buildSmallerThumbnail(
                              "https://4.bp.blogspot.com/-hAzEu0ps2G0/XatL_-diF6I/AAAAAAAAJxo/OhVwnweg8r0pX_91oIpQIOiroqNkcEJ1wCLcBGAsYHQ/s1600/Rindu%2BTak%2BBersuara%2B-%2BAlffy%2BRev%2BFeat.%2BFeby%2BPutri.webp"),
                          buildSmallerThumbnail(
                              "https://1.bp.blogspot.com/-Nngt_SqPmZs/XUsZj_uy1DI/AAAAAAAAANc/IYr2bxWvx_YQ4DWnHpcvrROYSJh26WT7wCEwYBhgL/s200/https%2B_images.genius.com_86e007cc5872614096efa618034e4a73.640x640x1.jpg"),
                          buildSmallerThumbnail(
                              "https://spotlight.radiopublic.com/images/thumbnail?url=https%3A%2F%2Fqurancentral.com%2Fwp-content%2Fuploads%2Fmishary-rashid-alafasy.jpg"),
                          buildSmallerThumbnail(
                              "https://upload.wikimedia.org/wikipedia/en/thumb/f/f2/BLACKPINK-_The_Album.png/220px-BLACKPINK-_The_Album.png"),
                        ],
                      ),
                    ),
                    //EDNDING RECENTLY PLAYED
                    SizedBox(height: 10),
                    Container(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 15),
                          child: Text(
                            "Get inspired",
                            style: TextStyle(
                                fontFamily: "Gotham",
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 30),
                          ),
                        ),
                      ],
                    )),
                    //GET INSPIRED THUMBNAIL
                    Container(
                      height: MediaQuery.of(context).size.height / 4,
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(vertical: 10),
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          buildBiggerThumbnail(
                              "https://production.listennotes.com/podcasts/frodcast/recap-season-1-adu-keren-1nx5WB6AJrC-o07tkBnMDvJ.300x300.jpg"),
                          buildBiggerThumbnail(
                              "https://production.listennotes.com/podcasts/makna-talks-makna-talks-r2nWGO4fkaJ-eaq6UdEkN_F.1400x1400.jpg"),
                          buildBiggerThumbnail(
                              "https://production.listennotes.com/podcasts/frodcast/recap-season-1-adu-keren-1nx5WB6AJrC-o07tkBnMDvJ.300x300.jpg"),
                          buildBiggerThumbnail(
                              "https://upload.wikimedia.org/wikipedia/en/thumb/f/f2/BLACKPINK-_The_Album.png/220px-BLACKPINK-_The_Album.png"),
                          buildBiggerThumbnail(
                              "https://upload.wikimedia.org/wikipedia/en/thumb/f/f2/BLACKPINK-_The_Album.png/220px-BLACKPINK-_The_Album.png"),
                          buildBiggerThumbnail(
                              "https://upload.wikimedia.org/wikipedia/en/thumb/f/f2/BLACKPINK-_The_Album.png/220px-BLACKPINK-_The_Album.png"),
                        ],
                      ),
                    ),
                    //AKHIR Get Inspired
                    SizedBox(height: 10),
                    Container(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 15),
                          child: Text(
                            "Made for you",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 27),
                          ),
                        ),
                      ],
                    )),
                    //Made For You THUMBNAIL
                    Container(
                      height: MediaQuery.of(context).size.height / 4,
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(vertical: 10),
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          buildBiggerThumbnail(
                              "https://upload.wikimedia.org/wikipedia/en/thumb/f/f2/BLACKPINK-_The_Album.png/220px-BLACKPINK-_The_Album.png"),
                          buildBiggerThumbnail(
                              "https://upload.wikimedia.org/wikipedia/en/thumb/f/f2/BLACKPINK-_The_Album.png/220px-BLACKPINK-_The_Album.png"),
                          buildBiggerThumbnail(
                              "https://upload.wikimedia.org/wikipedia/en/thumb/f/f2/BLACKPINK-_The_Album.png/220px-BLACKPINK-_The_Album.png"),
                          buildBiggerThumbnail(
                              "https://upload.wikimedia.org/wikipedia/en/thumb/f/f2/BLACKPINK-_The_Album.png/220px-BLACKPINK-_The_Album.png"),
                          buildBiggerThumbnail(
                              "https://upload.wikimedia.org/wikipedia/en/thumb/f/f2/BLACKPINK-_The_Album.png/220px-BLACKPINK-_The_Album.png"),
                          buildBiggerThumbnail(
                              "https://upload.wikimedia.org/wikipedia/en/thumb/f/f2/BLACKPINK-_The_Album.png/220px-BLACKPINK-_The_Album.png"),
                        ],
                      ),
                    ),
                    //AKHIR Based on your activity
                    SizedBox(height: 10),
                    Container(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 15),
                          child: Text(
                            "Top week song",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 30),
                          ),
                        ),
                      ],
                    )),
                    //Top Week Song THUMBNAIL
                    Container(
                      height: MediaQuery.of(context).size.height / 4,
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(vertical: 10),
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          buildBiggerThumbnail(
                              "https://upload.wikimedia.org/wikipedia/en/thumb/f/f2/BLACKPINK-_The_Album.png/220px-BLACKPINK-_The_Album.png"),
                          buildBiggerThumbnail(
                              "https://upload.wikimedia.org/wikipedia/en/thumb/f/f2/BLACKPINK-_The_Album.png/220px-BLACKPINK-_The_Album.png"),
                          buildBiggerThumbnail(
                              "https://upload.wikimedia.org/wikipedia/en/thumb/f/f2/BLACKPINK-_The_Album.png/220px-BLACKPINK-_The_Album.png"),
                          buildBiggerThumbnail(
                              "https://upload.wikimedia.org/wikipedia/en/thumb/f/f2/BLACKPINK-_The_Album.png/220px-BLACKPINK-_The_Album.png"),
                          buildBiggerThumbnail(
                              "https://upload.wikimedia.org/wikipedia/en/thumb/f/f2/BLACKPINK-_The_Album.png/220px-BLACKPINK-_The_Album.png"),
                          buildBiggerThumbnail(
                              "https://upload.wikimedia.org/wikipedia/en/thumb/f/f2/BLACKPINK-_The_Album.png/220px-BLACKPINK-_The_Album.png"),
                        ],
                      ),
                    ),
                    //AKHIR Top week song
                  ],
                ),
              ],
            ),
            /*
            Align(
              alignment: Alignment(0, 1),
              child: Container(
                height: MediaQuery.of(context).size.height / 6,
                child: Column(
                  children: [
                    //Play song bar
                    Container(
                      height: MediaQuery.of(context).size.height / 12,
                      color: Color.fromARGB(255, 40, 40, 40),
                      child: Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height / 12,
                            width: MediaQuery.of(context).size.height / 12,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://upload.wikimedia.org/wikipedia/en/thumb/f/f1/IU_-_Love_Poem_EP.png/220px-IU_-_Love_Poem_EP.png"))),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Love Poem",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18),
                                ),
                                Text(
                                  "IU",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 13),
                                ),
                              ],
                            ),
                          ),
                          Spacer(),
                          Container(
                            child: Align(
                              alignment: Alignment(1, 0),
                              child: Row(
                                children: [
                                  IconButton(
                                    icon: Icon(Icons.favorite_outline_outlined,
                                        color: Colors.white),
                                    onPressed: () {},
                                  ),
                                  IconButton(
                                    icon: Icon(Icons.play_arrow_rounded,
                                        color: Colors.white),
                                    onPressed: () {},
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(height: 1),
                    //Bottom bar menu
                    Container(
                      height: MediaQuery.of(context).size.height / 12 - 1,
                      color: Color.fromARGB(255, 40, 40, 40),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          IconButton(
                            icon: Icon(Icons.home_filled, color: Colors.white),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: Icon(Icons.search, color: Colors.white),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: Icon(Icons.list, color: Colors.white),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
           */ //widget bottom bar custom
          ],
        ),
      ),
    );
  }
}
