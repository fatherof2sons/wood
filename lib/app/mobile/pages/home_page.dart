// import 'package:flutter/material.dart';

// class HomePageMobile extends StatelessWidget {
//   const HomePageMobile({
//     Key? key,
//     this.font: "Cinzel Decorative",
//   }) : super(key: key);
//   final String font;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: MediaQuery.of(context).size.height,
//       width: MediaQuery.of(context).size.width,
//       decoration: BoxDecoration(
//         image: DecorationImage(
//           alignment: Alignment.bottomCenter,
//           image: AssetImage("images/wood_art.jpg"),
//         ),
//       ),
//       child: Center(
//         child: Text(
//           "The Wood",
//           textAlign: TextAlign.center,
//           style: TextStyle(
//             fontFamily: font,
//             fontSize: 60.0,
//             color: Colors.grey.shade900,
//             fontWeight: FontWeight.bold,
//             // decoration: TextDecoration.overline,
//             // decorationStyle: TextDecorationStyle.wavy,
//             // decorationThickness: 0.1,
//           ),
//         ),
//       ),
//     );
//   }
// }

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
        // height: MediaQuery.of(context).size.height,
        // width: MediaQuery.of(context).size.width,
        // decoration: BoxDecoration(
        //   image: DecorationImage(
        //     alignment: Alignment.bottomCenter,
        //     image: AssetImage("images/wood_art.jpg"),
        //   ),
        // ),
        // child: Center(
        //   child: Text(
        //     "The Wood",
        //     textAlign: TextAlign.center,
        //     style: TextStyle(
        //       fontFamily: font,
        //       fontSize: 60.0,
        //       color: Colors.grey.shade900,
        //       fontWeight: FontWeight.bold,
        //     ),
        //   ),
        // ),
        );
  }
}
