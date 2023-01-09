import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../main_widgets_class/left_triangle.dart';
import '../main_widgets_class/triangles.dart';
class ClinicWidget extends StatelessWidget {
  const ClinicWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        clipBehavior: Clip.hardEdge,
        height: 100,
        width: Get.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              fit: BoxFit.fill,
              image: Image.network('https://s3-alpha-sig.figma.com/img/7441/74d0/f1c21b7945da767b23aa152b3723bf60?Expires=1673827200&Signature=GpQZdm~Px8RCzgyIKTN5qkOj9l9P62mk7bGmVNgvJgV3vMc7-pwrqVTFL0AkbC7Qbk296D-4ro7opFBNeK-WMBot7n~SRdZLu5KfZAhWsep3wQHDfupRyO~9ycJrMoRejjaJPj5-lQTmLZru7dXtBBcNFYwJHawlVJ6XkZ8NBKT4kUNleHvS~2RPoV9KIyvgKjiOmqzlJghjpoOMLoR-KAezjx6kTXEVZEgqTp1hj0bOUNDCyXbH-GkuSiBU2l1m0CzJE6CN05yZJhOuJeZKUjHeDXIcmdlivOPx0v5Wbynqy-0H9j1xRb9qFM~Ym0ER~SkbjzZ39tPBwbIMsTylAg__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4').image,

            )
        ),
        child: Stack(
          children: const [
            RightTriangle(),
            LeftTriangle(),
          ],
        ),
      ),
    );
  }
}

class RightTriangle extends StatelessWidget {
  const RightTriangle({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: RightTrianglePainter(),
      size: MediaQuery.of(context).size,
    );
  }
}
class LeftTriangle extends StatelessWidget {
  const LeftTriangle({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: LeftTrianglePainter(),
      size: MediaQuery.of(context).size,
    );
  }
}