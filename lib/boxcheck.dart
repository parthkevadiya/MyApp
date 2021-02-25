import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class MyApp2 extends StatefulWidget {
  @override
  _MyApp2State createState() => _MyApp2State();
}

class _MyApp2State extends State<MyApp2> {
 bool v10 = false;
 String v1 ="",v2 ="",v3 ="";
 bool v20 = false;
 bool v30 = false;
 bool v40 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Checkbox(
                    value: v10,
                    onChanged: (val) {
                      setState(() {
                        v10 = val;
                      });
                    },
                ),
                Text("Reading"),
                Checkbox(
                  value: v20,
                  onChanged: (val) {
                    setState(() {
                      v20 = val;
                    });
                  },
                ),
                Text("Writting"),
                Checkbox(
                  value: v30,
                  onChanged: (val) {
                    setState(() {
                      v30 = val;
                    });
                  },
                ),
                Text("Drawing"),
              ],
            ),
            RaisedButton(onPressed: () {
              setState(() {
                if(v10==true)
                  {
                    v1="Reading".toString();
                  }
                if(v20==true)
                {
                  v1=v1 + "Writting".toString();
                }
                if(v30==true)
                {
                  v1=v1 +"Drading".toString();
                }
              });
            },
            child: Text("OK"),),
            Text(v1),
          ],
        ),
      ),
    );
  }
}
