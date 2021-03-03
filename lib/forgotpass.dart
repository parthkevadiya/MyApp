import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  bool _isHidden = true;
  String gender = "gender";
  String male = "male";
  String female = "female";
  String other = "other";

  final _formKey = GlobalKey<FormState>();
  final TextEditingController _pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff4795d5),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                    obscureText: true,
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter email';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      prefixIcon:
                          Icon(Icons.email_outlined, color: Colors.black),
                      labelText: "Email",
                      hintText: "Email",
                      hintStyle: TextStyle(color: Colors.white, fontSize: 25.0),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Padding(
                    padding:  EdgeInsets.only(left:260.0),
                    child: Text("Send Again",style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                    ),),
                  ),
                  RaisedButton(color: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    onPressed: () {
                      setState(() {
                        _formKey.currentState.validate();
                      });
                    },
                    child: Text(
                      "SEND OTP",
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
