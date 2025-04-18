import 'package:web/web.dart' as web;
import './src/config.dart';

final app =
    web.HTMLElement.main()
      ..style.textAlign = 'center'
      ..style.margin = '1vh'
      ..append(
        web.HTMLHeadingElement.h1()
          ..text = 'Dart Web Example'
          ..style.color = 'royalblue',
      )
      ..append(
        web.HTMLSpanElement()
          ..text = 'See the source code on '
          ..append(
            web.HTMLAnchorElement()
              ..href = repositoryUrl
              ..target = '_blank'
              ..text = 'GitHub Repository',
          ),
      );
