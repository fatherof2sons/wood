import 'package:fancy_drawer/fancy_drawer.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The Wood Web',
      theme: ThemeData(fontFamily: "Abel"),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late FancyDrawerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = FancyDrawerController(
        vsync: this, duration: Duration(milliseconds: 250))
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: FancyDrawerWrapper(
        controller: _controller,
        backgroundColor: Colors.black87,
        drawerItems: _buildItems(context),
        child: SafeArea(
          child: Scaffold(
            appBar: AppBar(
              elevation: 0.0,
              backgroundColor: Colors.white70,
              centerTitle: true,
              title: Text(
                "The Wood",
                style: TextStyle(
                  fontFamily: "Bowlby One SC",
                  fontSize: 22.0,
                  color: Colors.black87,
                ),
              ),
              leading: IconButton(
                icon: Icon(
                  Icons.menu,
                  color: Colors.black,
                ),
                onPressed: () {
                  _controller.toggle();
                },
              ),
            ),
          ),
        ),
      ),
    );
  }

  List<Widget> _buildItems(BuildContext context) {
    return [
      Links("Home", () {}),
      Links("About", () {}),
      Links("Contact", () {}),
      Links("Social", () {}),
    ];
  }
}

class Links extends Padding {
  Links(String value, void Function() onPressed)
      : super(
            padding: EdgeInsets.only(left: 80.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: TextButton(
                child: Text(
                  value,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                  ),
                ),
                onPressed: onPressed,
              ),
            ));
}
