import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import 'drawer_menu.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'model/app_state.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('About'),
          backgroundColor: Colors.teal,
        ),
        drawer: DrawerMenu(),
        body: StoreConnector<AppState, AppState>(
          converter: (store) => store.state,
          builder: (context, state) {
            return Container(
              margin: EdgeInsets.all(10.0),
              child: RichText(
                text: TextSpan(
                  text: lorem(paragraphs: 3, words: 50),
                  style: TextStyle(
                      fontSize: state.sliderFontSize * 30,
                      color: Colors.lightBlue,
                      fontWeight:
                          state.bold ? FontWeight.bold : FontWeight.normal,
                      fontStyle:
                          state.italic ? FontStyle.italic : FontStyle.normal),
                ),
              ),
            );
          },
        ));
  }
}
