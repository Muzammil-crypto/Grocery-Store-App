import 'package:flutter/material.dart';
import 'package:store_app/screens/Reviews.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    Key? key,
    required this.icon,
    required this.iconColor,
    required this.bgColor,
    required this.tap,
  }) : super(key: key);
  final Icon icon;
  final Color iconColor, bgColor;
  final GestureTapCallback tap;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(25),
          ),
          color: bgColor,
        ),
        child: Container(
          child: IconButton(
            onPressed: () => {
              Navigator.push(context, new MaterialPageRoute(builder: (context)=>Reviews()))
            },
              icon: Icon(
                Icons.arrow_back,
                color: iconColor,
              )),
        ));
  }
}
