import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Page4 extends StatefulWidget {
  @override
  _Page4State createState() => _Page4State();
}

class _Page4State extends State<Page4> {
  @override
  Widget build(BuildContext context) {
    print(WidgetsBinding.instance.window.defaultRouteName);
    return Text("page4");
  }
}
