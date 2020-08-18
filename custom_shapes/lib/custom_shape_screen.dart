import 'package:flutter/material.dart';

class CustomShapeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Custom Shape"),
        backgroundColor: Colors.blueGrey[400],
        centerTitle: true,
      ),
      body: Container(
        color: Colors.white,
        child: CustomPaint(
          painter: CustomLine(),
        ),
      ),
    );
  }
}

class CustomLine extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    paint.color = Colors.green[800];
    paint.style = PaintingStyle.stroke;
    paint.strokeWidth = 2.0;

    Path path = Path();
    path.lineTo(size.width, size.height);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
