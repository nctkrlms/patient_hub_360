import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/page_controller.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key,}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {

  final Controller ctrl = Get.put(Controller());
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      height: Get.height*0.15,
      width: Get.width,
      decoration: const BoxDecoration(
        color: Color(0xffF5F5F5),
        borderRadius: BorderRadius.only(
          topLeft: Radius.elliptical(200, 20),
          topRight: Radius.elliptical(200, 20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: (){
              ctrl.changePage(0);
            },
            child: Obx(()=>Container(
              width: 72,
              height: 63,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: ctrl.page.value == 0?const Color(0xff0A4B81):Colors.transparent,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.home,color: ctrl.page.value == 0?Colors.white:const Color(0xff0A4B81),),
                  Text('Home',style: TextStyle(color: ctrl.page.value == 0?Colors.white:const Color(0xff0A4B81),),),
                ],
              ),
            )),
          ),
          const SizedBox(width: 50,),
          InkWell(
            onTap: (){
              ctrl.changePage(1);
            },
            child: Obx(()=>Container(
              width: 72,
              height: 63,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: ctrl.page.value == 1?const Color(0xff0A4B81):Colors.transparent,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(size:19,Icons.calendar_today_outlined,color: ctrl.page.value == 1?Colors.white:const Color(0xff0A4B81),),
                  Text('Meetings',style: TextStyle(color: ctrl.page.value == 1?Colors.white:const Color(0xff0A4B81),),),
                ],
              ),
            )),
          ),
        ],
      ),
    );
  }
}
