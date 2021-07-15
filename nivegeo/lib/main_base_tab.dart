import 'package:flutter/material.dart';

void main() {
  runApp(TabBarDemo());
}

class TabBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4, // 4?
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(text: 'IVAD'), // new
                Tab(text: 'IVAT'), // new
                Tab(text: 'VVAD'), // new
                Tab(text: 'VVAT'), // new
              ],
            ),
            title: Text('Calculadora Topográfica'),
          ),
          body: TabBarView(
            children: [
              Icon(Icons.directions_car),
              Icon(Icons.directions_transit),
              Icon(Icons.directions_bike),
              Icon(Icons.directions_boat_sharp) // new
            ],
          ),
        ),
      ),
    );
  }
}
