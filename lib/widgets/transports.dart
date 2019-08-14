import 'package:flutter/material.dart';
import 'package:kievpastrans/main.dart';
import 'package:kievpastrans/views/trans_grid.dart';
import 'package:kievpastrans/widgets/nearest_stops.dart';
import 'package:kievpastrans/widgets/search.dart';


class TransportsWidget extends StatelessWidget {
  final TransportsGridView myGridView = TransportsGridView();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor:   Colors.green,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text("Види транспорту"),
          leading: new IconButton(
            icon: new Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: Builder(
            builder: (context) => getMainWidget(context)
        ),
      ),
    );
  }

  Widget getMainWidget(context) {
    return Column(
      children: <Widget>[
        getGestureWidget(context, "Пошук найближчих зупинок", "bus_stop.png"),
        Expanded(
          child: myGridView.build(context),
        ),
        getBottomPanel(context),
      ],
    );
  }

  GestureDetector getGestureWidget(context, name, image) {
    return new GestureDetector(
        onTap: (){
          print("Container clicked");
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => NearestStopsWidget()),
          );
        },
        child: Padding(
          padding: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
          child: getStructuredGridCell(name, image),
        )
    );
  }

  Card getStructuredGridCell(name, image) {
    return Card(
        elevation: 1.5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
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