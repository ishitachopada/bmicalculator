import 'package:flutter/material.dart';

import 'bmi.dart';

class loading extends StatefulWidget {
  const loading({Key? key}) : super(key: key);

  @override
  State<loading> createState() => _loadingState();
}

class _loadingState extends State<loading> {
  @override
  void initState() {
    super.initState();
    gonext();
  }

  gonext() async {
    await Future.delayed(Duration(seconds: 5));
    Navigator.pushReplacement(context, MaterialPageRoute(
      builder: (context) {
        return first();
      },
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomLeft,
          colors: [Color(0xFF61045F), Color(0xfffc6767)],
        )),
        child: Column(
          children: [
            Expanded(
                child: Container(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Colors.black54,
                  offset: Offset(10.0, 15.0),
                  blurRadius: 30.0,
                  spreadRadius: 0.0,
                ),
              ]),
              margin: EdgeInsets.only(top: 60),
              child: Image.asset("image/logo.png"),
            )),
            Expanded(
                child: Container(
              margin:
                  EdgeInsets.only(right: 120, top: 20, left: 120, bottom: 30),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomLeft,
                      colors: [Color(0xffa80077), Color(0xff41295a)]),
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      offset: Offset(10.0, 15.0),
                      blurRadius: 30.0,
                      spreadRadius: 0.0,
                    ),
                  ]),
              child: Column(
                children: [
                  Center(
                    child: Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Text("BMI",
                          style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 40,
                              color: Colors.white,
                              shadows: [
                                Shadow(
                                  offset: Offset(5.0, 5.0),
                                  blurRadius: 8.0,
                                  color: Colors.black,
                                ),
                              ])),
                    ),
                  ),
                  Text(
                    "Calculator",
                    style:
                        TextStyle(fontSize: 20, color: Colors.white, shadows: [
                      Shadow(
                        offset: Offset(5.0, 5.0),
                        blurRadius: 8.0,
                        color: Colors.black,
                      ),
                    ]),
                  )
                ],
              ),
            )),
            Expanded(
                flex: 3,
                child: Container(
                  child: Image.asset('image/jump.png'),
                )),
            Expanded(
                child: Container(
              child: Center(
                child: Text(
                  "Stay healthy. Stay Fit.",
                  style: TextStyle(fontSize: 30, shadows: [
                    Shadow(
                      offset: Offset(5.0, 5.0),
                      blurRadius: 8.0,
                      color: Colors.black87,
                    ),
                  ]),
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
