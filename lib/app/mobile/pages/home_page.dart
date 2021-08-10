import 'package:flutter/material.dart';

class HomePageMobile extends StatelessWidget {
  const HomePageMobile({
    Key? key,
    this.font: "Cinzel Decorative",
  }) : super(key: key);
  final String font;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        image: DecorationImage(
          alignment: Alignment.bottomCenter,
          fit: BoxFit.fitWidth,
          image: AssetImage("images/wood_art.jpg"),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 60.0),
        child: Text(
          "The Wood",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: font,
            fontSize: 32.0,
            color: Colors.black87,
            fontWeight: FontWeight.bold,
            // decoration: TextDecoration.underline,
          ),
        ),
      ),
    );
  }
}
