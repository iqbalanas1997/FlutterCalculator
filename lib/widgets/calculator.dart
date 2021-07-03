import 'package:flutter/material.dart';

class Calculator extends StatelessWidget {
  final String text;
  final int fillColor;
  final int textColor;
  final double btnRadius;
  const Calculator({
    Key? key,
    required this.text,
    required this.fillColor,
    this.textColor = 0xFFFFFFFF,
    this.btnRadius = 50,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: SizedBox(
        width: 65,
        height: 65,
        child: TextButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                  fillColor != null ? Color(fillColor) : null),
              foregroundColor: MaterialStateProperty.all(
                Color(textColor),
              ),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(btnRadius),
                  side: BorderSide(color: Colors.white12),
                ),
              ),
            ),
            onPressed: () {},
            child: Text(
              text,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            )),
      ),
    );
  }
}
