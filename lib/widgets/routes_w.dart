import 'package:flutter/material.dart';
import 'package:kievpastrans/routes/route_item.dart';
import 'package:kievpastrans/routes/route_list.dart';

import '../main.dart';

class RoutesWidget extends StatelessWidget {

  _buildContactList() {
    return <MyRoute>[
      const MyRoute(
          start: 'м. Голосіївська', finish: 'пл. Одеська', number: '1'),
      const MyRoute(
          start: 'вул. Булгакова', finish: 'вул. Шолуденко', number: '2'),
      const MyRoute(
          start: 'Кільцева дорога', finish: 'Гната Юри', number: '3т'),
      const MyRoute(
          start: 'вул. Ізюмська', finish: 'Залізничний вокзал', number: '5'),
      const MyRoute(
          start: 'пл. Дарнциька', finish: 'вул. Милославська', number: '6'),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text("Автобусні маршрути"),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: RouteList(_buildContactList()),
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