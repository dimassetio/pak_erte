import 'package:aplikasi_rt/controllers/admin_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:from_css_color/from_css_color.dart';

import '../controllers/login_controller.dart';
import '../controllers/admin_controller.dart';

class LoginPage extends StatelessWidget {
  final LoginController loginC = Get.put(LoginController());
  final AdminController adminC = Get.put(AdminController());

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          "Login",
          style: TextStyle(fontSize: 17),
        ),
        elevation: 0,
        leading: Icon(Icons.keyboard_arrow_left),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                fromCssColor('#5A61FF'),
                fromCssColor('#696FFF'),
                fromCssColor('#A1A5FF'),
              ],
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              "assets/images/Logo ERTE.png",
              width: 110,
              height: 54,
            ),
            Image.asset(
              "assets/images/Login.png",
              width: 167,
              height: 198,
            ),
            CustomTextField(
              loginC: loginC,
              labelText: "Email",
            ),
            SizedBox(height: 20),
            Obx(
              () => TextField(
                controller: loginC.passC,
                autocorrect: false,
                obscureText: loginC.isHidden.value,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: () => loginC.isHidden.toggle(),
                    icon: Icon(Icons.remove_red_eye),
                  ),
                  labelText: "Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: size.width * 0.9,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: fromCssColor('#5D64FF'),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                onPressed: () => loginC.login(),
                child: Text("MASUK"),
              ),
            ),
            Container(
              width: size.width * 0.4,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  primary: Colors.white10,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                onPressed: () => loginC.pasalah(),
                child: Text(
                  "Lupa Password?",
                  style: TextStyle(
                    fontSize: 14,
                    color: fromCssColor('#5D64FF'),
                  ),
                ),
              ),
            ),
            SizedBox(height: 80),
            Padding(
              padding: const EdgeInsets.only(right: 250),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                onPressed: () => adminC.admin(),
                child: Text(
                  "Admin",
                  style: TextStyle(
                    fontSize: 17,
                    color: fromCssColor('#5D64FF'),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget text(String value) {
  return Text(value);
}

class CustomTextField extends StatelessWidget {
  CustomTextField({
    required this.loginC,
    this.labelText,
    this.suffixIcon,
    this.textInputAction = TextInputAction.next,
  });
  String? labelText;
  Widget? suffixIcon;
  TextInputAction? textInputAction;
  final LoginController loginC;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: loginC.emailC,
      autocorrect: false,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        labelText: labelText,
        suffix: suffixIcon,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
