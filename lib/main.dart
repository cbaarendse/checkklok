import 'package:flutter/material.dart';
import 'package:checkklok/logic/check_provider.dart';
import 'package:checkklok/screens/ad_banner.dart';

void main() => runApp(CheckKlok());

class CheckKlok extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CheckKlok',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: MyHomePage(title: 'CheckKlok'),
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
              children: <Widget>[
                Card(),
                SizedBox(),
                Card(),
              ],
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
        tooltip: 'Increment',
        child: Icon(Icons.watch),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
