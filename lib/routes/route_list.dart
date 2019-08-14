import 'package:flutter/material.dart';
import 'package:kievpastrans/routes/route_item.dart';
import 'package:kievpastrans/routes/route_list_item.dart';

class RouteList extends StatelessWidget {
  final List<MyRoute> list;

  RouteList(this.list);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      children: _buildContactsList(),
    );
  }

  List<RouteListItem> _buildContactsList() {
    return list
        .map((contact) => RouteListItem(contact))
        .toList();
  }
}