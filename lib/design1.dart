import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyApp3 extends StatefulWidget {
  @override
  _MyApp3State createState() => _MyApp3State();
}

class _MyApp3State extends State<MyApp3> with TickerProviderStateMixin {
  TabController tabController;

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
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 660.0,
              width: 370.0,
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(30.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 15.0,
                      spreadRadius: 2.0,
                      offset: Offset(1.0, 1.0),
                    )
                  ]),
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        height: 80.0,
                        width: 20.0,
                      ),
                      Icon(
                        Icons.arrow_back_ios,
                        size: 30.0,
                      ),
                      SizedBox(width: 180.0),
                      Icon(
                        Icons.wifi_protected_setup,
                        size: 30.0,
                      ),
                      SizedBox(width: 30.0),
                      Icon(
                        Icons.wifi,
                        size: 30.0,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 100.0,
                        width: 250.0,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                spreadRadius: 5.0,
                                color: Colors.black26,
                                blurRadius: 1.0,
                                offset: Offset(-4.0, 4.0),
                              ),
                            ],
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20.0),
                              bottomRight: Radius.circular(20.0),
                            )),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              children: [
                                Text(
                                  "1.31",
                                  style: TextStyle(fontSize: 50.0),
                                ),
                                Text(
                                  "GB",
                                  style: TextStyle(fontSize: 20.0),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text("CLEANUP SUGGESTED"),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Stack(
                          children: [
                            Container(
                              height: 20.0,
                              width: 320.0,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20.0)),
                            ),
                            Container(
                              height: 20.0,
                              width: 240.0,
                              decoration: BoxDecoration(
                                  color: Colors.cyanAccent,
                                  borderRadius: BorderRadius.circular(20.0)),
                            ),
                            Container(
                              height: 20.0,
                              width: 100.0,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(20.0)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Radio(
                        value: null,
                        groupValue: null,
                        onChanged: null,
                      ),
                      Text("Used 22 GB"),
                      Radio(
                          value: null,
                          groupValue: null,
                          onChanged: null,
                          activeColor: Colors.black),
                      Text("Deletable 31 GB"),
                    ],
                  ),
                  Row(
                    children: [
                      Stack(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 50.0,
                                width: 160.0,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(20.0))),
                                child: Center(
                                    child: Text(
                                  "Can be deleted",
                                  style: TextStyle(color: Colors.white),
                                )),
                              ),
                              Container(
                                height: 322.0,
                                width: 340.0,
                                padding: EdgeInsets.only(top: 30.0),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(20.0),
                                      bottomRight: Radius.circular(20.0),
                                      bottomLeft: Radius.circular(20.0)),
                                ),
                                child: Column(
                                  children: [
                                    ListTile(
                                      leading: Icon(Icons.wifi),
                                      title: Text("Parth Kevadiya"),
                                      subtitle: Text("PK"),
                                      trailing:
                                          Icon(Icons.wifi_protected_setup),
                                    ),
                                    ListTile(
                                      leading: Icon(Icons.wifi),
                                      title: Text("Parth Kevadiya"),
                                      subtitle: Text("PK"),
                                      trailing:
                                          Icon(Icons.wifi_protected_setup),
                                    ),
                                    ListTile(
                                      leading: Icon(Icons.wifi),
                                      title: Text("Parth Kevadiya"),
                                      subtitle: Text("PK"),
                                      trailing:
                                          Icon(Icons.wifi_protected_setup),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          height: 50.0,
                                          width: 150.0,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(40.0),
                                              color: Colors.cyanAccent[100]),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Icon(
                                                Icons.delete_forever,
                                                size: 30.0,
                                                color: Colors.blue,
                                              ),
                                              Text("CleanUp 1.31"),
                                              Text(
                                                "GB",
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 230.0, top: 25.0),
                            child: Container(
                              height: 50.0,
                              width: 100.0,
                              decoration: BoxDecoration(
                                  color: Colors.cyanAccent,
                                  borderRadius: BorderRadius.circular(20.0)),
                              child: Center(child: Text("31.11 GB")),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
