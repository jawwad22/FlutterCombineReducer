import 'package:flutterRedux/model/app_state.dart';
import 'actions.dart';

//Funtiona Name 'reducer' is used in main.dart
AppState reducer(AppState prevState, dynamic action) {
  AppState newState = AppState.fromAppState(prevState);

  if (action is FontSize) {
    newState.sliderFontSize = action.payload;
  } else if (action is Italic) {
    newState.italic = action.payload;
  } else if (action is Bold) {
    newState.bold = action.payload;
  }

  return newState;
}
