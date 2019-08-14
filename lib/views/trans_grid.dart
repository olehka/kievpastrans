import 'package:flutter/material.dart';
import 'package:kievpastrans/widgets/routes_w.dart';

class TransportsGridView {
  var context;

  Card getStructuredGridCell(name, image) {
    return Card(
        elevation: 1.5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          verticalDirection: VerticalDirection.down,
          children: <Widget>[
            Image(
                image: AssetImage('assets/' + image)
            ),
            Center(
              child: Text(name),
            ),
          ],
        ));
  }

  GestureDetector getGestureWidget(name, image) {
    return new GestureDetector(
        onTap: (){
          print("Container clicked");
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => RoutesWidget()),
          );
        },
        child: getStructuredGridCell(name, image)
    );
  }

  GridView build(context) {
    this.context = context;
    return GridView.count(
      primary: true,
      padding: EdgeInsets.only(bottom: 20.0, left: 20.0, right: 20.0),
      crossAxisCount: 2,
      childAspectRatio: 0.85,
      mainAxisSpacing: 1.0,
      crossAxisSpacing: 1.0,
      children: <Widget>[
        getGestureWidget("Автобус", "bus_icon.png"),
        getGestureWidget("Тролейбус", "bus_icon.png"),
        getGestureWidget("Трамвай", "bus_icon.png"),
        getGestureWidget("Міська електричка", "bus_icon.png"),
      ],
    );
  }


}