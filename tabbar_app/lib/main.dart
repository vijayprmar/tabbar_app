import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: AppBar(
              title: Text("My Tabbar Deno"),
            ),
            bottomNavigationBar: mymenu(),
            body: TabBarView(children: [
              Icon(Icons.directions_bike),
              Icon(Icons.directions_bike),
              Icon(Icons.directions_bike)
            ]),
          )),
    );
  }
}

Widget mymenu() {
  return Container(
    color: Color(0xFF3F5AA6),
    child: TabBar(
      indicatorColor: Color(0xFF3F5AA6),
      tabs: [
        Tab(
          text: "Cycle",
          icon: Icon(Icons.directions_bike),
        ),
        Tab(
          text: "Bus",
          icon: Icon(Icons.directions_bus),
        ),
        Tab(
          text: "Car",
          icon: Icon(Icons.directions_car),
        )
      ],
    ),
  );
}
