import 'package:flutter/material.dart';
import 'package:patient_hub/screens/doctor_details.dart';
import 'package:patient_hub/widgets/doctor_page_widgets/doctor_card.dart';

import '../data/doctors.dart';
import '../services/api_service.dart';
import 'package:get/get.dart';

import '../widgets/doctor_page_widgets/doctor_appbar.dart';

class DoctorPage extends StatefulWidget {
  const DoctorPage({Key? key}) : super(key: key);

  @override
  State<DoctorPage> createState() => _DoctorPageState();
}

class _DoctorPageState extends State<DoctorPage> {
  late Future<List<Doctors>> futureDoctors;

  @override
  void initState() {
    super.initState();

    futureDoctors = UrlHandler().getDoctors();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DoctorAppBar(),
        Container(
          height: Get.height * 0.71,
          child: FutureBuilder<List<Doctors>>(
              future: futureDoctors,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Padding(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: snapshot.data!.length,
                        itemBuilder: (context, index) => GestureDetector(
                          onTap: (){
                            Get.to(DoctorDetails(data: snapshot.data![index]));
                          },
                          child: Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 10),
                                child: DoctorCard(
                                  data: snapshot.data![index],
                                ),
                              ),
                        )),
                  );
                } else if (snapshot.hasError) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: Text('Error: ${snapshot.error}'),
                  );
                } else {
                  return const Center(child: CircularProgressIndicator());
                }
              }),
        ),
      ],
    );
  }
}


