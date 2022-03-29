import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:from_css_color/from_css_color.dart';

import '../controllers/login_controller.dart';

class DashboardPage extends StatelessWidget {
  final LoginController loginC = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: <Widget>[
              Container(
                height: 215,
                margin: EdgeInsets.only(bottom: 10),
                width: double.infinity,
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
                child: Column(
                  children: <Widget>[
                    SafeArea(
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.menu_outlined,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 2),
                          Image.asset(
                            "assets/images/Logo ERTE Putih.png",
                            height: 28,
                            width: 54,
                          ),
                          SizedBox(width: 120),
                          Text(
                            "Selasa, 22 Maret 2022",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 60),
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/images/house.png",
                            width: 80,
                            height: 80,
                          ),
                          SizedBox(width: 50),
                          Text(
                            "Green Living Residence \n          RT 02  RW 09",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                height: 175,
              ),
              GridView.count(
                padding: const EdgeInsets.only(
                  left: 16,
                  right: 16,
                ),
                crossAxisSpacing: 10,
                primary: false,
                shrinkWrap: true,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
                children: <Widget>[
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    elevation: 3,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                          "assets/images/baby.png",
                          width: 80,
                          height: 80,
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Surat \n Kelahiran",
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    elevation: 3,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                          "assets/images/tombstone.png",
                          width: 80,
                          height: 80,
                        ),
                        SizedBox(height: 10),
                        Text("    Surat \n Kematian")
                      ],
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    elevation: 3,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                          "assets/images/contract.png",
                          width: 80,
                          height: 80,
                        ),
                        SizedBox(height: 10),
                        Text("    Surat \n Domisili")
                      ],
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    elevation: 3,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                          "assets/images/id-card.png",
                          width: 80,
                          height: 80,
                        ),
                        SizedBox(height: 10),
                        Text("         Surat \n  Membuat KTP")
                      ],
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => loginC.logout(),
        child: Icon(Icons.logout),
      ),
    );
  }
}
