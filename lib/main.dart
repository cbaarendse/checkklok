import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:checkklok/logic/check_provider.dart';
import 'package:checkklok/screens/ad_banner.dart';
import 'constants.dart';
import 'package:provider/provider.dart';
import 'package:admob_flutter/admob_flutter.dart';
import 'package:native_screenshot/native_screenshot.dart';

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
        title: Text(widget.title),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.color_lens),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.mobile_screen_share),
            onPressed: () async {
              String path = await NativeScreenshot.takeScreenshot();
              return;
            },
          ),
        ],
      ),
      drawer: Drawer(
          child: ListView(
        padding: EdgeInsets.all(0.0),
        children: <Widget>[
          DrawerHeader(
            decoration:
                BoxDecoration(color: Theme.of(context).secondaryHeaderColor),
            child:
                Text('CheckKlok', style: Theme.of(context).textTheme.subtitle1),
          ),
          ListTile(
            leading: Icon(Icons.delete_sweep),
            title: Text('Delete unused images',
                style: Theme.of(context).textTheme.subtitle2),
          ),
          ListTile(
            leading: Icon(Icons.lightbulb_outline),
            title:
                Text('How to..', style: Theme.of(context).textTheme.subtitle2),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title:
                Text('Settings', style: Theme.of(context).textTheme.subtitle2),
          ),
        ],
      )),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //AdBanner(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Card(
                  margin: EdgeInsets.only(left: 12.0),
                  child: Column(
                    children: <Widget>[
                      Text('Start',
                          style: Theme.of(context).textTheme.headline6),
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
                  margin: EdgeInsets.only(right: 12.0),
                  child: Column(
                    children: <Widget>[
                      Text('Stop',
                          style: Theme.of(context).textTheme.headline6),
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
            Row(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Expanded(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 12.0),
                    child: RaisedButton(
                      color: Theme.of(context).buttonColor,
                      splashColor: Theme.of(context).accentColor,
                      hoverColor: Theme.of(context).hoverColor,
                      child: Text('Check your clock'),
                      onPressed: () {},
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.symmetric(horizontal: 12.0),
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.timer),
                    title: Text('Per minute'),
//                    subtitle: Text('This watch is 1 second off'),
                    trailing: Icon(Icons.arrow_downward),
                  ),
                  ListTile(
                    leading: Icon(Icons.watch_later),
                    title: Text('Per day'),
//                    subtitle: Text('This watch is 1440 seconds off'),
                    trailing: Icon(Icons.arrow_downward),
                  ),
                  ListTile(
                    leading: Icon(Icons.event),
                    title: Text('Per 7 days'),
//                    subtitle: Text('This watch is 10.080 seconds off'),
                    trailing: Icon(Icons.arrow_downward),
                  ),
                  ListTile(
                    leading: Icon(Icons.event_note),
                    title: Text('Per 30 days'),
//                    subtitle: Text('This watch is 302.400 seconds off'),
                    trailing: Icon(Icons.arrow_downward),
                  ),
                  ListTile(
                    leading: Icon(Icons.calendar_today),
                    title: Text('Per 365 days'),
//                    subtitle: Text('This watch is 302.400 seconds off'),
                    trailing: Icon(Icons.arrow_downward),
                  ),
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
