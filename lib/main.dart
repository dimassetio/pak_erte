import 'package:aplikasi_rt/pages/lupa_pass.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import './pages/login.dart';
import './pages/dashboard.dart';
import './pages/admin.dart';
import './pages/dashboard_admin.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      getPages: [
        GetPage(
          name: "/login",
          page: () => LoginPage(),
        ),
        GetPage(
          name: "/dashboard",
          page: () => DashboardPage(),
        ),
        GetPage(
          name: "/admin",
          page: () => AdminPage(),
        ),
        GetPage(
          name: "/dashad",
          page: () => DashboardAdmin(),
        ),
        GetPage(
          name: "/pasalah",
          page: () => PassalahPage(),
        ),
      ],
    );
  }
}
