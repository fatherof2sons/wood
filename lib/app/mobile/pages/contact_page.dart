import 'package:flutter/material.dart';

class ContactPageMobile extends StatelessWidget {
  const ContactPageMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text("Contact")],
        ));
  }
}
