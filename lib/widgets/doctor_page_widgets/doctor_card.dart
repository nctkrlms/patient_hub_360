import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:patient_hub/data/doctors.dart';
import 'package:string_to_hex/string_to_hex.dart';


class DoctorCard extends StatelessWidget {
  final Doctors data;

  const DoctorCard({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String color = '0xff${data.color?.substring(1,7)}';
    return Container(
      height: 170,
      width: Get.width,
      decoration: BoxDecoration(
        color: Color(int.parse(color)).withOpacity(0.3),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Container(
              height: 95,
              width: Get.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20)
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0,bottom: 30),
                    child: SizedBox(
                      height: 50,
                      width: 50,
                      child: ClipOval(
                        child: Image.network(data.photo.toString()),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:10,top: 20.0,bottom: 5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(data.doctor.toString(),style: TextStyle(fontWeight: FontWeight.bold),),
                        Spacer(),
                        Text('Treatment:'),
                        Text(data.treatment.toString(),style: TextStyle(fontWeight: FontWeight.bold),),

                      ],
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('*${data.type.toString().split('.').last}',style: TextStyle(color: Color(int.parse(color))),),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Container(
                clipBehavior: Clip.hardEdge,
                height: 46,
                width: Get.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),

                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 46,
                      width: Get.width/2-40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.calendar_today_outlined),
                          const SizedBox(width: 10,),
                          Text(data.datetime.toString().substring(0,11),style: TextStyle(fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ),
                    Container(
                      height: 46,
                      width: Get.width/2-40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.watch_later_outlined),
                          const SizedBox(width: 10,),
                          Text(data.datetime.toString().substring(11,16),style: TextStyle(fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
