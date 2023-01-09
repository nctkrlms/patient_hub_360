import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
class CrossOver extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    paint.color = Color(0xff0a4b81a8).withOpacity(0.66);
    paint.style = PaintingStyle.fill;

    final path = Path();
    path.moveTo(0, 0);
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.lineTo(size.width/2, size.height/2);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CrossOver oldDelegate) => false;

  @override
  bool shouldRebuildSemantics(CrossOver oldDelegate) => false;
}