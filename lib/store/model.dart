class AppState {
  NavigatorPages navigator;

  NavigatorPages get getNavigator => navigator;

  AppState(
    this.navigator,
  );
}

class NavigatorPages {
  int index;
  String page;
  int get getIndex => index;
  String get getPage => page;

  NavigatorPages({
    required this.index,
    required this.page,
  });
}
