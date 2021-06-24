import 'package:flutter/material.dart';

class Reviews extends StatelessWidget {
  const Reviews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        shadowColor: Colors.black,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 340.0),
            child: IconButton(
              icon: Icon(
                Icons.arrow_back_ios_new,
                color: Colors.white,
              ),
              onPressed: () {
                // do something
              },
            ),
          )
        ],
      ),
      body: ListView(scrollDirection: Axis.vertical, children: [
        Column(
          children: [
            Container(
              height: 250.0,
              decoration: new BoxDecoration(
                color: Colors.orange,
                borderRadius: new BorderRadius.vertical(
                    bottom: new Radius.elliptical(
                        MediaQuery.of(context).size.width, 60.0)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Row(children: [
                Padding(
                  padding: const EdgeInsets.only(left: 17),
                  child: Icon(Icons.star),
                ),
                Card(
                  color: Colors.orange,
                  shape: StadiumBorder(),
                  child: Container(
                    width: 300,
                    height: 52,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Ratings & Reviews",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                Icon(Icons.star),
              ]),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Container(
            height: 500,
            child: Expanded(
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  MyArticlesthree(
                      "https://image.flaticon.com/icons/png/512/2534/2534183.png",
                      "heading",
                      "subheading"),
                  MyArticlesthree(
                      "https://image.flaticon.com/icons/png/512/2534/2534183.png",
                      "heading",
                      "subheading"),
                  MyArticlesthree(
                      "https://image.flaticon.com/icons/png/512/2534/2534183.png",
                      "heading",
                      "subheading"),
                  MyArticlesthree(
                      "https://image.flaticon.com/icons/png/512/2534/2534183.png",
                      "heading",
                      "subheading"),
                  MyArticlesthree(
                      "https://image.flaticon.com/icons/png/512/2534/2534183.png",
                      "heading",
                      "subheading"),
                  MyArticlesthree(
                      "https://image.flaticon.com/icons/png/512/2534/2534183.png",
                      "heading",
                      "subheading"),
                  MyArticlesthree(
                      "https://image.flaticon.com/icons/png/512/2534/2534183.png",
                      "heading",
                      "subheading"),
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}

// ignore: non_constant_identifier_names
Container MyArticlesthree(String url, String heading, String subheading) {
  return Container(
    child: Padding(
      padding: const EdgeInsets.only(left: 8, right: 8),
      child: Card(
        shape: StadiumBorder(),
        child: ListTile(
          leading: Image.network(
            url,
          ),
          title: Text(
            heading,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
          ),
          subtitle: Text(
            subheading,
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
          trailing: Padding(
            padding: const EdgeInsets.only(right: 10, top: 0),
            child: IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.blueGrey,
              ),
              onPressed: () => {},
            ),
          ),
        ),
      ),
    ),
  );
}
