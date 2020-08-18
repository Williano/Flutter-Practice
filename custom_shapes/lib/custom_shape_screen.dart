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
      body: CustomPaint(
        painter: CustomBezier(),
        child: Container(),
      ),
    );
  }
}

class CustomLine extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Colors.green[800];
    paint.style = PaintingStyle.stroke;
    paint.strokeWidth = 2.0;
    paint.strokeCap = StrokeCap.round;

    var path = Path();
    path.moveTo(0, size.height / 2);
    path.lineTo(size.width, size.height / 2);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class CustomCircle extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Colors.teal
      ..strokeWidth = 5
      ..style = PaintingStyle.fill
      ..strokeCap = StrokeCap.round;

    Offset center = Offset(size.width / 2, size.height / 2);

    canvas.drawCircle(center, 100, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class CustomBezier extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.red
      ..style = PaintingStyle.stroke
      ..strokeWidth = 8.0
      ..strokeCap = StrokeCap.square;

    Path path = Path();
    path.moveTo(0, size.height / 2);
    path.quadraticBezierTo(
        size.width / 10, size.height, size.width, size.height / 2);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
