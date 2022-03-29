import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:from_css_color/from_css_color.dart';

import '../controllers/admin_controller.dart';

class DashboardAdmin extends StatelessWidget {
  final AdminController adminC = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DASHBOARD ADMIN"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => adminC.out(),
        child: Icon(Icons.logout),
      ),
    );
  }
}
