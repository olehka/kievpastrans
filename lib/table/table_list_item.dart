import 'package:flutter/material.dart';
import 'package:kievpastrans/stops/stop_item.dart';
import 'package:kievpastrans/widgets/tabs_w.dart';

class TableListItem extends StatelessWidget {
  final Stop stop;

  TableListItem(this.stop);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: Text(stop.distance),
        title: Text(stop.numbers),
        subtitle: Text(stop.name),
        onTap: (){
          print("Container clicked");
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Tabs()),
          );
        }
    );
  }
}