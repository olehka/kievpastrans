import 'package:flutter/material.dart';

import '../main.dart';

void main() => runApp(Schedule());

class Schedule extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'А 3т';

    return MaterialApp(
      theme: ThemeData(
        primaryColor:   Colors.green,
      ),
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
          leading: new IconButton(
            icon: new Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: getBody(),
            ),
            getBottomPanel(context),
          ],
        )
      ),
    );
  }

  Widget getBody() {
    return Center (
      child: ListView(
        children: <Widget>[
          ListTile(
            title: Text('вул. Академіка Серкова'),
          ),
          ListTile(
            title: Text('15:43'),
          ),
          ListTile(
            title: Text('15:51'),
          ),
          ListTile(
            title: Text('15:58'),
          ),
          ListTile(
            title: Text('16:36'),
          ),
          ListTile(
            title: Text('16:43'),
          ),
          ListTile(
            title: Text('16:51'),
          ),
          ListTile(
            title: Text('16:55'),
          ),
          ListTile(
            title: Text('17:17'),
          ),
          ListTile(
            title: Text('17:21'),
          ),
          ListTile(
            title: Text('17:25'),
          ),
        ],
      ),
    );
  }

  GestureDetector getBottomPanel(context) {
    return new GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MainPage()),
        );
      },
      child: new Image.asset('assets/bottom_panel.png'),
    );
  }
}
