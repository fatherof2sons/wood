import 'dart:ui';
import 'dart:math' as math;
import 'package:flutter/material.dart';
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
              // Opacity(
              //   opacity: 0.2,
              //   child: Container(
              //     width: MediaQuery.of(context).size.width,
              //     height: MediaQuery.of(context).size.height / 3,
              //     decoration: BoxDecoration(
              //         gradient: LinearGradient(
              //           tileMode: TileMode.clamp,
              //           colors: [Colors.grey.shade900, Colors.black87],
              //           begin: Alignment.topCenter,
              //           end: Alignment.bottomCenter,
              //         ),
              //         backgroundBlendMode: BlendMode.colorBurn),
              //   ),
              // ),
              AmmadeyImage(),
              HambeImage(),
              MoImage(),
              AzeenImage(),
              ZahilImage(),
              ChippeImage(),
              LinkOne(),
              PageIndicator(),
              Links(),
            ],
          ),
        ),
      ),
    );
  }
}

class Links extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<PageOffset>(
      builder: (context, notifier, child) => Positioned(
        bottom: 205.0,
        left: 16.0 + MediaQuery.of(context).size.width - notifier.offset,
        child: Opacity(
          opacity: 0.5,
          child: child!,
        ),
      ),
      child: Text(
        "Life is Animation",
        style: TextStyle(fontSize: 16.0),
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
          top: 30.0,
          left: -0.85 * notifier.offset + 370.0,
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

class LinkOne extends StatelessWidget {
  const LinkOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<PageOffset>(
      builder: (context, notifier, child) => Positioned(
        top: 45.0,
        left: -0.2 * -notifier.offset + 800,
        child: Text(
          "About",
          style: TextStyle(
            fontFamily: "New Rocker",
            color: Colors.white,
            fontSize: 40.0,
          ),
        ),
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 30.0),
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
      color: Colors.grey.shade900,
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
        bottom: 0.0,
        left: -0.75 * notifier.offset + 30,
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
        left: -0.85 * notifier.offset + 340,
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
        bottom: 0.0,
        left: -0.85 * notifier.offset + 560,
        width: MediaQuery.of(context).size.width * 0.4,
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
        left: -0.95 * notifier.offset + 280,
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
        left: -0.99 * notifier.offset - 70,
        width: MediaQuery.of(context).size.width * 1.6,
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
    return Consumer<PageOffset>(
      builder: (context, notifier, child) => Transform.translate(
        offset: Offset(-29 - 0.4 * notifier.offset, 0),
        child: child!,
      ),
      child: SizedBox(
        width: 200.0,
        child: FittedBox(
          fit: BoxFit.cover,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "The",
                style: TextStyle(
                  fontFamily: "Megrim",
                  color: Colors.white60,
                  fontSize: 3.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              RotatedBox(
                quarterTurns: 1,
                child: Text(
                  "Wood",
                  style: TextStyle(
                    fontFamily: "New Rocker",
                    color: Colors.white60,
                    // fontSize: 70.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BandImage extends StatelessWidget {
  const BandImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 20.0,
      child: Container(
        alignment: Alignment.bottomCenter,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / 3,
        decoration: BoxDecoration(
          // image: DecorationImage(
          //   colorFilter: ColorFilter.srgbToLinearGamma(),
          //   image: AssetImage("images/band.jpg"),
          // ),
          gradient: LinearGradient(
              colors: [Colors.white, Colors.black],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ColorFiltered(
            colorFilter: ColorFilter.mode(
                Colors.white.withOpacity(0.4), BlendMode.colorBurn),
            child: Image.asset(
              "images/band.jpg",
            ),
          ),
        ),
      ),
    );
  }
}

class PageOffset extends ChangeNotifier {
  double _offset = 0;
  double _page = 0;

  PageOffset(PageController controller) {
    controller.addListener(() {
      _offset = controller.offset;
      _page = controller.offset;
      notifyListeners();
    });
  }

  double get offset => _offset;
  double get page => _page;
}
