import 'package:flutter/material.dart';
import 'package:kievpastrans/widgets/stops.dart';
import 'package:kievpastrans/widgets/info.dart';

import '../main.dart';

void main() {
  runApp(MaterialApp(
      theme: ThemeData(
        primaryColor:   Colors.green,
      ),
      title: "Using Tabs",
      home: Tabs()));
}

class Tabs extends StatefulWidget {
  @override
  TabsState createState() => TabsState();
}

// SingleTickerProviderStateMixin is used for animation
class TabsState extends State<Tabs> with SingleTickerProviderStateMixin {
  /*
   *-------------------- Setup Tabs ------------------*
   */
  // Create a tab controller
  TabController controller;

  @override
  void initState() {
    super.initState();

    // Initialize the Tab Controller
    controller = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    // Dispose of the Tab Controller
    controller.dispose();
    super.dispose();
  }

  TabBar getTabBar() {
    return TabBar(
      tabs: <Tab>[
        Tab(
          text: 'Зупинки',
        ),
        Tab(
          text: 'Інформація',
        ),
      ],
      // setup the controller
      controller: controller,
    );
  }

  TabBarView getTabBarView(var tabs) {
    return TabBarView(
      // Add tabs as widgets
      children: tabs,
      // set the controller
      controller: controller,
    );
  }

  /*
   *-------------------- Setup the page by setting up tabs in the body ------------------*
   */
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Appbar
        appBar: AppBar(
          // Title
            title: Text("А 3т"),
            // Set the background color of the App Bar
            backgroundColor: Colors.green,
            // Set the bottom property of the Appbar to include a Tab Bar
            bottom: getTabBar()),
        // Set the TabBar view as the body of the Scaffold
        body: Column(
          children: <Widget>[
            Expanded(
              child: getTabBarView(<Widget>[Stops(), Info()]),
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