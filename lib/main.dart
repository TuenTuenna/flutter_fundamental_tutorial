import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

// 상태를 가진다  StatefulWidget
class MyHomePage extends StatefulWidget {
  // 생성자
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() {
    print("MyHomePage - createState() called");
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {

  int _counter = 0;
  final colors = [Colors.orange, Colors.pink, Colors.tealAccent];

  void _incrementCounter() {
    print("_MyHomePageState - _incrementCounter() called");
    setState(() {
      print("_MyHomePageState - setState() called");
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
                width: 100,
                height: 100,
                color: colors[Random().nextInt(colors.length)]
            ),
            SizedBox(height: 50),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
