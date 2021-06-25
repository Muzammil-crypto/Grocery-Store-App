import 'package:flutter/material.dart';
import 'package:store_app/Widgets/AllReviews.dart';
import 'package:store_app/screens/homepage.dart';

class Reviews extends StatelessWidget {
  const Reviews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        shadowColor: Colors.black,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 310.0),
            child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(25),
                  ),
                  color: Colors.white,
                ),
                child: Container(
                  child: IconButton(
                      onPressed: () => {
                            Navigator.push(
                                context,
                                new MaterialPageRoute(
                                    builder: (context) => HomePage()))
                          },
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                      )),
                )),
          ),
        ],
      ),
      body: AllReviews(),
    );
  }
}
