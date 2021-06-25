import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'package:store_app/screens/RatingDetails.dart';

class AllReviews extends StatelessWidget {
  const AllReviews({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Column(
        children: [
          Container(
            height: 250.0,
            decoration: new BoxDecoration(
              color: Colors.green,
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
                color: Colors.green,
                shape: StadiumBorder(),
                child: Container(
                  width: 300,
                  height: 52,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Ratings & Reviews",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
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
          child: ListView(
            //  scrollDirection: Axis.vertical,
            children: [
              GestureDetector(
                onTap: () => {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => RatingProfiles()))
                },
                child: MyArticlesthree(
                    "https://image.flaticon.com/icons/png/512/2534/2534183.png",
                    "Noah ",
                    "Regular Customer"),
              ),
              GestureDetector(
                onTap: () => {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => RatingProfiles()))
                },
                child: MyArticlesthree(
                    "https://image.flaticon.com/icons/png/512/2534/2534183.png",
                    "Jack M.",
                    "New Customer"),
              ),
              GestureDetector(
                onTap: () => {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => RatingProfiles()))
                },
                child: MyArticlesthree(
                    "https://image.flaticon.com/icons/png/512/2534/2534183.png",
                    "Johnson",
                    "New Customer"),
              ),
              GestureDetector(
                onTap: () => {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => RatingProfiles()))
                },
                child: MyArticlesthree(
                    "https://image.flaticon.com/icons/png/512/2534/2534183.png",
                    "Amer",
                    "Regular Customer"),
              ),
              GestureDetector(
                onTap: () => {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => RatingProfiles()))
                },
                child: MyArticlesthree(
                    "https://image.flaticon.com/icons/png/512/2534/2534183.png",
                    "Babar azam",
                    "Regular Customer"),
              ),
              GestureDetector(
                onTap: () => {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => RatingProfiles()))
                },
                child: MyArticlesthree(
                    "https://image.flaticon.com/icons/png/512/2534/2534183.png",
                    "Zahid",
                    "New Customer"),
              ),
              GestureDetector(
                onTap: () => {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => RatingProfiles()))
                },
                child: MyArticlesthree(
                    "https://image.flaticon.com/icons/png/512/2534/2534183.png",
                    "Umar",
                    "Regular Customer"),
              ),
            ],
          ),
        ),
      ),
    ]);
  }
}

// ignore: non_constant_identifier_names
Container MyArticlesthree(String url, String heading, String subheading) {
  return Container(
    child: Padding(
      padding: const EdgeInsets.only(left: 8, right: 8),
      child: Card(
        // shape: StadiumBorder(),
        child: ListTile(
          leading: Image.network(
            url,
          ),
          title: Text(
            heading,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 4.0, right: 3),
            child: SmoothStarRating(
              allowHalfRating: false,
              onRated: (v) {},
              starCount: 5,
              size: 20,
              isReadOnly: true,
              // spacing: 5,
              color: Colors.black,
            ),
          ),
          trailing: Padding(
            padding: const EdgeInsets.only(right: 5, top: 0),
            child: Column(children: [
              IconButton(
                icon: Row(children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 0.0),
                    child: Center(
                      child: Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                ]),
                onPressed: () => {},
              ),
            ]),
          ),
        ),
      ),
    ),
  );
}
