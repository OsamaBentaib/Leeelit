import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:wearift/Screens/ExploreScreen/ExploreScreen.dart';
import 'package:wearift/Screens/HomeScreen/HomeScreen.dart';
import 'package:wearift/Screens/MeScreen/MeScreen.dart';
import 'package:wearift/Screens/WishlistScreen/WishlistScreen.dart';
import 'package:wearift/Widget/bottomNavigationBar/bottomNavigationBar.dart';
import 'package:wearift/store/model.dart';

class BaseLayout extends StatelessWidget {
  const BaseLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StoreConnector<AppState, NavigatorPages>(
        converter: (store) => store.state.navigator,
        builder: (_, navigator) {
          switch (navigator.index) {
            case 1:
              return ExploreScreen();
            case 2:
              return WishlistScreen();
            case 3:
              return MeScreen();
            default:
              return HomeScreen();
          }
        },
      ),
      bottomNavigationBar: BottomNavbar(),
    );
  }
}
