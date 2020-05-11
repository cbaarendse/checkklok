import 'dart:io';
import 'package:flutter/material.dart';
import 'package:checkklok/logic/check_provider.dart';
import 'package:checkklok/screens/ad_banner.dart';
import 'constants.dart';
import 'package:provider/provider.dart';

void main() => runApp(CheckKlok());

class CheckKlok extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => CheckProvider(),
      child: MaterialApp(
        title: 'CheckKlok',
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
        ),
        home: MyHomePage(title: 'CheckKlok'),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
        title: Text(widget.title),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.color_lens),
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //AdBanner(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Card(
                  child: Column(
                    children: <Widget>[
                      Image.asset('images/IMG_8294.jpeg'),
                      ButtonBar(
                        children: <Widget>[
                          FlatButton(
                            child: Text('Capture'),
                            onPressed: () {},
                          ),
                          FlatButton(
                            child: Text('Select'),
                            onPressed: () {},
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: <Widget>[
                      Image.asset('images/IMG_8295.jpeg'),
                      ButtonBar(
                        children: <Widget>[
                          FlatButton(
                            child: Text('Capture'),
                            onPressed: () {},
                          ),
                          FlatButton(
                            child: Text('Select'),
                            onPressed: () {},
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            FlatButton(
              child: Text('Accuracy'),
              onPressed: () {},
            ),
            Text(
              'This watch is 20 seconds off',
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Reset',
        child: Icon(Icons.replay),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
