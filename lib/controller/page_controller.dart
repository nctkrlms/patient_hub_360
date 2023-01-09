import 'package:flutter/material.dart';
import 'package:get/get.dart';
class Controller extends GetxController{
  var page = 0.obs;
  changePage(int selectedPage) {
    page.value = selectedPage;
  }
}