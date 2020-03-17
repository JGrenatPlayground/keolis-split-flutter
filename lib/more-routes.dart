import 'package:flutter/widgets.dart';
import 'package:myapp/page2.dart';
import 'package:myapp/page4.dart';

import 'main.dart';
import 'page1.dart';
import 'page3.dart';

void main() {
  runApp(MyApp(routes: {
    '/': (context) => Page1(isFull: true),
    '/page2': (context) => Page2(),
    '/page3': (context) => Page3(),
    '/page4': (context) => Page4(),
  }));
}
