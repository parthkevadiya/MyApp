import 'package:flutter/material.dart';
import 'package:login/main.dart';

class Res extends StatefulWidget {
  @override
  _ResState createState() => _ResState();
}

class _ResState extends State<Res> {
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
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(begin: Alignment.topCenter, colors: [
            Colors.orange[900],
            Colors.orange[700],
            Colors.orange[500],
          ]),
        ),
        child: Form(
          key: _formKey,
          child: ListView(
            padding: EdgeInsets.all(25.0),
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Registration",
                      style: TextStyle(fontSize: 50.0, color: Colors.white)),
                  SizedBox(height: 20.0),
                  TextFormField(
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter email';
                      }
                      return null;
                    },
                    obscureText: true,
                    decoration: InputDecoration(
                      prefixIcon:
                          Icon(Icons.email_outlined, color: Colors.white),
                      labelText: "Name",
                      hintText: "Enter a name",
                      hintStyle: TextStyle(color: Colors.white, fontSize: 25.0),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Row(
                    children: [
                      Text(
                        "Gender : ",
                        style: TextStyle(fontSize: 20.0),
                      ),
                      Radio(
                          value: male,
                          groupValue: gender,
                          onChanged: (val) {
                            setState(() {
                              gender = male;
                            });
                          }),
                      Text("Male"),
                      Radio(
                          value: female,
                          groupValue: gender,
                          onChanged: (val) {
                            setState(() {
                              gender = female;
                            });
                          }),
                      Text("Female"),
                    ],
                  ),
                  SizedBox(height: 10.0),
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
                          Icon(Icons.email_outlined, color: Colors.white),
                      labelText: "Email",
                      hintText: "Email",
                      hintStyle: TextStyle(color: Colors.white, fontSize: 25.0),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  TextFormField(
                    controller: _pass,
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter Password';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.white,
                      ),
                      suffixIcon: IconButton(
                        icon: (_isHidden)
                            ? Icon(Icons.visibility_off)
                            : Icon(Icons.visibility),
                        onPressed: () {
                          setState(() {
                            _isHidden = !_isHidden;
                          });
                        },
                      ),
                      hintStyle: TextStyle(color: Colors.white, fontSize: 25.0),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                      labelText: "Password",
                      hintText: "Password",
                    ),
                    obscureText: _isHidden,
                  ),
                  SizedBox(height: 20.0),
                  TextFormField(
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter Password';
                      }
                      if (value != _pass.text) {
                        return 'Not Same Password';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.white,
                      ),
                      suffixIcon: IconButton(
                        icon: (_isHidden)
                            ? Icon(Icons.visibility_off)
                            : Icon(Icons.visibility),
                        onPressed: () {
                          setState(() {
                            _isHidden = !_isHidden;
                          });
                        },
                      ),
                      hintStyle: TextStyle(color: Colors.white, fontSize: 25.0),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                      labelText: "Confirm Password",
                      hintText: "Confirm Password",
                    ),
                    obscureText: _isHidden,
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    onPressed: () {
                      setState(() {
                        _formKey.currentState.validate();
                      });
                    },
                    child: Text(
                      "Registration",
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Text("Do you have already login ?"),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Login(),
                            ));
                      },
                      child: Text("Login")),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.arrow_back),
      ),
    );
  }
}
