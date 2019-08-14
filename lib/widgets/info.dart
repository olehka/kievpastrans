import 'package:flutter/material.dart';

void main() => runApp(Info());

class Info extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Інформація';

    return MaterialApp(
      theme: ThemeData(
        primaryColor:   Colors.green,
      ),
      title: title,
      home: Scaffold(
        body: ListView(
          children: <Widget>[
            ListTile(
              title: Row(
                children: <Widget>[
                  Text('Початкова зупинка: '),
                  Text('Кільцева дорога'),
                ],
              ),
            ),
            ListTile(
              title: Row(
                children: <Widget>[
                  Text('Кінцева зупинка: '),
                  Text('вул. Гната Юри'),
                ],
              ),
            ),
            ListTile(
              title: Row(
                children: <Widget>[
                  Text('Години руху: '),
                  Text('05:35 - 00:06'),
                ],
              ),
            ),
            ListTile(
              title: Row(
                children: <Widget>[
                  Text('Робочі дні: '),
                  Text('Щоденно'),
                ],
              ),
            ),
            ListTile(
              title: Row(
                children: <Widget>[
                  Text('Приблизний інтервал: '),
                  Text('10 хвилин'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
