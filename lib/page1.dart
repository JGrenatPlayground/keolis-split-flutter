import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Page1 extends StatefulWidget {
  final bool isFull;

  const Page1({Key key, this.isFull}) : super(key: key);

  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    print(WidgetsBinding.instance.window.defaultRouteName);
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("coucou"),
      ),
      body: Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: Column(
        // Column is also a layout widget. It takes a list of children and
        // arranges them vertically. By default, it sizes itself to fit its
        // children horizontally, and tries to be as tall as its parent.
        //
        // Invoke "debug painting" (press "p" in the console, choose the
        // "Toggle Debug Paint" action from the Flutter Inspector in Android
        // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
        // to see the wireframe for each widget.
        //
        // Column has various properties to control how it sizes itself and
        // how it positions its children. Here we use mainAxisAlignment to
        // center the children vertically; the main axis here is the vertical
        // axis because Columns are vertical (the cross axis would be
        // horizontal).
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'You have pushed the button this many times:',
          ),
          Text(
            '$_counter',
            style: Theme.of(context).textTheme.headline4,
          ),
          FlatButton(child: Text("page 2"), onPressed: () => Navigator.of(context).pushNamed('/page2')),
          if (widget.isFull) FlatButton(child: Text("page 3"), onPressed: () => Navigator.of(context).pushNamed('/page3')),
          if (widget.isFull) FlatButton(child: Text("page 4"), onPressed: () => Navigator.of(context).pushNamed('/page4')),
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() => _counter = _counter + 1);
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
