import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:patient_hub/widgets/main_widgets_class/nav_bar.dart';

import '../controller/page_controller.dart';
import '../widgets/entry_page_screen_widgets/clinic_widget.dart';
import 'clinic_page.dart';
import 'doctor_page.dart';

class EntryPage extends StatelessWidget {
  const EntryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Controller ctrl = Get.put(Controller());
    return Scaffold(
        bottomNavigationBar: BottomNavBar(),
        body: Obx(()=>ctrl.page.value == 0 ? ClinicPage() : DoctorPage()));
  }
}


