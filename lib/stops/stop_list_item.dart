import 'package:flutter/material.dart';
import 'package:kievpastrans/stops/stop_item.dart';
import 'package:kievpastrans/widgets/time_table.dart';

class StopListItem extends StatelessWidget {
  final Stop stop;

  StopListItem(this.stop);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: Text(stop.distance),
        title: Text(stop.name),
        subtitle: Text(stop.numbers),
        onTap: (){
          print("Container clicked");
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => TimeTableWidget()),
          );
        }
    );
  }
}