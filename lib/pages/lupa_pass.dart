import 'package:aplikasi_rt/controllers/admin_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:from_css_color/from_css_color.dart';

import '../controllers/login_controller.dart';

class PassalahPage extends StatelessWidget {
  final LoginController loginC = Get.put(LoginController());
  final LoginController userC = Get.find();

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
        leading: IconButton(
          onPressed: () => userC.logawal(),
          icon: Icon(Icons.keyboard_arrow_left),
        ),
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
              "assets/images/reset password.png",
              width: 167,
              height: 198,
            ),
            TextField(
              controller: loginC.emailC,
              autocorrect: false,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () => loginC.isHidden.toggle(),
                  icon: Icon(Icons.mail_outline),
                ),
                labelText: "Email",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
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
                onPressed: () => loginC.submit(),
                child: Text("SUBMIT"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
