import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:from_css_color/from_css_color.dart';

import '../controllers/admin_controller.dart';

class AdminPage extends StatelessWidget {
  final AdminController loginA = Get.put(AdminController());
  final AdminController adminC = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => adminC.masuk(),
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
        title: Text(
          "Admin",
          style: TextStyle(fontSize: 17),
        ),
        elevation: 0,
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          TextField(
            controller: loginA.emailA,
            autocorrect: false,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              labelText: "Email",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          SizedBox(height: 20),
          Obx(
            () => TextField(
              controller: loginA.passA,
              autocorrect: false,
              obscureText: loginA.isHidden.value,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () => loginA.isHidden.toggle(),
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
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: fromCssColor('#5D64FF'),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            onPressed: () => loginA.login2(),
            child: Text("MASUK"),
          ),
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () => adminC.keluar(),
      //   child: Icon(Icons.logout),
      // ),
    );
  }
}
