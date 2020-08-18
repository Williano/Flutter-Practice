import 'package:flutter/material.dart';

class CustomShaperScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Custom Shape"),
        backgroundColor: Colors.blueGrey[400],
        centerTitle: true,
      ),
      body: CustomPaint(),
    );
  }
}

class CustomCurve extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    throw true;
  }
}
