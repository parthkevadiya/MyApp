import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeWork extends StatefulWidget {
  @override
  _HomeWorkState createState() => _HomeWorkState();
}

class _HomeWorkState extends State<HomeWork> {
  List<Map> data2 = [
    {"image": "images/download.jpg"},
    {"image": "images/download.jpg"},
    {"image": "images/download.jpg"},
    {"image": "images/download.jpg"},
    {"image": "images/download.jpg"},
    {"image": "images/download.jpg"},
  ];

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.only(left: 8, right: 8, top: 25, bottom: 8),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: w * 0.05),
                    Text(
                      "BESTITOO",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xff4f80c3),
                          fontSize: 20.0),
                    ),
                    SizedBox(width: w * 0.3),
                    Icon(Icons.notifications_active_outlined),
                    SizedBox(width: w * 0.1 - 25),
                    Icon(Icons.settings),
                    SizedBox(width: w * 0.1 - 25),
                    Icon(Icons.search),
                    SizedBox(width: w * 0.1 - 25),
                    Icon(Icons.message_sharp)
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    color: Colors.white,
                    elevation: 5,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                radius: 25.0,
                                backgroundImage:
                                    AssetImage("images/download.jpg"),
                              ),
                              SizedBox(width: 10),
                              Text(
                                "What an your mind?Post here......",
                                style: TextStyle(fontSize: 14.0),
                              ),
                              SizedBox(width: 40),
                              CircleAvatar(
                                radius: 22.0,
                                foregroundColor: Colors.black45,
                                backgroundImage:
                                    AssetImage("images/download.jpg"),
                              ),
                            ],
                          ),
                          SizedBox(height: h * 0.01),
                          SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    height: h * 0.08,
                                    width: w * 0.3,
                                    decoration: BoxDecoration(
                                      color: Color(0xffc9e8fd),
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        CircleAvatar(
                                          radius: 20.0,
                                          backgroundColor: Colors.white,
                                          child: Icon(
                                            Icons.people_alt_outlined,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Text(
                                          "Friends",
                                          style: TextStyle(fontSize: 15.0),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: h * 0.08,
                                    width: w * 0.3 - 20,
                                    decoration: BoxDecoration(
                                      color: Color(0xffffefd5),
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        CircleAvatar(
                                          radius: 20.0,
                                          backgroundColor: Colors.white,
                                          child: Icon(
                                            Icons.copy,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Text(
                                          "Post",
                                          style: TextStyle(fontSize: 15.0),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: h * 0.08,
                                    width: w * 0.3 - 20,
                                    decoration: BoxDecoration(
                                      color: Color(0xffcffff0),
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        CircleAvatar(
                                          radius: 20.0,
                                          backgroundColor: Colors.white,
                                          child: Icon(
                                            Icons.person_rounded,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Text(
                                          "Tag",
                                          style: TextStyle(fontSize: 15.0),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: h * 0.08,
                                    width: w * 0.3 - 20,
                                    decoration: BoxDecoration(
                                      color: Color(0xffffefd5),
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        CircleAvatar(
                                          radius: 20.0,
                                          backgroundColor: Colors.white,
                                          child: Icon(
                                            Icons.add_box_outlined,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Text(
                                          "Add",
                                          style: TextStyle(fontSize: 15.0),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ))
                        ],
                      ),
                    ),
                  ),
                ),
                ListTile(
                  leading: Text(
                    "Suggestions Friends",
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.w900),
                  ),
                  trailing: Text("View All Friends"),
                ),
                Container(
                  height: h * 0.35,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: data2.length,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: h * 0.32,
                            width: w * 0.35,
                            color: Colors.transparent,
                            child: Stack(
                              children: [
                                Container(
                                  width: h * 0.25,
                                  height: w * 0.42,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image:
                                            AssetImage(data2[index]["image"]),
                                        fit: BoxFit.fill),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 60),
                                        child: RaisedButton(
                                          onPressed: () {},
                                          color: Colors.transparent,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(15)),
                                          child: Text(
                                            "15 mutual friend",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 10.0),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Center(
                                    child: Padding(
                                  padding: const EdgeInsets.only(top: 120),
                                  child: FloatingActionButton(
                                    onPressed: () {},
                                    child: Icon(
                                      Icons.check,
                                      color: Colors.black,
                                    ),
                                    backgroundColor: Colors.white,
                                    mini: true,
                                  ),
                                )),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      "GANIYO",
                                      style: TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: h * 0.02,
                ),
                Align(
                  child: Text("Recent Post",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.black)),
                  alignment: Alignment.bottomLeft,
                ),
                SizedBox(
                  height: h * 0.01,
                ),
                Card(
                  color: Colors.white,
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Column(
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage("images/download.jpg"),
                        ),
                        title: Text("Narendra Modi"),
                        subtitle: Text("Monday -11.40Pm"),
                        trailing: Icon(Icons.menu_sharp),
                      ),
                      Divider(
                        thickness: 0.2,
                        height: 0.0,
                        indent: 10.0,
                        endIndent: 20.0,
                        color: Colors.black,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: RichText(
                              text: TextSpan(
                                  text:
                                      'Text is simple dumy Text Of Printing And Industry Modiji ni jay ho',
                                  style: TextStyle(color: Colors.black),
                                  children: [
                                TextSpan(
                                  text: '#modi #office',
                                  style: TextStyle(color: Colors.lightBlue),
                                )
                              ])),
                        ),
                      ),
                      Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Card(
                              child: Image.asset(
                                "images/download.jpg",
                                width: 350.0,
                                height: 150.0,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 75.0, left: 15.0),
                            child: Container(
                              height: 30.0,
                              width: 90.0,
                              decoration: BoxDecoration(
                                color: Colors.black45,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.remove_red_eye,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                    Text(
                                      "15 Views",
                                      style: TextStyle(color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          RichText(
                              text: TextSpan(
                                  text: '❤ ',
                                  style: TextStyle(color: Colors.red),
                                  children: [
                                TextSpan(
                                  text: '🥰 ',
                                  style: TextStyle(color: Colors.yellow),
                                ),
                                TextSpan(
                                  text: '👍 ',
                                  style: TextStyle(color: Colors.yellow),
                                ),
                                TextSpan(
                                  text: '1265',
                                  style: TextStyle(color: Colors.black),
                                ),
                              ])),
                          SizedBox(
                            width: 90,
                          ),
                          Icon(Icons.message_sharp),
                          Text("  166 Comments")
                        ],
                      ),
                      Divider(
                        thickness: 0.1,
                        height: 0.0,
                        indent: 10.0,
                        endIndent: 20.0,
                        color: Colors.black,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Card(
                            color: Colors.white,
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            shadowColor: Colors.black,
                            borderOnForeground: true,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  CircleAvatar(
                                    backgroundImage:
                                        AssetImage("images/download.jpg"),
                                  ),
                                  Text(
                                    "  Write A Comment.......  ",
                                    style: TextStyle(fontSize: 10.0),
                                  ),
                                  Icon(Icons.emoji_emotions_outlined),
                                ],
                              ),
                            ),
                          ),
                          CircleAvatar(
                              radius: 15.0,
                              backgroundColor: Colors.grey[100],
                              child: Text(
                                "👍",
                              )),
                          CircleAvatar(
                            radius: 15.0,
                            backgroundColor: Colors.grey[100],
                            child: Icon(Icons.message_sharp),
                          ),
                          CircleAvatar(
                              radius: 15.0,
                              backgroundColor: Colors.grey[100],
                              child: Icon(Icons.forward)),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
