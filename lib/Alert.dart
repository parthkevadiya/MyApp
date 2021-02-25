import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login/whatsapp.dart';

class Alert1 extends StatefulWidget {
  @override
  _Alert1State createState() => _Alert1State();
}

class _Alert1State extends State<Alert1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          child: Text("CLICK"),
          onPressed: () {
            return showDialog(
              context: context,
              builder: (context) => AlertDialog(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                title: Text("Hello"),
                content: Text("This is not a true !!!"),
                actions: [
                  FlatButton(
                      onPressed: (){Navigator.of(context).pop();},
                      child: Text("Cancle")),
                  FlatButton(
                      onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder:(context) => WhatsApp(),));},
                      child: Text("ok"))
                ],
              ),
            );
            },
        ),
      ),
    );
  }
}
