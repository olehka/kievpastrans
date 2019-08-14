import 'package:flutter/material.dart';
import 'package:kievpastrans/stops/stop_item.dart';
import 'package:kievpastrans/table/table_list.dart';

import '../main.dart';

class TimeTableWidget extends StatelessWidget {
  _buildContactList() {
    return <Stop>[
      const Stop(
          name: 'Кільцева дорога', numbers: 'А 3т', distance: '10 хв'),
      const Stop(
          name: 'бул. Ромена Ролана', numbers: 'Мт 155', distance: '23 хв'),
      const Stop(
          name: 'вул. Академіка Серкова', numbers: 'А 23', distance: '35 хв'),
      const Stop(
          name: 'вул. Гната Юри', numbers: 'Мт 461', distance: '40 хв'),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text("бул. Ромена Роллана"),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: TableList(_buildContactList()),
            ),
            getBottomPanel(context),
          ],
        )
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