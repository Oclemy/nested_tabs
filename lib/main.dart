import 'package:flutter/material.dart';


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'Mr Nested TabBar',
        theme: ThemeData(brightness: Brightness.dark),
        home: Scaffold(body: HomePage()));
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Container(
          color: Colors.orangeAccent,
          height: 150.0,
          child: Center(child: Text('Something'))),
      DefaultTabController(
          length: 2,
          initialIndex: 0,
          child: Column(
            children: [
              TabBar(tabs: [Tab(text: 'Home'), Tab(text: 'News')]),
              Container(
                  height: 300.0,
                  child: TabBarView(
                    children: [
                      Center(child: Text('Home here')),
                      Center(child: Text('News here')),
                      ],
                  ))
            ],
          ))
    ]);
  }
}

// Our top level main function
void main() => runApp(new MyApp());
//end
