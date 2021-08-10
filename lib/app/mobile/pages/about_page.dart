import 'package:flutter/material.dart';

class AboutPageMobile extends StatelessWidget {
  const AboutPageMobile({Key? key}) : super(key: key);

  TextStyle get primaryStyle => TextStyle(
        fontSize: 30.0,
        letterSpacing: 1.2,
        fontFamily: "Megrim",
        color: Colors.black87,
        fontWeight: FontWeight.bold,
      );

  TextStyle get secondaryStyle => TextStyle(
        fontSize: 24.0,
        letterSpacing: 1,
      );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 40.0),
            height: 100.0,
            width: double.infinity,
            decoration: BoxDecoration(
              // border: Border.all(),
              color: Colors.white,
              image: DecorationImage(
                // alignment: Alignment.topCenter,
                // fit: BoxFit.,
                image: AssetImage("images/about_art.jpeg"),
              ),
            ),
          ),
          Container(
            color: Colors.white,
            padding: const EdgeInsets.only(
              top: 40.0,
              right: 12.0,
              bottom: 30.0,
              left: 12.0,
            ),
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: "The Wood ",
                    style: primaryStyle,
                  ),
                  TextSpan(
                    text:
                        "is the best Maldivian hard rock band from capital city Male' formed in 2006. It consists of brothers vocalist Ammadey bassist Mo, guitarists Hamza and Shifau, Zahil on keys and Azeen on drums.",
                    style: secondaryStyle,
                  )
                ],
              ),
              textAlign: TextAlign.justify,
              style: secondaryStyle,
            ),
          ),
          Container(
            color: Colors.white,
            padding:
                const EdgeInsets.symmetric(vertical: 40.0, horizontal: 12.0),
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: "The Wood brings ",
                    style: secondaryStyle,
                  ),
                  TextSpan(
                    text: "music ",
                    style: primaryStyle,
                  ),
                  TextSpan(
                    text:
                        "that electrifies the audience in awe with their mesmerizing performance. The energetic attitude and presence make sure that the guests are well entertained.",
                    style: secondaryStyle,
                  )
                ],
              ),
              textAlign: TextAlign.justify,
              style: secondaryStyle,
            ),
          ),
          Container(
            color: Colors.white,
            padding:
                const EdgeInsets.symmetric(vertical: 30.0, horizontal: 12.0),
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text:
                        "Their relationship with the clients they have performed for has been rated as a great ",
                    style: secondaryStyle,
                  ),
                  TextSpan(
                    text: "bond ",
                    style: primaryStyle,
                  ),
                  TextSpan(
                    text:
                        "and understanding because of their enigmatic performance.",
                    style: secondaryStyle,
                  )
                ],
              ),
              textAlign: TextAlign.justify,
              style: secondaryStyle,
            ),
          ),
          Container(
            color: Colors.white,
            padding:
                const EdgeInsets.symmetric(vertical: 30.0, horizontal: 12.0),
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: "The various variety of ",
                    style: secondaryStyle,
                  ),
                  TextSpan(
                    text: "musical genres ",
                    style: primaryStyle,
                  ),
                  TextSpan(
                    text:
                        "they play from Classic rock, Latin, RnB and the latest billboard music is why the wood has been around for more than a decade.",
                    style: secondaryStyle,
                  ),
                ],
              ),
              textAlign: TextAlign.justify,
              style: secondaryStyle,
            ),
          ),
        ],
      ),
    );
  }
}
