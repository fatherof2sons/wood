// import 'dart:ui';

import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:wood/app/mobile/pages/about_page.dart';
// import 'package:wood/app/mobile/pages/home_page.dart';
import 'package:wood/app/mobile/pages/main_page.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The Wood Web',
      theme: ThemeData(
        brightness: Brightness.dark,
        backgroundColor: Colors.black54,
        fontFamily: "Abel",
      ),
      home: MainPage(),
    );
  }
}
