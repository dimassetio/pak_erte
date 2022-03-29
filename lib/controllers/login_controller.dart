import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  TextEditingController emailC = TextEditingController();
  TextEditingController passC = TextEditingController();

  RxBool isHidden = true.obs;

  void login() async {
    if (emailC.text == "user@gmail.com" && passC.text == "user") {
      Get.offAllNamed("/dashboard");
    } else {
      Get.defaultDialog(
        title: "Terjadi Kesalahan",
        titleStyle: TextStyle(color: Colors.red),
        middleText: "Email atau password tidak sesuai",
      );
    }
  }

  void submit() async {
    if (emailC.text == "user@gmail.com") {
      Get.offAllNamed("/login");
    } else {
      Get.defaultDialog(
        title: "Terjadi Kesalahan",
        titleStyle: TextStyle(color: Colors.red),
        middleText: "Email tidak sesuai",
      );
    }
  }

  void logawal() {
    Get.offAllNamed("/login");
  }

  void logout() {
    Get.offAllNamed("/login");
  }

  void pasalah() {
    Get.offAllNamed("/pasalah");
  }
}
