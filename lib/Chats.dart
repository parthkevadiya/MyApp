import 'package:flutter/material.dart';

class Chats extends StatefulWidget {
  @override
  _ChatsState createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  List<Map> pk = [
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
    return ListView.builder(
      itemCount: pk.length,
      itemBuilder: (context, index) => Container(
        width: double.infinity,
        child: Column(
          children: [
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(pk[index]["ca"]),
                radius: 30.0,
              ),
              title: Text(
                pk[index]["name"],
                style: TextStyle(
                    fontSize: 15.0, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(pk[index]["sub"]),
              trailing: Text(
                pk[index]["time1"],
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
    );
  }
}
