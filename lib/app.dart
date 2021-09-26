import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:wearift/Theme/Theme.dart';
import 'package:wearift/store/model.dart';

import 'Screens/AuthScreen/AuthScreen.dart';

class App extends StatelessWidget {
  // root of the application.
  final Store<AppState> store;

  const App({Key? key, required this.store}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // The StoreProvider should wrap your MaterialApp or WidgetsApp. This will
    // ensure all routes have access to the store.
    return StoreProvider<AppState>(
      // Pass the store to the StoreProvider. Any ancestor `StoreConnector`
      // Widgets will find and use this value as the `Store`.
      store: store,
      child: MaterialApp(
        title: 'Lieee.',
        theme: defaultTheme,
        home: AuthScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
