import 'package:flutter/material.dart';
import 'package:kievpastrans/stops/stop_list_item.dart';
import 'package:kievpastrans/stops/stop_item.dart';

class StopsList extends StatelessWidget {
  final List<Stop> list;

  StopsList(this.list);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      children: _buildContactsList(),
    );
  }

  List<StopListItem> _buildContactsList() {
    return list
        .map((contact) => StopListItem(contact))
        .toList();
  }
}