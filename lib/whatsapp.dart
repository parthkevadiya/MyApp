import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:login/Chats.dart';
import 'package:login/opencamero.dart';
import 'package:login/status.dart';

class WhatsApp extends StatefulWidget {
  @override
  _WhatsAppState createState() => _WhatsAppState();
}

class _WhatsAppState extends State<WhatsApp> with TickerProviderStateMixin {
  TabController tabController;
  File _image;
  final picker = ImagePicker();

  @override
  void initState() {
    tabController = TabController(length: 4, vsync: this);
    tabController.index = 1;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            AppBar(
              title: Text("WhatsApp"),
              backgroundColor: Color(0xff075e55),
              actions: [
                Icon(Icons.search),
                SizedBox(
                  width: w * 0.05,
                ),
                Icon(Icons.menu),
                SizedBox(
                  width: w * 0.05,
                ),
              ],
            ),
            Container(
              color: Color(0xff075e55),
              child: TabBar(
                unselectedLabelColor: Colors.grey[300],
                labelColor: Colors.white,
                indicatorColor: Colors.white,
                tabs: [
                  Tab(
                    child: IconButton(
                        onPressed: () async {
                          final selected =
                              await picker.getImage(source: ImageSource.camera);
                          setState(() {
                            if (selected != null) {
                              _image = File(selected.path);
                            }
                          });
                        },
                        icon: Icon(Icons.camera_alt)),
                  ),
                  Tab(
                    child: Text(
                      "Chats",
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Status",
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Calls",
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
                controller: tabController,
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  OpenCamera(),
                  Chats(),
                  Status(),
                  Container(
                    width: double.infinity,
                    child: Center(child: Text("screen Four")),
                  ),
                ],
                controller: tabController,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
