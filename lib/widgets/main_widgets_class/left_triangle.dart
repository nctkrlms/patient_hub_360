import 'package:flutter/material.dart';
class LeftTrianglePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    paint.color = Color(0xff0a4b81a8).withOpacity(0.66);
    paint.style = PaintingStyle.fill;

    final path = Path();
    path.moveTo(0, size.height/2);
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(LeftTrianglePainter oldDelegate) => false;

  @override
  bool shouldRebuildSemantics(LeftTrianglePainter oldDelegate) => false;
}