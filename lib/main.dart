import 'package:flutter/material.dart';
import 'home.dart';
import 'about.dart';
import 'settings.dart';

//Redux Imports
import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'model/app_state.dart';
import 'redux/reducers.dart';

void main() {
  final _initialState = AppState(sliderFontSize: 0.5);
  final Store<AppState> _store =
      Store<AppState>(reducer, initialState: _initialState);

  runApp(MyApp(store: _store));
}

class MyApp extends StatelessWidget {
  final Store<AppState> store;

  MyApp({this.store});

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        initialRoute: '/',
        routes: {
          '/': (context) => Home(),
          '/about': (context) => About(),
          '/settings': (context) => Settings(),
        },
      ),
    );
  }
}
