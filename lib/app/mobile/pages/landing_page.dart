import 'package:fancy_drawer/fancy_drawer.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wood/app/mobile/pages/about_page.dart';
import 'package:wood/app/mobile/pages/contact_page.dart';
import 'package:wood/app/mobile/pages/home_page.dart';
// import 'package:wood/app/mobile/pages/social_page.dart';
import 'package:wood/app/widgets/link.dart';

enum OnPage { home, about, contact, social }

class LandingPageMobile extends StatefulWidget {
  LandingPageMobile({Key? key}) : super(key: key);

  @override
  _LandingPageMobileState createState() => _LandingPageMobileState();
}

class _LandingPageMobileState extends State<LandingPageMobile>
    with SingleTickerProviderStateMixin {
  late FancyDrawerController _controller;
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _controller = FancyDrawerController(
        vsync: this, duration: Duration(milliseconds: 250))
      ..addListener(() {
        setState(() {});
      });
  }

  // IconData get icon => _onPage == OnPage.home
  //     ? FontAwesomeIcons.home
  //     : _onPage == OnPage.about
  //         ? FontAwesomeIcons.info
  //         : _onPage == OnPage.contact
  //             ? FontAwesomeIcons.mailBulk
  //             : FontAwesomeIcons.connectdevelop;

  // void _pageState(OnPage onPage) {
  //   setState(() => _onPage = onPage);
  //   _controller.close();
  // }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  // OnPage _onPage = OnPage.home;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: FancyDrawerWrapper(
        controller: _controller,
        backgroundColor: Colors.black87,
        drawerItems: _buildItems(context),
        child: SafeArea(
          child: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              elevation: 0.0,
              backgroundColor: Colors.white,
              centerTitle: true,
              title: IconButton(
                icon: Icon(
                  Icons.menu,
                  color: Colors.black,
                  size: 30.0,
                ),
                onPressed: () => _controller.toggle(),
              ),
            ),
            body: SingleChildScrollView(
              controller: _scrollController,
              child: _scrollingPage(),
            ),
          ),
        ),
      ),
    );
  }

  Widget _scrollingPage() {
    return Column(
      children: [
        HomePageMobile(),
        AboutPageMobile(),
        ContactPageMobile(),
      ],
    );
  }

  // Widget _buildContent() {
  //   if (_onPage == OnPage.home) return HomePageMobile();
  //   if (_onPage == OnPage.about) return AboutPageMobile();
  //   if (_onPage == OnPage.contact) return ContactPageMobile();

  //   return SocialPageMobile();
  // }

  void _onTap(double offset) {
    _scrollController.animateTo(offset,
        duration: Duration(milliseconds: 600), curve: Curves.bounceInOut);
    _controller.close();
  }

  List<Widget> _buildItems(BuildContext context) {
    final Color iconColor = Colors.white;
    final double iconSpacing = 16.0;
    final double iconSize = 30.0;
    return [
      Links("Home", () => _onTap(0.0)),
      Links(
        "About",
        () => _onTap(830.0),
        leftPadding: 77.0,
      ),
      Links(
        "Contact",
        () => _onTap(2000.0),
        leftPadding: 65.0,
      ),
      SizedBox(height: 50.0),
      Links(
        "FOLLOW US",
        () {},
        leftPadding: 70.0,
        fontSize: 14.0,
      ),
      Padding(
        padding: const EdgeInsets.only(right: 140.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              icon: Icon(
                FontAwesomeIcons.youtube,
                color: iconColor,
                size: iconSize,
              ),
              onPressed: () {},
            ),
            SizedBox(width: iconSpacing),
            IconButton(
              icon: Icon(
                FontAwesomeIcons.instagram,
                color: iconColor,
                size: iconSize,
              ),
              onPressed: () {},
            ),
            SizedBox(width: iconSpacing),
            IconButton(
              icon: Icon(
                FontAwesomeIcons.facebook,
                color: iconColor,
                size: iconSize,
              ),
              onPressed: () {},
            ),
            SizedBox(width: iconSpacing),
            IconButton(
              icon: Icon(
                FontAwesomeIcons.facebookMessenger,
                color: iconColor,
                size: iconSize,
              ),
              onPressed: () {},
            ),
          ],
        ),
      )
    ];
  }
}
