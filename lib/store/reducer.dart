import 'actions.dart';
import 'model.dart';

AppState appStateReducer(AppState state, action) {
  if (action is NavigatePagesAction) {
    AppState newAppState = new AppState(
      new NavigatorPages(index: action.index, page: action.page),
    );

    return newAppState;
  } else {
    return state;
  }
}
