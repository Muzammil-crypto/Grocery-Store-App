import 'package:flutter/material.dart';
import 'package:store_app/Widgets/CustomerReview.dart';
import 'package:store_app/Widgets/appHeader.dart';

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
              child: CustomerReview(),
            ))
          ],
        ),
      ),
    );
  }
}
