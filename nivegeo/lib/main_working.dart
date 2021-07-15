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
          backgroundColor: Colors.white,
          body: TabBarView(
            //padding: EdgeInsets.fromLTRB(10.0, 0, 10.0, 0), // borrar
            children: [
              //Icon(Icons.directions_car),
              Container(), // new
              Container(), // new
              Container(), // new
              Container(), // new
            ],
          ),
        ),
      ),
    );
  }
}
