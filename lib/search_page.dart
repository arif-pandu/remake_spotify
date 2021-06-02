import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  //Widget Search Category
  Widget searchCategory(String searchCategoryURL, String genreSong) {
    return Flexible(
      flex: 1,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 5, horizontal: 1),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: AssetImage(searchCategoryURL),
            fit: BoxFit.contain,
          ),
        ),
        child: Container(
          padding: EdgeInsets.all(5),
          child: Align(
            alignment: Alignment(-0.75, -0.75),
            child: Container(
              width: 75,
              child: Text(genreSong,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold)),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            Divider(height: MediaQuery.of(context).size.height / 6),
            //SEARCH TITLE
            Container(
              height: MediaQuery.of(context).size.height / 12,
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: Text(
                  "Search",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.w800,
                    fontFamily: "Gotham",
                  ),
                ),
              ),
            ),
            //SEARCH BAR
            Container(
                height: MediaQuery.of(context).size.height * 0.06,
                width: MediaQuery.of(context).size.width - 16,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: IconButton(
                            onPressed: () {}, icon: Icon(Icons.search)),
                      ),
                      Container(
                        child: Text(
                          "Artists, songs, or podcast",
                          style: TextStyle(
                              color: Color.fromARGB(255, 40, 40, 40),
                              fontWeight: FontWeight.w600),
                        ),
                      )
                    ],
                  ),
                )),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
              height: MediaQuery.of(context).size.height / 25,
              child: Align(
                alignment: Alignment(-1, 0),
                child: Text(
                  "Your top genres",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.11 + 10,
              child: Row(
                children: [
                  searchCategory("assets/image/search_category_1.png", "Pop"),
                  searchCategory("assets/image/search_category_2.png", "K-Pop"),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.11 + 10,
              child: Row(
                children: [
                  searchCategory(
                      "assets/image/search_category_3.png", "Musik Indonesia"),
                  searchCategory(
                      "assets/image/search_category_4.png", "Made For You"),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
              height: MediaQuery.of(context).size.height / 25,
              child: Align(
                alignment: Alignment(-1, 0),
                child: Text(
                  "Browse all",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 100,
              child: Row(
                children: [
                  searchCategory("assets/image/search_category_5.png", "Lo-Fi"),
                  searchCategory(
                      "assets/image/search_category_6.png", "On Repeats"),
                ],
              ),
            ),
            SizedBox(
              height: 100,
              child: Row(
                children: [
                  searchCategory("assets/image/search_category_1.png", "West"),
                  searchCategory("assets/image/search_category_3.png", "Rock"),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
