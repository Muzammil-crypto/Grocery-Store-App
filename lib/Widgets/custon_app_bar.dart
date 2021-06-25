import 'package:flutter/material.dart';
import 'package:store_app/screens/Reviews.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
            child: IconButton(
    onPressed: () => {
    Navigator.push(context, new MaterialPageRoute(builder: (context)=>Reviews()))
    },
              icon: Icon(Icons.arrow_back),
            ),
          ),
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          "Your Are in Place",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
