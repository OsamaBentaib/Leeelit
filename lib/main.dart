import 'package:flutter/material.dart';
import 'package:wearift/app.dart';
import 'package:wearift/store/initState.dart';
import 'package:wearift/store/model.dart';
import 'package:wearift/store/reducer.dart';
import 'package:redux/redux.dart';

void main() {
  final Store<AppState> store = Store<AppState>(
    appStateReducer,
    initialState: initState,
    middleware: [],
  );
  runApp(
    App(
      store: store,
    ),
  );
}




