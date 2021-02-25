import 'package:flutter/material.dart';

class ImageMy1 extends StatefulWidget {
  @override
  _ImageMy1State createState() => _ImageMy1State();
}

class _ImageMy1State extends State<ImageMy1> {

  DateTime date = DateTime.now();
  datePicker(context) async {
    date = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1990),
      lastDate: DateTime(2022),
    );
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(onPressed: () {
              setState(() {
                datePicker(context);
              });
            }),
            Text("Date : $date"),
            Container(height: 200,color: Colors.red,),
            Container(height: 200,color: Colors.green,),
            Container(height: 200,color: Colors.blue,),
            Container(height: 200,color: Colors.yellow,),
          ],
        ),
      ),
    );
  }
}
