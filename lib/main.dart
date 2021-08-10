import 'package:fancy_drawer/fancy_drawer.dart';
import 'package:flutter/material.dart';
import 'package:wood/app/mobile/pages/landing_page.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The Wood Web',
      theme: ThemeData(fontFamily: "Abel"),
      home: LandingPageMobile(),
    );
  }
}
