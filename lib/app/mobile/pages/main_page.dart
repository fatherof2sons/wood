import 'dart:io';
import 'dart:ui';
import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import '../../styles.dart';
// import 'package:wood/app/mobile/pages/social_page.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final controller = PageController();

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<PageOffset>(
      create: (_) => PageOffset(controller),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              PageView(
                controller: controller,
                physics: ClampingScrollPhysics(),
                children: [
                  Page1(),
                  Page2(),
                ],
              ),
              BackFrame(),
              BackFrameTwo(),
              BackFrameThree(),
              AmmadeyImage(),
              HambeImage(),
              MoImage(),
              AzeenImage(),
              ZahilImage(),
              ChippeImage(),
              PageIndicator(),
              BackFrameFront(),
            ],
          ),
        ),
      ),
    );
  }
}

class BackFrameFront extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<PageOffset>(
      builder: (context, notifier, child) => Positioned(
        bottom: 0,
        left: 0,
        child: Opacity(
          opacity: 0.9,
          child: IgnorePointer(
            child: Container(
              height: 140.0,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.black,
                gradient: LinearGradient(
                  colors: [Colors.transparent, Colors.black],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class BackFrame extends StatelessWidget {
  const BackFrame({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<PageOffset>(
      builder: (context, notifier, child) => Positioned(
        left: -0.85 * notifier.offset + 230.0,
        child: Opacity(
          opacity: 0.1,
          child: IgnorePointer(
            child: Container(
              width: 120.0,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                color: Colors.white54,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class BackFrameTwo extends StatelessWidget {
  const BackFrameTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<PageOffset>(
      builder: (context, notifier, child) => Positioned(
        left: -0.85 * notifier.offset + 388.0,
        child: Opacity(
          opacity: 0.1,
          child: IgnorePointer(
            child: Container(
              width: 30.0,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                color: Colors.brown,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class BackFrameThree extends StatelessWidget {
  const BackFrameThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<PageOffset>(
      builder: (context, notifier, child) => Positioned(
        left: -0.95 * notifier.offset + 460.0,
        child: Opacity(
          opacity: 0.1,
          child: IgnorePointer(
            child: Container(
              width: 12.0,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class PageIndicator extends StatelessWidget {
  const PageIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double size = 1.0;
    BoxShape shape = BoxShape.rectangle;
    return Consumer<PageOffset>(
      builder: (context, notifier, _) {
        int page = notifier.page.round();
        return Positioned(
          bottom: 30.0,
          // left: -0.85 * notifier.offset + 370.0,
          child: Row(
            children: [
              Container(
                width: 10,
                height: size,
                decoration: BoxDecoration(
                  shape: shape,
                  color: page == 0 ? white : lightGrey,
                ),
              ),
              SizedBox(width: 2.5),
              Container(
                width: 10,
                height: size,
                decoration: BoxDecoration(
                  shape: shape,
                  color: page != 0 ? white : lightGrey,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(top: 60.0),
      alignment: Alignment.topLeft,
      color: Colors.grey.shade900,
      child: Title(),
    );
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 40.0, horizontal: 26.0),
      // alignment: Alignment.topRight,
      color: Colors.grey.shade900,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SocialMediaIcons(),
          SizedBox(height: 90.0),
          LinkNav(),
        ],
      ),
    );
  }
}

class LinkNav extends StatelessWidget {
  const LinkNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      // crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Linker("The Band"),
        SizedBox(height: 40.0),
        Linker("Members"),
      ],
    );
  }
}

class Linker extends StatelessWidget {
  const Linker(this.name);
  final String name;

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: TextStyle(
        fontFamily: "Megrim",
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
        color: Colors.white54,
      ),
    );
  }
}

class SocialMediaIcons extends StatelessWidget {
  const SocialMediaIcons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color color = Colors.white60;
    return Column(
      children: [
        Text(
          "- Stay Connected -",
          style: TextStyle(
            fontFamily: "Megrim",
            // decoration: TextDecoration.underline,
            fontSize: 12.0,
            wordSpacing: 2,
            letterSpacing: 2,
          ),
        ),
        SizedBox(height: 10.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              FontAwesomeIcons.facebook,
              color: color,
            ),
            SizedBox(width: 18.0),
            Icon(
              FontAwesomeIcons.facebookMessenger,
              color: color,
            ),
            SizedBox(width: 18.0),
            Icon(
              FontAwesomeIcons.instagram,
              color: color,
            ),
            SizedBox(width: 18.0),
            Icon(
              FontAwesomeIcons.youtube,
              color: color,
            ),
            SizedBox(width: 18.0),
            Icon(
              FontAwesomeIcons.twitter,
              color: color,
            ),
            SizedBox(width: 18.0),
            Icon(
              FontAwesomeIcons.google,
              color: color,
            ),
          ],
        ),
      ],
    );
  }
}

class MenuIcon extends StatelessWidget {
  const MenuIcon({Key? key, @required this.onTap}) : super(key: key);
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: (MediaQuery.of(context).size.height / 2) - 20.0,
      left: 20.0,
      child: Align(
        alignment: Alignment.centerLeft,
        child: InkWell(
          child: Icon(Icons.menu),
          onTap: onTap,
        ),
      ),
    );
  }
}

class AmmadeyImage extends StatelessWidget {
  final String image = "images/ammadey.png";

  @override
  Widget build(BuildContext context) {
    return Consumer<PageOffset>(
      builder: (context, notifier, child) => Positioned(
        bottom: 100.0,
        left: -0.75 * notifier.offset + 120.0,
        width: MediaQuery.of(context).size.width * 1.7,
        child: child!,
      ),
      child: IgnorePointer(
        child: Image.asset(
          image,
        ),
      ),
    );
  }
}

class HambeImage extends StatelessWidget {
  final String image = "images/hambe.png";

  @override
  Widget build(BuildContext context) {
    return Consumer<PageOffset>(
      builder: (context, notifier, child) => Positioned(
        bottom: -20.0,
        left: -1.05 * notifier.offset + 30,
        width: MediaQuery.of(context).size.width * 0.6,
        child: child!,
      ),
      child: IgnorePointer(
        child: Image.asset(
          image,
        ),
      ),
    );
  }
}

class ZahilImage extends StatelessWidget {
  final String image = "images/zahil.png";

  @override
  Widget build(BuildContext context) {
    return Consumer<PageOffset>(
      builder: (context, notifier, child) => Positioned(
        bottom: -20.0,
        left: -0.85 * notifier.offset + 280,
        width: MediaQuery.of(context).size.width * 0.9,
        child: child!,
      ),
      child: IgnorePointer(
        child: Image.asset(
          image,
        ),
      ),
    );
  }
}

class AzeenImage extends StatelessWidget {
  final String image = "images/azeen.png";

  @override
  Widget build(BuildContext context) {
    return Consumer<PageOffset>(
      builder: (context, notifier, child) => Positioned(
        bottom: -20.0,
        left: -0.85 * notifier.offset + 460,
        width: MediaQuery.of(context).size.width * 0.5,
        child: child!,
      ),
      child: IgnorePointer(
        child: Image.asset(
          image,
        ),
      ),
    );
  }
}

class ChippeImage extends StatelessWidget {
  final String image = "images/chippe.png";

  @override
  Widget build(BuildContext context) {
    return Consumer<PageOffset>(
      builder: (context, notifier, child) => Positioned(
        bottom: -150.0,
        left: -0.95 * notifier.offset + 230,
        width: MediaQuery.of(context).size.width * 1.2,
        child: child!,
      ),
      child: IgnorePointer(
        child: Image.asset(
          image,
        ),
      ),
    );
  }
}

class MoImage extends StatelessWidget {
  final String image = "images/mo.png";

  @override
  Widget build(BuildContext context) {
    return Consumer<PageOffset>(
      builder: (context, notifier, child) => Positioned(
        bottom: -30.0,
        left: -1.0 * notifier.offset - 40,
        width: MediaQuery.of(context).size.width * 1.5,
        child: child!,
      ),
      child: IgnorePointer(
        child: Image.asset(
          image,
        ),
      ),
    );
  }
}

class Title extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: RotatedBox(
        quarterTurns: 1,
        child: Transform.translate(
          offset: Offset(0, 14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Transform.translate(
                offset: Offset(0, 18),
                child: Text(
                  "The",
                  style: TextStyle(
                    fontFamily: "New Rocker",
                    color: Colors.white60,
                    fontSize: 16.0,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                "Wood",
                style: TextStyle(
                    fontFamily: "New Rocker",
                    color: Colors.white60,
                    fontSize: 120.0,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.lineThrough,
                    decorationColor: Colors.grey.shade900),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PageOffset extends ChangeNotifier {
  double _offset = 0;
  double _page = 0;
  bool _disposed = false;

  PageOffset(PageController controller) {
    controller.addListener(() {
      _offset = controller.offset;
      _page = controller.offset;
      notifyListeners();
    });
  }

  double get offset => _offset;
  double get page => _page;

  @override
  void dispose() {
    _disposed = true;
    super.dispose();
  }

  @override
  void notifyListeners() {
    if (!_disposed) {
      super.notifyListeners();
    }
  }
}
