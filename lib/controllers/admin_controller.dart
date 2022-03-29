import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AdminController extends GetxController {
  TextEditingController emailA = TextEditingController();
  TextEditingController passA = TextEditingController();

  RxBool isHidden = true.obs;

  void login2() async {
    if (emailA.text == "admin@gmail.com" && passA.text == "admin") {
      Get.offAllNamed("/dashad");
    } else {
      Get.defaultDialog(
        title: "Terjadi Kesalahan",
        titleStyle: TextStyle(color: Colors.red),
        middleText: "Email atau password tidak sesuai",
      );
    }
  }

  void admin() {
    Get.offAllNamed("/admin");
  }

  void masuk() {
    Get.offAllNamed("/login");
  }

  void out() {
    Get.offAllNamed("/admin");
    Get.defaultDialog(
      title: "------------------------------",
      titleStyle: TextStyle(
        fontSize: 15,
      ),
      middleText: "Berhasil Logout",
      middleTextStyle: TextStyle(
        color: Colors.blue,
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
    );
  }
}
