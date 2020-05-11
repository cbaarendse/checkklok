import 'dart:io';
import 'package:flutter/material.dart';
import 'package:checkklok/logic/check_provider.dart';
import 'package:checkklok/screens/ad_banner.dart';
import 'constants.dart';
import 'package:provider/provider.dart';
import 'package:admob_flutter/admob_flutter.dart';

void main() {
  String getBannerAdUnitId() {
    if (Platform.isIOS) {
      return 'ca-app-pub-3940256099942544/2934735716';
    } else if (Platform.isAndroid) {
      return 'ca-app-pub-3940256099942544/6300978111';
    }
    return null;
  }

  Admob.initialize(getBannerAdUnitId());

  runApp(CheckKlok());
}

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
    setState(() {});
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
                      Image.asset(
                        'images/IMG_8294.jpeg',
                        width: 120.0,
                      ),
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
                      Image.asset(
                        'images/IMG_8295.jpeg',
                        width: 120.0,
                      ),
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
              child: Text('Check your clock'),
              onPressed: () {},
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.all(12.0),
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.watch_later),
                    title: Text('Per minute'),
                    subtitle: Text('This watch is 1 second off'),
                    trailing: Icon(Icons.arrow_downward),
                  ),
                  ListTile(
                    leading: Icon(Icons.watch_later),
                    title: Text('Per day'),
                    subtitle: Text('This watch is 1440 seconds off'),
                    trailing: Icon(Icons.arrow_downward),
                  ),
                  ListTile(
                    leading: Icon(Icons.watch_later),
                    title: Text('Per 7 days'),
                    subtitle: Text('This watch is 10.080 seconds off'),
                    trailing: Icon(Icons.arrow_downward),
                  ),
                  ListTile(
                    leading: Icon(Icons.watch_later),
                    title: Text('Per 30 days'),
                    subtitle: Text('This watch is 302.400 seconds off'),
                    trailing: Icon(Icons.arrow_downward),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Reset',
        child: Icon(Icons.replay),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
