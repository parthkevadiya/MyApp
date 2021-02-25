import 'package:flutter/material.dart';


class ImageMyClass extends StatefulWidget {
  @override
  _ImageMyClassState createState() => _ImageMyClassState();
}

class _ImageMyClassState extends State<ImageMyClass> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 2,
            width: MediaQuery.of(context).size.width * 0.5,
            child: Image.network(
              "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/1200px-Image_created_with_a_mobile_phone.png",
              fit: BoxFit.cover,
            ),
          ),
          Image.asset("images/download.jpg"),
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage("images/download.jpg"),
          ),
        ],
      ),
    );
  }
}
