import 'package:flutter/material.dart';

class Links extends Padding {
  Links(String value, void Function() onPressed,
      {double leftPadding: 80.0, double fontSize: 22})
      : super(
          padding: EdgeInsets.only(left: leftPadding),
          child: Align(
            alignment: Alignment.centerLeft,
            child: TextButton(
              child: Text(
                value,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: "Megrim",
                  fontSize: fontSize,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                ),
              ),
              onPressed: onPressed,
            ),
          ),
        );
}
