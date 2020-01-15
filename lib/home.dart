import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import 'drawer_menu.dart';

const kAppTitle = 'States by Redux';
const kStateType = '...';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(kAppTitle),
        backgroundColor: Colors.teal,
      ),
      drawer: DrawerMenu(),
      body: Container(
        margin: EdgeInsets.all(10),
        child: RichText(
          text: TextSpan(
            text: lorem(paragraphs: 3, words: 50),
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
        ),
      ),
    );
  }
}
