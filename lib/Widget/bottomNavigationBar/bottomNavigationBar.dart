import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:wearift/Components/icons/ExploreIcon.dart';
import 'package:wearift/Components/icons/PersonIcon.dart';
import 'package:wearift/Components/icons/StarIcon.dart';
import 'package:wearift/Components/icons/houseIcon.dart';
import 'package:wearift/Theme/colors.dart';
import 'package:wearift/store/actions.dart';
import 'package:wearift/store/model.dart';

class BottomNavbar extends StatelessWidget {
  // final Function(int index) onPress;
  const BottomNavbar({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(
        30,
        10,
        30,
        25,
      ),
      height: 80,
      color: Colors.white,
      child: StoreConnector<AppState, NavigatorPages>(
        converter: (store) => store.state.navigator,
        builder: (_, navigator) {
          var active = navigator.index;
          return Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                BottomNavItem(
                  index: 0,
                  title: "Home",
                  icon: HouseIcon(
                    color: active == 0 ? kActiveIconColor : dark,
                    size: 18,
                    active: active == 0,
                  ),
                ),
                BottomNavItem(
                  index: 1,
                  title: "Explore",
                  icon: ExploreIcon(
                    color: active == 1 ? kActiveIconColor : dark,
                    size: 18,
                    active: active == 1,
                  ),
                ),
                BottomNavItem(
                  index: 2,
                  title: "Wishlist",
                  icon: StarIcon(
                    color: active == 2 ? kActiveIconColor : dark,
                    size: 18,
                    active: active == 2,
                  ),
                ),
                BottomNavItem(
                  index: 3,
                  title: "Me",
                  icon: PersonIcon(
                    color: active == 3 ? kActiveIconColor : dark,
                    size: 18,
                    active: active == 3,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class BottomNavItem extends StatelessWidget {
  final Widget icon;
  final String title;
  final int index;
  const BottomNavItem({
    Key? key,
    required this.icon,
    required this.title,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, VoidCallback>(
      converter: (store) {
        return () => store.dispatch(
              new NavigatePagesAction(
                index,
                title.toUpperCase(),
              ),
            );
      },
      builder: (context, callback) {
        return GestureDetector(
          onTap: callback,
          child: StoreConnector<AppState, NavigatorPages>(
            converter: (store) => store.state.navigator,
            builder: (_, navigator) {
              var isActive = navigator.index == index;
              return new Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  icon,
                  Text(
                    title,
                    style: TextStyle(
                      color: isActive ? kActiveIconColor : kTextColor,
                      fontSize: 12,
                    ),
                  ),
                ],
              );
            },
          ),
        );
      },
    );
  }
}
