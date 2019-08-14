import 'package:flutter/material.dart';
import 'package:kievpastrans/routes/route_item.dart';
import 'package:kievpastrans/widgets/tabs_w.dart';

class RouteListItem extends StatelessWidget {
  final MyRoute route;

  RouteListItem(this.route);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: Text(route.number),
        title: Text(route.start),
        subtitle: Text(route.finish),
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