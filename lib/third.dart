import 'package:flutter/material.dart';
import 'bmi.dart';

class second extends StatefulWidget {
  double bmi;
  String s;
  String s1;

  second(this.bmi, this.s, this.s1);

  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(
              child: Text(
            "BMI Calculator",
            style: TextStyle(fontSize: 25, fontFamily: "f1"),
          )),
          backgroundColor: Colors.purple,
          toolbarHeight: 100),
      body: Column(
        children: [
          Expanded(
              flex: 4,
              child: Container(
                // color: Colors.red,
                child: Center(
                  child: Text(
                    "${widget.bmi}",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 50, fontFamily: "f1"),
                  ),
                ),
              )),
          Expanded(
              child: Container(
                  // color: Colors.amber,
                  child: Center(
            child: Text("${widget.s}",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30, fontFamily: "f1")),
          ))),
          Expanded(
              flex: 3,
              child: Container(
                // color: Colors.blue,
                child: Center(
                  child: Text("${widget.s1}",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20, fontFamily: "f1")),
                ),
              )),
          Expanded(
              child: Container(
            margin: EdgeInsets.only(bottom: 40),
            color: Colors.deepPurple,
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return first();
                    },
                  ));
                },
                child: Text(
                  "Re-Calculate",
                  style: TextStyle(fontSize: 20, fontFamily: "f1"),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.purple,
                )),
          )),
        ],
      ),
    );
  }
}
