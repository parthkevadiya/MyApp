import 'package:flutter/material.dart';

class Status extends StatefulWidget {
  @override
  _StatusState createState() => _StatusState();
}

class _StatusState extends State<Status> {
  List<Map> rk = [
    {
      "ca": "images/download.jpg",
      "name": "PURV GHORI",
      "sub": "Papu su kare 6o?",
      "time1": "10:48 AM",
    },
    {
      "ca": "images/download.jpg",
      "name": "KENIL GABANI",
      "sub": "Halto tha?",
      "time1": "10:48 AM",
    },
    {
      "ca": "images/download.jpg",
      "name": "SAVAJ RUCHI",
      "sub": "Halti tha?",
      "time1": "10:48 AM",
    },
    {
      "ca": "images/download.jpg",
      "name": "HARSH SHEKHADIYA",
      "sub": "Halto tha?",
      "time1": "10:48 AM",
    },
    {
      "ca": "images/download.jpg",
      "name": "SMIT KEVADIYA",
      "sub": "Halto tha?",
      "time1": "10:48 AM",
    },
    {
      "ca": "images/download.jpg",
      "name": "RINKAL",
      "sub": "Sui ja?",
      "time1": "10:48 AM",
    },
    {
      "ca": "images/download.jpg",
      "name": "NANSI",
      "sub": "Su kam 6e?",
      "time1": "10:48 AM",
    },
    {
      "ca": "images/download.jpg",
      "name": "DARSHAN",
      "sub": "Fuvara kar ?",
      "time1": "10:48 AM",
    },
    {
      "ca": "images/download.jpg",
      "name": "KARAN KACHADIYA",
      "sub": "Nikal Lukhes?",
      "time1": "10:48 AM",
    }
  ];

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage("images/download.jpg"),
              radius: 30.0,
            ),
            title: Text(
              "My status",
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              "Tap to add status upadate",
              style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            height: h * 0.04,
            width: w * 1,
            color: Colors.grey[300],

            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                  "Recent update",
                  style: TextStyle(fontSize: 15.0),
                ),
                    )),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: rk.length,
              itemBuilder: (context, index) => Container(
                width: double.infinity,
                child: Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage(rk[index]["ca"]),
                        radius: 30.0,
                      ),
                      title: Text(
                        rk[index]["name"],
                        style: TextStyle(
                            fontSize: 15.0, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(rk[index]["sub"]),
                      trailing: Text(
                        rk[index]["time1"],
                        textScaleFactor: 1.1,
                      ),
                    ),
                    Divider(
                      color: Colors.black,
                      thickness: 0.3,
                      height: 1,
                      indent: 90,
                      endIndent: 15,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
