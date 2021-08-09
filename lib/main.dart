import 'package:fancy_drawer/fancy_drawer.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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

enum OnPage { home, about, contact, social }

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

  OnPage _onPage = OnPage.home;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: FancyDrawerWrapper(
        controller: _controller,
        backgroundColor: Colors.black87,
        drawerItems: _buildItems(context),
        child: SafeArea(
          child: Scaffold(
            backgroundColor: Colors.grey.shade50,
            appBar: AppBar(
              elevation: 0.0,
              backgroundColor: Colors.grey.shade50,
              centerTitle: true,
              title: Icon(
                _onPage == OnPage.home
                    ? FontAwesomeIcons.home
                    : _onPage == OnPage.about
                        ? FontAwesomeIcons.info
                        : _onPage == OnPage.contact
                            ? FontAwesomeIcons.mailBulk
                            : FontAwesomeIcons.connectdevelop,
                color: Colors.black87,
              ),
              leading: IconButton(
                icon: Icon(
                  Icons.menu,
                  color: Colors.black,
                  size: 30.0,
                ),
                onPressed: () {
                  _controller.toggle();
                },
              ),
            ),
            body: _buildContent(),
          ),
        ),
      ),
    );
  }

  Widget _buildContent() {
    if (_onPage == OnPage.home) {
      return _home();
    } else if (_onPage == OnPage.about) {
      return _about();
    } else if (_onPage == OnPage.contact) {
      return _contact();
    } else {
      return _social();
    }
  }

  Widget _home() {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          alignment: Alignment.bottomCenter,
          image: AssetImage("images/wood_art.jpg"),
        ),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 90.0),
          child: Text(
            "The Wood",
            style: TextStyle(
              fontFamily: "Bowlby One SC",
              fontSize: 42.0,
              color: Colors.black87,
            ),
          ),
        ),
      ),
    );
  }

  Widget _about() {
    final primaryStyle = TextStyle(
      fontSize: 40.0,
      letterSpacing: 1.2,
      fontFamily: "Bowlby One SC",
      color: Colors.black87,
    );
    final secondaryStyle = TextStyle(
      fontSize: 24.0,
      letterSpacing: 1,
    );
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 40.0),
            height: 400.0,
            width: double.infinity,
            decoration: BoxDecoration(
              // border: Border.all(),
              color: Colors.white,
              image: DecorationImage(
                // alignment: Alignment.topCenter,
                fit: BoxFit.fitWidth,
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

  Widget _contact() {
    return Container(
        child: Center(
      child: Text("Contact"),
    ));
  }

  Widget _social() {
    return Container(
        child: Center(
      child: Text("Contact"),
    ));
  }

  void _pageState(OnPage onPage) {
    setState(() => _onPage = onPage);
    _controller.close();
  }

  List<Widget> _buildItems(BuildContext context) {
    return [
      Links("Home", () => _pageState(OnPage.home)),
      Links("About", () => _pageState(OnPage.about)),
      Links("Contact", () => _pageState(OnPage.contact)),
      Links("Social", () => _pageState(OnPage.social)),
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
