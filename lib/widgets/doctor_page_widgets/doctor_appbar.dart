import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:math' as math;

class DoctorAppBar extends StatelessWidget {
  final bool isDetail;
  const DoctorAppBar({
    super.key,
    this.isDetail = false,
  });

  @override
  Widget build(BuildContext context) {
    Widget bigCircle = Container(
      width: 500.0,
      height: 500.0,
      decoration: const BoxDecoration(
        color: Color(0xff074171),
        shape: BoxShape.circle,
      ),
    );
    return Container(
      height: Get.height * 0.14,
      width: Get.width,
      decoration: BoxDecoration(
        color: Color(0xff0A4B81),
      ),
      child: Stack(
        children: [
          Positioned(
            child: bigCircle,
            top: 0,
            right: 100.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 45.0, bottom: 10, right: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: Icon(
                          Icons.insert_drive_file,
                          size: 20,
                          color: Color(0xff2D3D80),
                        )),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      isDetail ? 'Meeting Details' : 'My Meetings',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                    Spacer(),
                    isDetail
                        ? Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Transform.rotate(
                                angle: 180 * math.pi / 180,
                                child: IconButton(
                                  icon: Icon(
                                    Icons.play_arrow,
                                    color: Colors.white,
                                  ),
                                  onPressed: () {
                                    Get.back();
                                  },
                                ),
                              ),
                            ],
                          )
                        : Container(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
