import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(25),
            ),
            color: Colors.white,
          ),
          child: IconButton(
            onPressed: () => {},
            icon: Icon(Icons.arrow_back),
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
