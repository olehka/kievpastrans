import 'package:flutter/material.dart';
import 'package:kievpastrans/stops/stop_list.dart';
import 'package:kievpastrans/stops/stop_item.dart';

import '../main.dart';

class NearestStopsWidget extends StatelessWidget {
  _buildContactList() {
    return <Stop>[
      const Stop(
          name: 'Кільцева дорога', numbers: 'А 3т, А 23, А820', distance: '10 м'),
      const Stop(
          name: 'бул. Ромена Ролана', numbers: 'Мт 155, Мт 461', distance: '100 м'),
      const Stop(
          name: 'вул. Академіка Серкова', numbers: 'А 3т, А 23, А820', distance: '600 м'),
      const Stop(
          name: 'вул. Гната Юри', numbers: 'Мт 155, Мт 461', distance: '1 км'),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text("Найближчі зупинки"),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: StopsList(_buildContactList()),
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