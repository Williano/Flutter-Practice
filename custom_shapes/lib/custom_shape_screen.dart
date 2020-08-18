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

class CustomLine extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    // set properties to paint

    Path path = Path();
    // draw your path

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
