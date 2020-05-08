import 'package:flutter/material.dart';

class PageViewScreen extends StatelessWidget {
  final _pageViewController = PageController(initialPage: 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page View"),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height / 3.0,
        child: PageView(
          controller: _pageViewController,
          physics: BouncingScrollPhysics(),
          children: <Widget>[
            Container(
              color: Colors.red,
            ),
            Container(
              color: Colors.blue,
            ),
            Container(
              color: Colors.yellow,
            )
          ],
        ),
      ),
    );
  }
}
