import 'package:flutter/material.dart';
import 'package:store_app/screens/homepage.dart';

class InventoryList extends StatelessWidget {
  const InventoryList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 330.0),
          child: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
              onPressed: () => {
                    Navigator.push(context,
                        new MaterialPageRoute(builder: (context) => HomePage()))
                  }),
        ),
        Padding(
          padding:
              const EdgeInsets.only(left: 10, right: 10, top: 30, bottom: 20),
          child: Container(
            width: 372,
            height: 243,
            color: Colors.white,
            child: Image.asset(
              "assets/sofa.jpg",
              colorBlendMode: BlendMode.darken,
            ),
          ),
        ),
        Text("Elegant Simple Office sofa by Furniture Design ",
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.white)),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Container(
            color: Colors.transparent,
            height: 350,
            width: 600,
            child: Column(
              children: [
                Expanded(
                  child: ListView(
                    children: [
                      Column(
                        children: [
                          ClipOval(
                            child: Image.network(
                              "https://images.pexels.com/photos/6580232/pexels-photo-6580232.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
                              height: 250,
                              width: 370,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 40.0, right: 40, bottom: 20, top: 20),
                            child: Text(
                              "Details: Elegant Simple Office Furniture Modern Sofa Set Living Room Fabric Sofa.",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                          ClipOval(
                            child: Image.network(
                              "https://images.pexels.com/photos/245208/pexels-photo-245208.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
                              height: 250,
                              width: 370,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 40.0, right: 40, bottom: 20, top: 20),
                            child: Text(
                              "Details: Elegant Simple Office Furniture Modern Sofa Set Living Room Fabric Sofa.",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                          ClipOval(
                            child: Image.network(
                              "https://images.pexels.com/photos/584399/living-room-couch-interior-room-584399.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                              height: 250,
                              width: 370,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 40.0, right: 40, bottom: 20, top: 20),
                            child: Text(
                              "Details: Elegant Simple Office Furniture Modern Sofa Set Living Room Fabric Sofa.",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                          ClipOval(
                            child: Image.network(
                              "https://images.pexels.com/photos/5411784/pexels-photo-5411784.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
                              height: 250,
                              width: 370,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 40.0, right: 40, bottom: 20, top: 20),
                            child: Text(
                              "Details: Elegant Simple Office Furniture Modern Sofa Set Living Room Fabric Sofa.",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
