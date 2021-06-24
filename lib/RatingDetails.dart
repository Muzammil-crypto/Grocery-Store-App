import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'package:store_app/Video.dart';
import 'package:store_app/appHeader.dart';

import 'custon_app_bar.dart';

class RatingProfiles extends StatelessWidget {

  const RatingProfiles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0, left: 8),
              child: AppHeader(),
            ),
            Positioned(
              top: -380,
              left: -187,
              child: Opacity(
                opacity: 0.0,
                child: Image.asset("assets/cdf.png"),
              ),
            ),
            SafeArea(
                child: Padding(
              padding: const EdgeInsets.all(8 * 2.0),
              child: Column(
                children: [
                  CustomAppBar(),
                  SizedBox(
                    height: 38,
                  ),
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          "assets/cdf.png",
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Jack Johnson",
                    style: TextStyle(color: Colors.black, fontSize: 24,fontStyle: FontStyle.italic),
                  ),
                  Text(
                    "Customer",
                    style: TextStyle(color: Colors.black, fontSize: 15,fontStyle: FontStyle.italic),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Divider(
                    color: Colors.black,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Mark",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "How was the Product?",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SmoothStarRating(
                    allowHalfRating: false,
                    onRated: (v) {},
                    starCount: 5,
                    size: 45,
                    isReadOnly: false,
                    spacing: 5,
                  ),
                  SizedBox(
                    height: 10,
                  ),

                  Container(
                    height: 400,
                    width: 400,
                    color: Colors.green,
                    child: MyVideo(),

                  ),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
