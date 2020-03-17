import 'package:flutter/widgets.dart';
import 'package:myapp/page2.dart';

import 'main.dart';
import 'page1.dart';

void main() {
  runApp(MyApp(routes: {
    '/': (context) => Page1(isFull: false),
    '/page2': (context) => Page2(),
  }));
}
