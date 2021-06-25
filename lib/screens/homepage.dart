import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:store_app/Widgets/User_details.dart';
import 'package:store_app/Widgets/my_drawer.dart';
import 'package:store_app/screens/Reviews.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        actions: [
          IconButton(
            alignment: Alignment.topRight,
            onPressed: () => {
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => Reviews()))
            },
            icon: Icon(
              Icons.arrow_forward,
            ),
          )
        ],
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
          bottom: Radius.elliptical(80, 350),
        )),
        title: Center(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Container(
              child: Text(
                "Shop Profile",
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontStyle: FontStyle.italic,
                    fontSize: 30,
                    color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
        backgroundColor: Colors.green,
        toolbarHeight: 50,
      ),
      backgroundColor: Colors.white,
      body: SizedBox(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: UserDetails(),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 1,
                width: 310,
                color: Colors.black,
              ),
            ),
            Expanded(
              child:
                  ListView(scrollDirection: Axis.vertical, children: <Widget>[
                Padding(
                  padding:
                      const EdgeInsets.only(left: 10, right: 10, bottom: 0.0),
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 20.0),
                    height: 100,
                    color: Colors.transparent,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        MyArticles(
                            "https://image.flaticon.com/icons/png/512/179/179452.png",
                            "New Orders"),
                        MyArticles(
                            "https://image.flaticon.com/icons/png/512/1786/1786650.png",
                            "Processed "),
                        MyArticles(
                            "https://image.flaticon.com/icons/png/512/190/190411.png",
                            "Completed"),
                        GestureDetector(
                          onTap: () => {
                            Navigator.push(
                                context,
                                new MaterialPageRoute(
                                    builder: (context) => Reviews()))
                          },
                          child: MyArticles(
                              "https://image.flaticon.com/icons/png/512/1484/1484560.png",
                              "Ratings"),
                        ),
                        MyArticles(
                            "https://image.flaticon.com/icons/png/512/2534/2534183.png",
                            "About Seller"),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8, bottom: 8),
                  child: Text(
                    "Manage Items",
                    style: TextStyle(color: Colors.black, fontSize: 25),
                  ),
                ),
                MyArticlesTwo(
                    "https://image.flaticon.com/icons/png/512/3168/3168626.png",
                    "Beautiful Double Bed",
                    "Wood Made"),
                MyArticlesTwo(
                    "https://image.flaticon.com/icons/png/512/2355/2355402.png",
                    "Glass Table",
                    "Imported Piece"),
                MyArticlesTwo(
                    "https://image.flaticon.com/icons/png/512/2271/2271494.png",
                    "Chair",
                    "With Discount"),
                MyArticlesTwo(
                    "https://image.flaticon.com/icons/png/512/595/595798.png",
                    "Sofa with one Table",
                    "With Discount"),
              ]),
            ),
          ],
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Container MyArticles(String url, String heading) {
    return Container(
      width: 90,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 10.0,
            ),
            child: IconButton(
              icon: GestureDetector(
                child: CircleAvatar(
                  radius: 30.0,
                  backgroundImage: NetworkImage(url),
                ),
              ),
              onPressed: () => {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0, left: 5),
            child: Text(heading),
          ),
        ],
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Container MyArticlesTwo(String url, String heading, String subheading) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8),
        child: Card(
          color: Colors.green,
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
              padding: const EdgeInsets.only(right: 10, top: 5),
              child: IconButton(
                icon: Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
                onPressed: () => {},
              ),
            ),
          ),
        ),
      ),
    );
  }
}
