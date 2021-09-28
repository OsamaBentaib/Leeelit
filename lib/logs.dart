import 'package:colorize/colorize.dart';

void logColor(Object object) {
  return print(new Colorize(object.toString()).bgBlue());
}
