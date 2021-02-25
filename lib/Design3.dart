import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Ram2 extends StatefulWidget {
  @override
  _Ram2State createState() => _Ram2State();
}

class _Ram2State extends State<Ram2> {
  List<Map> data3 = [
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
        padding: const EdgeInsets.only(left: 8, right: 8, top: 20, bottom: 8),
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
                    "INVOTOO",
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
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
              Container(
                height: h * 0.34,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: data3.length,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 220,
                          width: 120,
                          color: Colors.transparent,
                          child: Stack(
                            children: [
                              Container(
                                width: 120,
                                height: 170,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  image: DecorationImage(
                                      image: AssetImage(data3[index]["image"]),
                                      fit: BoxFit.fill),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                              Center(
                                  child: Padding(
                                padding: const EdgeInsets.only(top: 120),
                                child: FloatingActionButton(
                                  onPressed: null,
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.black,
                                  ),
                                  backgroundColor: Colors.white,
                                  mini: true,
                                ),
                              )),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                elevation: 5.0,
                child: Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage("images/download.jpg"),
                      ),
                      title: Text(
                        "Popatlal",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Row(
                        children: [
                          Icon(Icons.lock_clock),
                          Text("Monday -11.40Pm"),
                        ],
                      ),
                      trailing: Icon(Icons.menu_sharp),
                    ),
                    Divider(
                      thickness: 0.2,
                      height: 0.0,
                      indent: 10.0,
                      endIndent: 20.0,
                      color: Colors.black,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(" 🎧 Ready For Watching Amazing Movie  "),
                              Container(
                                height: 30.0,
                                width: 80.0,
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                child: Center(child: Text("Movie")),
                              ),
                            ],
                          ),
                          Text(
                            "  www.jpstore.com",
                            style: TextStyle(color: Colors.blue),
                            maxLines: 3,
                          ),
                        ],
                      ),
                    ),
                    Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Card(
                            child: Image.asset(
                              "images/download.jpg",
                              width: 300.0,
                              height: 150.0,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 20.0, left: 215.0),
                          child: Container(
                            height: 30.0,
                            width: 90.0,
                            decoration: BoxDecoration(
                              color: Colors.black45,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Center(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
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
                      thickness: 0.5,
                      height: 0.0,
                      indent: 10.0,
                      endIndent: 20.0,
                      color: Colors.black,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Card(
                          color: Colors.white70,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          //elevation: 15,
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
                                  "  Write A Comment...  ",
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
                            child: Text("👍")),
                        CircleAvatar(
                          radius: 15.0,
                          backgroundColor: Colors.grey[100],
                          child: Icon(
                            Icons.message_sharp,
                            color: Colors.black,
                          ),
                        ),
                        FloatingActionButton(
                            onPressed: () {
                              //Navigator.push(context, MaterialPageRoute(builder: (context)=>Invotoo()));
                            },
                            heroTag: "test3",
                            backgroundColor: Colors.grey[100],
                            mini: true,
                            child: Icon(
                              Icons.forward,
                              color: Colors.black,
                            )),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Card(
                color: Colors.white,
                //elevation: 20.0,
                child: Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage("images/download.jpg"),
                      ),
                      title: Text(
                        "Narendra Modi ☑",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text("Monday -11.40Pm"),
                      trailing: Icon(Icons.menu_sharp),
                    ),
                    Divider(
                      thickness: 0.5,
                      height: 0.0,
                      indent: 10.0,
                      endIndent: 20.0,
                      color: Colors.black,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: RichText(
                          text: TextSpan(
                              text:
                                  'Text is simple dumy Text Of Printing And Industry Modi ji ni jay ho ',
                              style: TextStyle(color: Colors.black),
                              children: [
                            TextSpan(
                              text: '#modi #office',
                              style: TextStyle(color: Colors.lightBlue),
                            )
                          ])),
                    ),
                    Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Card(
                            child: Image.asset(
                              "images/download.jpg",
                              width: 300.0,
                              height: 150.0,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 20.0, left: 215.0),
                          child: Container(
                            height: 30.0,
                            width: 90.0,
                            decoration: BoxDecoration(
                              color: Colors.black45,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Center(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
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
                      thickness: 0.5,
                      height: 0.0,
                      indent: 10.0,
                      endIndent: 20.0,
                      color: Colors.black,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Card(
                          color: Colors.white70,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          //elevation: 15,
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
                                  "  Write A Comment...  ",
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
                            child: Text("👍")),
                        CircleAvatar(
                          radius: 15.0,
                          backgroundColor: Colors.grey[100],
                          child: Icon(
                            Icons.message_sharp,
                            color: Colors.black,
                          ),
                        ),
                        FloatingActionButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            heroTag: "test3",
                            backgroundColor: Colors.white,
                            mini: true,
                            child: Icon(
                              Icons.forward,
                              color: Colors.black,
                            )),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
