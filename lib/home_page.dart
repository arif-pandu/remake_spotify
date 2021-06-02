import 'package:flutter/material.dart';

class SpotifyHome extends StatefulWidget {
  @override
  _SpotifyHomeState createState() => _SpotifyHomeState();
}

class _SpotifyHomeState extends State<SpotifyHome> {
  //
  //
  //WIDGET THUMBNAIL RECENTLY PLAYED
  Widget buildSmallerThumbnail(
      String imageURLSmaller, String smallTitleThumbnail) {
    return Container(
      width: 125,
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 0),
      child: Column(
        children: [
          Container(
              height: 115,
              width: 115,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                    image: AssetImage(imageURLSmaller),
                  ))),
          Container(
              padding: EdgeInsets.only(top: 5),
              width: 110,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 110,
                    margin: EdgeInsets.only(left: 0),
                    child: Text(
                      smallTitleThumbnail,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }

  Widget buildBiggerThumbnail(String imageURLBigger) {
    return Container(
      width: 146,
      margin: EdgeInsets.all(5),
      child: Column(
        children: [
          Container(
              height: 145,
              width: 145,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage(imageURLBigger),
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
        body: ListView(
          shrinkWrap: true,
          children: [
            Column(
              children: [
                //TOP BAR
                Container(
                  height: MediaQuery.of(context).size.height / 9,
                  child: Container(
                    color: Color.fromARGB(0, 255, 255, 255),
                    child: Align(
                      alignment: Alignment(0, 0.75),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(5, 0, 0, 0),
                              child: Text(
                                "Good afternoon",
                                style: TextStyle(
                                    fontFamily: "Gotham",
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                            IconButton(
                              icon: Icon(Icons.settings, color: Colors.white),
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
                                        MediaQuery.of(context).size.height / 14,
                                    width:
                                        MediaQuery.of(context).size.height / 14,
                                    //flex: 1,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(5),
                                            bottomLeft: Radius.circular(5)),
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/image/good_afternoon_1.png"),
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
                                            bottomRight: Radius.circular(5)),
                                      ),
                                      child: Center(
                                        child: Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              9,
                                          child: Text(
                                            "Kumpulan... \n nada",
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                                fontSize: 13,
                                                fontFamily: "Gotham",
                                                fontStyle: FontStyle.normal,
                                                fontWeight: FontWeight.w500,
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
                                        MediaQuery.of(context).size.height / 14,
                                    width:
                                        MediaQuery.of(context).size.height / 14,
                                    //flex: 1,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(5),
                                            bottomLeft: Radius.circular(5)),
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/image/good_afternoon_2.png"),
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
                                            bottomRight: Radius.circular(5)),
                                      ),
                                      child: Center(
                                        child: Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              9,
                                          child: Text(
                                            "Mishary Rasyid",
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                                fontSize: 13,
                                                fontFamily: "Gotham",
                                                fontStyle: FontStyle.normal,
                                                fontWeight: FontWeight.w500,
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
                                        MediaQuery.of(context).size.height / 14,
                                    width:
                                        MediaQuery.of(context).size.height / 14,
                                    //flex: 1,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(5),
                                            bottomLeft: Radius.circular(5)),
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/image/good_afternoon_3.png"),
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
                                            bottomRight: Radius.circular(5)),
                                      ),
                                      child: Center(
                                        child: Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              9,
                                          child: Text(
                                            "Rintik Sedu",
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                                fontSize: 13,
                                                fontFamily: "Gotham",
                                                fontStyle: FontStyle.normal,
                                                fontWeight: FontWeight.w500,
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
                                        MediaQuery.of(context).size.height / 14,
                                    width:
                                        MediaQuery.of(context).size.height / 14,
                                    //flex: 1,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(5),
                                            bottomLeft: Radius.circular(5)),
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/image/good_afternoon_4.png"),
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
                                            bottomRight: Radius.circular(5)),
                                      ),
                                      child: Center(
                                        child: Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              9,
                                          child: Text(
                                            "Kumpulan nada",
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                                fontSize: 13,
                                                fontFamily: "Gotham",
                                                fontStyle: FontStyle.normal,
                                                fontWeight: FontWeight.w500,
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
                                        MediaQuery.of(context).size.height / 14,
                                    width:
                                        MediaQuery.of(context).size.height / 14,
                                    //flex: 1,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(5),
                                            bottomLeft: Radius.circular(5)),
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/image/good_afternoon_5.png"),
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
                                            bottomRight: Radius.circular(5)),
                                      ),
                                      child: Center(
                                        child: Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              9,
                                          child: Text(
                                            "Pop mix",
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                                fontSize: 13,
                                                fontFamily: "Gotham",
                                                fontStyle: FontStyle.normal,
                                                fontWeight: FontWeight.w500,
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
                                        MediaQuery.of(context).size.height / 14,
                                    width:
                                        MediaQuery.of(context).size.height / 14,
                                    //flex: 1,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(5),
                                            bottomLeft: Radius.circular(5)),
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/image/good_afternoon_6.png"),
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
                                            bottomRight: Radius.circular(5)),
                                      ),
                                      child: Center(
                                        child: Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              9,
                                          child: Text(
                                            "Do You See What I See",
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                                fontSize: 13,
                                                fontFamily: "Gotham",
                                                fontStyle: FontStyle.normal,
                                                fontWeight: FontWeight.w500,
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
                      margin: EdgeInsets.only(left: 5),
                      child: Text(
                        "Recently played",
                        style: TextStyle(
                            fontFamily: "Gotham",
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 24),
                      ),
                    ),
                  ],
                )),
                SizedBox(height: 10),
                //RECENTLY PLAYED
                Container(
                  height: MediaQuery.of(context).size.height / 5 - 10,
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(vertical: 10),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      buildSmallerThumbnail(
                          "assets/image/recently_played_1.png",
                          "Sofia - Clairo"),
                      buildSmallerThumbnail(
                          "assets/image/recently_played_2.png",
                          "Percaya Aku - Chyntia Gabriella"),
                      buildSmallerThumbnail(
                          "assets/image/recently_played_3.png",
                          "Bintang Kehidupan - Nike Ardilla"),
                      buildSmallerThumbnail(
                          "assets/image/recently_played_4.png",
                          "Rindu Tak Bersuara - Feby Putri ft. Alvy Reff"),
                      buildSmallerThumbnail(
                          "assets/image/recently_played_5.png",
                          "Rintik Sedu Podcast"),
                      buildSmallerThumbnail(
                          "assets/image/recently_played_6.png",
                          "Dear God - Avenged Sevenfold"),
                    ],
                  ),
                ),
                //EDNDING RECENTLY PLAYED
                SizedBox(height: 25),
                Container(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 5),
                      child: Text(
                        "Get inspired",
                        style: TextStyle(
                            fontFamily: "Gotham",
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 24),
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
                      buildBiggerThumbnail("assets/image/get_inspired_1.png"),
                      buildBiggerThumbnail("assets/image/get_inspired_2.png"),
                      buildBiggerThumbnail("assets/image/get_inspired_3.png"),
                      buildBiggerThumbnail("assets/image/get_inspired_4.png"),
                      buildBiggerThumbnail("assets/image/get_inspired_5.png"),
                      buildBiggerThumbnail("assets/image/get_inspired_6.png"),
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
                      margin: EdgeInsets.only(left: 5),
                      child: Text(
                        "Made for you",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 24),
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
                      buildBiggerThumbnail("assets/image/get_inspired_6.png"),
                      buildBiggerThumbnail("assets/image/get_inspired_5.png"),
                      buildBiggerThumbnail("assets/image/get_inspired_4.png"),
                      buildBiggerThumbnail("assets/image/get_inspired_3.png"),
                      buildBiggerThumbnail("assets/image/get_inspired_2.png"),
                      buildBiggerThumbnail("assets/image/get_inspired_1.png"),
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
                      margin: EdgeInsets.only(left: 5),
                      child: Text(
                        "Top week song",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 24),
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
                      buildBiggerThumbnail("assets/image/get_inspired_2.png"),
                      buildBiggerThumbnail("assets/image/get_inspired_4.png"),
                      buildBiggerThumbnail("assets/image/get_inspired_6.png"),
                      buildBiggerThumbnail("assets/image/get_inspired_1.png"),
                      buildBiggerThumbnail("assets/image/get_inspired_3.png"),
                      buildBiggerThumbnail("assets/image/get_inspired_5.png"),
                    ],
                  ),
                ),
                //AKHIR Top week song
              ],
            ),
          ],
        ),
      ),
    );
  }
}
