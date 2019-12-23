import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'dart:math' as math;

class MyPainter extends CustomPainter {
  final PaintType paintType;

  MyPainter(this.paintType);

  @override
  void paint(Canvas canvas, Size size) {
    switch (paintType) {
      case PaintType.points:
        final pointMode = ui.PointMode.points;
        final points = [
          Offset(50, 100),
          Offset(150, 75),
          Offset(250, 250),
          Offset(130, 200),
          Offset(270, 100),
        ];
        final paint = Paint()
          ..color = Colors.black
          ..strokeWidth = 4
          ..strokeCap = StrokeCap.round;
        canvas.drawPoints(pointMode, points, paint);
        break;
      case PaintType.lines:
        final p1 = Offset(50, 50);
        final p2 = Offset(250, 150);
        final paint = Paint()
          ..color = Colors.black
          ..strokeWidth = 4;
        canvas.drawLine(p1, p2, paint);
        break;
      case PaintType.rectangles:
        final left = 50.0;
        final top = 100.0;
        final right = 250.0;
        final bottom = 200.0;
        final rect = Rect.fromLTRB(left, top, right, bottom);
        final paint = Paint()
          ..color = Colors.black
          ..style = PaintingStyle.stroke
          ..strokeWidth = 4;
        canvas.drawRect(rect, paint);
        break;
      case PaintType.circles:
        final center = Offset(150, 150);
        final radius = 100.0;
        final paint = Paint()
          ..color = Colors.black
          ..style = PaintingStyle.stroke
          ..strokeWidth = 4;
        canvas.drawCircle(center, radius, paint);
        break;
      case PaintType.ovals:
        final rect = Rect.fromLTRB(50, 100, 250, 200);
        final paint = Paint()
          ..color = Colors.black
          ..style = PaintingStyle.stroke
          ..strokeWidth = 4;
        canvas.drawOval(rect, paint);
        break;
      case PaintType.arcs:
        final rect = Rect.fromLTRB(50, 100, 250, 200);
        final startAngle = -math.pi / 2;
        final sweepAngle = math.pi;
        final useCenter = false;
        final paint = Paint()
          ..color = Colors.black
          ..style = PaintingStyle.stroke
          ..strokeWidth = 4;
        canvas.drawArc(rect, startAngle, sweepAngle, useCenter, paint);
        break;
      case PaintType.paths:
        final path = Path()
          ..moveTo(50, 50)
          ..lineTo(200, 200)
          ..quadraticBezierTo(200, 0, 150, 100);
        final paint = Paint()
          ..color = Colors.black
          ..style = PaintingStyle.stroke
          ..strokeWidth = 4;
        canvas.drawPath(path, paint);
        break;
      case PaintType.text:
        final textStyle = ui.TextStyle(
          color: Colors.black,
          fontSize: 30,
        );
        final paragraphStyle = ui.ParagraphStyle(
          textDirection: TextDirection.ltr,
        );
        final paragraphBuilder = ui.ParagraphBuilder(paragraphStyle)
          ..pushStyle(textStyle)
          ..addText('Hello, world.');
        final constraints = ui.ParagraphConstraints(width: 300);
        final paragraph = paragraphBuilder.build();
        paragraph.layout(constraints);
        final offset = Offset(50, 100);
        canvas.drawParagraph(paragraph, offset);
        break;
    }
  }

  @override
  bool shouldRepaint(MyPainter oldDelegate) {
    return oldDelegate.paintType != paintType;
  }

  void circle() {}
}

enum PaintType {
  points,
  lines,
  rectangles,
  circles,
  ovals,
  arcs,
  paths,
  text,
}
