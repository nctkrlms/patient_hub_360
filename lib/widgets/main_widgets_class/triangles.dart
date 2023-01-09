import 'package:flutter/material.dart';
class RightTrianglePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    paint.color = Color(0xff0A4B81A8).withOpacity(0.66);
    paint.style = PaintingStyle.fill;

    final path = Path();
    path.moveTo(size.width, size.height);
    path.lineTo(size.width/3, size.height);
    path.lineTo(size.width, size.height/2);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(RightTrianglePainter oldDelegate) => false;

  @override
  bool shouldRebuildSemantics(RightTrianglePainter oldDelegate) => false;
}


