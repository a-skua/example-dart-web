import 'package:example_dart_web/app.dart';
import 'package:web/web.dart' as web;

void main() {
  final element = web.document.querySelector('dart-web') as web.Element;
  element.replaceWith(app);
}
