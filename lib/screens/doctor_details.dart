import 'package:flutter/material.dart';
import 'package:patient_hub/widgets/doctor_page_widgets/doctor_appbar.dart';
import 'package:patient_hub/data/doctors.dart';
import 'package:get/get.dart';

class DoctorDetails extends StatefulWidget {
  final Doctors data;
  const DoctorDetails({Key? key, required this.data}) : super(key: key);

  @override
  State<DoctorDetails> createState() => _DoctorDetailsState();
}

class _DoctorDetailsState extends State<DoctorDetails> {
  List<ItemModel> itemData = <ItemModel>[
    ItemModel(
        headerItem: 'FeedBack',
        discription: '',
        colorsItem: Color(0xFF33277C),
        img:
        'https://cdn.pixabay.com/photo/2022/08/03/08/11/little-boom-7362108_1280.jpg'),
  ];
  List<String> star = ['Çok Kötü','Kötü','Orta','İyi','Çok İyi','Harika'];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const DoctorAppBar(isDetail: true,),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40.0, horizontal: 30),
            child: SizedBox(
              height: 85,
              width: Get.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 85,
                      decoration: BoxDecoration(
                          color: Color(0xffEEEAFF),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.health_and_safety,
                              color: Color(0xff58489D),
                            ),
                            Text(
                              'Treatment Type',
                              style: TextStyle(
                                  fontSize: 10, color: Color(0xff58489D)),
                            ),
                            Text(
                              widget.data.type.toString().split('.').last,
                              style: TextStyle(color: Color(0xff58489D)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 85,
                      decoration: BoxDecoration(
                          color: Color(0xffE4F5EB),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.calendar_today_outlined,
                              color: Color(0xff316A49),
                            ),
                            Text(
                              'Date Time',
                              style: TextStyle(
                                  fontSize: 10, color: Color(0xff316A49)),
                            ),
                            Text(
                              widget.data.datetime.toString().substring(0, 11),
                              style: TextStyle(color: Color(0xff316A49)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 85,
                      decoration: BoxDecoration(
                          color: Color(0xffFFF2F0),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.watch_later_outlined,
                              color: Color(0xff7C4F47),
                            ),
                            Text(
                              'Time',
                              style: TextStyle(
                                  fontSize: 10, color: Color(0xff7C4F47)),
                            ),
                            Text(
                              widget.data.datetime.toString().substring(11, 16),
                              style: TextStyle(color: Color(0xff7C4F47)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0, right: 30),
            child: SizedBox(
              height: 135,
              width: Get.width,
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 12),
                child: Column(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Row(
                              children: [
                                Icon(
                                  Icons.code_sharp,
                                  color: Color(0xff899DC5),
                                ),
                                Text('Meeting Id:'),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Expanded(
                            flex: 1,
                            child: Row(
                              children: [
                                Text(widget.data.id.toString()),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Divider(),
                    Expanded(
                      flex: 1,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Row(
                              children: [
                                Icon(
                                  Icons.insert_drive_file,
                                  color: Color(0xff899DC5),
                                ),
                                Text('Treatment:'),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Expanded(
                            flex: 1,
                            child: Row(
                              children: [
                                Text(widget.data.treatment.toString().capitalize!),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(),
                    Expanded(
                      flex: 1,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Row(
                              children: [
                                Icon(
                                  Icons.person,
                                  color: Color(0xff899DC5),
                                ),
                                Text('Doctor:'),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Expanded(
                            flex: 1,
                            child: Row(
                              children: [
                                Text(
                                  widget.data.doctor.toString(),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  softWrap: false,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric( horizontal: 45),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  color: Colors.transparent,


                    height: 240,
                    width: Get.width,
                    child: ListView.builder(
                      itemCount: itemData.length,
                        itemBuilder: (BuildContext context, int index) {
                      return Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xffF6F8FC),

                        ),
                        child: ClipRRect(
                          clipBehavior: Clip.hardEdge,
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
                          child: ExpansionPanelList(
                            animationDuration: const Duration(milliseconds: 1000),
                            expansionCallback: (int item, bool status) {
                              setState(() {
                                itemData[index].expanded = !itemData[index].expanded;
                              });
                            },
                            children: [
                              ExpansionPanel(

                                canTapOnHeader: true,
                                  isExpanded: itemData[index].expanded,
                                  headerBuilder: (BuildContext context, bool isOpen) {
                                    return Container(
                                      color: Color(0xffF6F8FC),
                                      child: Row(
                                        children: [
                                          SizedBox(width: 5,),
                                          Icon(Icons.ring_volume),
                                          SizedBox(width: 10,),
                                          Text('FeedBack',style: TextStyle(color: Color(0xff58489D),),)
                                        ],
                                      ),
                                    );
                                  },
                                  body: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 60,
                                        child: ListView.builder(
                                          scrollDirection: Axis.horizontal,
                                          itemCount: int.parse((int.parse(widget.data.feedbackStars.toString())/2).round().toString()),
                                          itemBuilder: (context,index){
                                            return Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Column(
                                                children: [
                                                  Icon(Icons.star,size: 30,color: Color(0xffFFB800),),
                                                  Text(star[index],style: TextStyle(fontSize: 10,color: Color(0xff6B7386)),),
                                                ],
                                              ),
                                            );
                                          },),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Text(widget.data.feedbackComment.toString()),
                                      ),
                                    ],
                                  )
                                  ),


                            ],

                          ),
                        ),
                      );
                    })),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

String capitalize(String str) {
  return "${str[0].toUpperCase()}${str.substring(1, str.length)}";
}

class ItemModel {
  bool expanded;
  String headerItem;
  String discription;
  Color colorsItem;
  String img;

  ItemModel(
      {this.expanded = false,
      required this.headerItem,
      required this.discription,
      required this.colorsItem,
      required this.img});
}
