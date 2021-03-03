import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:login/forgotpass.dart';
import 'package:login/registration.dart';

import 'boxcheck.dart';
import 'design1.dart';



void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ],
  );
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ForgotPassword(),
  ));
}

class DemoLec extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

// ignore: must_be_immutable
class DemoList extends StatelessWidget {
  List<Map> data = [
    {"name": "nensi", "color": Colors.grey},
    {"name": "dhruvi", "color": Colors.red},
    {"name": "rinkal", "color": Colors.amber},
    {"name": "nirupa", "color": Colors.cyan},
    {"name": "priya", "color": Colors.indigo},
    {"name": "bansi", "color": Colors.indigoAccent},
    {"name": "ruchi", "color": Colors.white},
    {"name": "sagar", "color": Colors.purple},
    {"name": "yash", "color": Colors.deepOrangeAccent},
    {"name": "deep", "color": Colors.lightBlue},
    {"name": "karan", "color": Colors.red},
    {"name": "parth", "color": Colors.yellow},
    {"name": "anchal", "color": Colors.amberAccent},
    {"name": "krina", "color": Colors.lightBlue},
    {"name": "ruta", "color": Colors.deepOrange},
    {"name": "SMIT", "color": Colors.grey},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) {
            return ListTile(
              tileColor: Colors.grey,
              leading: CircleAvatar(
                radius: 30,
                backgroundColor: data[index]["color"],
              ),
              title: Text(data[index]["name"].toString()),
              subtitle: Text(DateTime.now().toString()),
              trailing: CircleAvatar(
                radius: 10,
                child: Text("2"),
              ),
            );
          },
        ),
      ),
    );
  }
}

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _isHidden = true;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(begin: Alignment.topCenter, colors: [
            Colors.orange[900],
            Colors.orange[700],
            Colors.orange[500],
          ]),
        ),
        child: ListView(
          padding: const EdgeInsets.all(25.0),
          children: [
            Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Login",
                      style: TextStyle(fontSize: 50.0, color: Colors.white)),
                  SizedBox(height: 20.0),
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
                  SizedBox(height: h * 0.03),
                  TextFormField(
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
                  SizedBox(height: h * 0.03),
                  Builder(
                    builder: (context) => RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      onPressed: () {
                        setState(
                          () {
                            if (_formKey.currentState.validate()) {
                              Scaffold.of(context).showSnackBar(
                                  SnackBar(content: Text('Processing Login')));
                            }
                          },
                        );
                      },
                      child: Text(
                        "LOGIN",
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: h * 0.03),
                  Text("Do you have an account ?"),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return Res();
                          },
                        ),
                      );
                    },
                    child: Text("REGISTRATION"),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MyApp2(),
                            ));
                      },
                      child: Text("CHECKBOX")),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MyApp3(),
                          ));
                    },
                    child: Text("DESIGN"),
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
