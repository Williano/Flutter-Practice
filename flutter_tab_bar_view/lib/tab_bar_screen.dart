import 'package:flutter/material.dart';

class TabBarScreen extends StatefulWidget {
  @override
  _TabBarScreenState createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen>
    with TickerProviderStateMixin {
  TabController _controller;
  @override
  void initState() {
    _controller = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tab Bar"),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Text("Hi"),
          Text("Hi"),
          Text("Hi"),
          Text("Hi"),
          Text("Hi"),
          Text("Hi"),
          Text("Hi"),
          Text("Hi"),
          Text("Hi"),
          Container(
            color: Color(0xFF2d3447),
            child: TabBar(controller: _controller, tabs: <Widget>[
              Tab(
                text: "Test1",
              ),
              Tab(
                text: "Test2",
              ),
              Tab(
                text: "Test3",
              )
            ]),
          ),
          Expanded(
            child: TabBarView(
              controller: _controller,
              children: <Widget>[
                Container(
                  color: Colors.red,
                ),
                Container(
                  color: Colors.yellow,
                ),
                Container(
                  color: Colors.green,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
