import 'package:wearift/store/model.dart';

class NavigatePagesAction {
  int _index;
  String _page;

  int get index => this._index;
  String get page => this._page;

  NavigatePagesAction(this._index, this._page);
}
