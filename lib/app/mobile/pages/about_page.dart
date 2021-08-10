import 'package:flutter/material.dart';

class AboutPageMobile extends StatelessWidget {
  const AboutPageMobile({Key? key}) : super(key: key);

  TextStyle get primaryStyle => TextStyle(
        fontSize: 70.0,
        letterSpacing: 1.2,
        fontFamily: "Megrim",
        color: Colors.black87,
        fontWeight: FontWeight.bold,
        decoration: TextDecoration.overline,
      );

  TextStyle get accentStyle =>
      primaryStyle.copyWith(decoration: TextDecoration.none, fontSize: 22.0);

  TextStyle get secondaryStyle => TextStyle(fontSize: 22.0, letterSpacing: 1);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Container(
            //   margin: EdgeInsets.only(top: 40.0),
            //   height: 100.0,
            //   width: double.infinity,
            //   decoration: BoxDecoration(
            //     // border: Border.all(),
            //     color: Colors.white,
            //     image: DecorationImage(
            //       // alignment: Alignment.topCenter,
            //       // fit: BoxFit.,
            //       image: AssetImage("images/about_art.jpeg"),
            //     ),
            //   ),
            // ),
            SizedBox(height: 20.0),
            Text(
              "Band",
              style: primaryStyle,
            ),
            SizedBox(height: 40.0),

            SizedBox(height: 14.0),
            Text(
              "The Wood is the best Maldivian hard rock band from capital city Male' formed in 2006. It consists of brothers vocalist Ammadey bassist Mo, guitarists Hamza and Shifau, Zahil on keys and Azeen on drums.",
              textAlign: TextAlign.justify,
              style: secondaryStyle,
            ),
            SizedBox(height: 40.0),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "- music -",
                style: accentStyle,
              ),
            ),
            SizedBox(height: 14.0),
            Text(
              "The Wood brings music that electrifies the audience in awe with their mesmerizing performance. The energetic attitude and presence make sure that the guests are well entertained.",
              textAlign: TextAlign.justify,
              style: secondaryStyle,
            ),
            SizedBox(height: 40.0),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                "- bond -",
                textAlign: TextAlign.left,
                style: accentStyle,
              ),
            ),
            SizedBox(height: 14.0),
            Text(
              "Their relationship with the clients they have performed for has been rated as a great bond and understanding because of their enigmatic performance.",
              textAlign: TextAlign.justify,
              style: secondaryStyle,
            ),
            SizedBox(height: 40.0),
            Text(
              "- genre -",
              textAlign: TextAlign.left,
              style: accentStyle,
            ),
            SizedBox(height: 14.0),
            Text(
              "The various variety of musical genres they play from Classic rock, Latin, RnB and the latest billboard music is why the wood has been around for more than a decade.",
              textAlign: TextAlign.justify,
              style: secondaryStyle,
            ),
          ],
        ),
      ),
    );
  }
}
