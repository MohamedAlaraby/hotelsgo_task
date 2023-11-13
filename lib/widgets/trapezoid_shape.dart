import 'package:flutter/material.dart';

class TrapezoidShape extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = const Color(0xff196CBA)
      ..style = PaintingStyle.fill;
    Paint shadowPaint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    Path path = Path()
      ..moveTo(0, 0)
      ..lineTo(size.width - size.width * 0.1, 0)
      ..lineTo(size.width * 1.3, size.height)
      ..lineTo(0, size.height)
      ..close();

    canvas.drawPath(path, paint);
    Path shadowPath = Path()
      ..moveTo(size.width - size.width * 0.12, 0)
      ..lineTo(size.width - size.width * 0.1, 0)
      ..lineTo(size.width * 1.3, size.height)
      ..lineTo(size.width * 1.3 - size.width * 0.02, size.height);

    canvas.drawPath(shadowPath, shadowPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
