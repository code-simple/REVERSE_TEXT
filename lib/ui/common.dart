import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomColor extends StatelessWidget {
  CustomColor({@required this.myColor, this.text, this.onPressed});
  final Color myColor;
  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: new SizedBox(
      width: double.infinity,
      child: RawMaterialButton(
        onPressed: onPressed,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        fillColor: myColor,
        padding: EdgeInsets.all(20.0),
        child: Text(
          text,
          style: TextStyle(fontSize: 40, color: Colors.white),
        ),
      ),
    ));
  }
}
