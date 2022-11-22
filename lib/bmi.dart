import 'package:bmicalculator/third.dart';
import 'package:flutter/material.dart';

class first extends StatefulWidget {
  const first({Key? key}) : super(key: key);

  @override
  State<first> createState() => _firstState();
}


class _firstState extends State<first> {

  // TextEditingController age = TextEditingController();
  // TextEditingController height = TextEditingController();
  // TextEditingController weight = TextEditingController();

  String gender = "";

  int wgt = 40;
  int ag = 20;

  double min = 1.5;
  double max = 7.0;
  double hgt = 5.0;

  double bmi = 0;

  String s = "";
  String s1 = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(
              child: Text("BMI Calculator", style: TextStyle(fontSize: 30))),
          backgroundColor: Colors.purple,
          toolbarHeight: 100),
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(
                        right: 20, bottom: 10, top: 10, left: 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(5.0, 5.0),
                            blurRadius: 10.0,
                            spreadRadius: 2.0,
                          ),
                        ]),
                    child: Expanded(
                        child: Column(
                      children: [
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(bottom: 10, top: 15),
                            child: Text("Age(In Year)"),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            child: Text(
                              "${ag}",
                              style: TextStyle(
                                fontSize: 50,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                            child: Container(
                          margin:
                              EdgeInsets.only(left: 10, right: 10, bottom: 10),
                          child: Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Container(
                                    height: 100,
                                    width: 100,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey,
                                            offset: Offset(5.0, 5.0),
                                            blurRadius: 10.0,
                                            spreadRadius: 2.0,
                                          ),
                                        ]),
                                    child: IconButton(
                                        onPressed: () {
                                          ag--;
                                          setState(() {});
                                        },
                                        icon: Icon(
                                          Icons.remove,
                                          color: Colors.purple,
                                          size: 25,
                                        )),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    height: 100,
                                    width: 100,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey,
                                            offset: Offset(5.0, 5.0),
                                            blurRadius: 10.0,
                                            spreadRadius: 2.0,
                                          ),
                                        ]),
                                    child: IconButton(
                                        onPressed: () {
                                          ag++;
                                          setState(() {});
                                        },
                                        icon: Icon(
                                          Icons.add,
                                          color: Colors.purple,
                                          size: 25,
                                        )),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ))
                      ],
                    )),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(
                        right: 20, bottom: 10, top: 10, left: 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(5.0, 5.0),
                            blurRadius: 10.0,
                            spreadRadius: 2.0,
                          ),
                        ]),
                    child: Column(
                      children: [
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(bottom: 10, top: 15),
                            child: Text("Weight(Kg)"),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            child: Text(
                              "${wgt}",
                              style: TextStyle(
                                fontSize: 50,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(
                                left: 10, right: 10, bottom: 10),
                            child: Expanded(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Container(
                                      height: 100,
                                      width: 100,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          shape: BoxShape.circle,
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey,
                                              offset: Offset(5.0, 5.0),
                                              blurRadius: 10.0,
                                              spreadRadius: 2.0,
                                            ),
                                          ]),
                                      child: IconButton(
                                          onPressed: () {
                                            wgt--;
                                            setState(() {});
                                          },
                                          icon: Icon(
                                            Icons.remove,
                                            color: Colors.purple,
                                            size: 25,
                                          )),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      height: 100,
                                      width: 100,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          shape: BoxShape.circle,
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey,
                                              offset: Offset(5.0, 5.0),
                                              blurRadius: 10.0,
                                              spreadRadius: 2.0,
                                            ),
                                          ]),
                                      child: IconButton(
                                          onPressed: () {
                                            wgt++;
                                            setState(() {});
                                          },
                                          icon: Icon(
                                            Icons.add,
                                            color: Colors.purple,
                                            size: 25,
                                          )),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 4,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(
                        right: 20, bottom: 10, top: 10, left: 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(5.0, 5.0),
                            blurRadius: 10.0,
                            spreadRadius: 2.0,
                          ),
                        ]),
                    child: Column(
                      children: [
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(bottom: 10, top: 20),
                            child: Text("Height"),
                          ),
                        ),
                        Expanded(
                          child: Container(
                              child: Column(
                            children: [
                              Expanded(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "${hgt}",
                                      style: TextStyle(
                                        fontSize: 50,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                    Text(
                                      "feet",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Color(0x5E000000)),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          )),
                        ),
                        Expanded(
                          child: Container(
                            child: StatefulBuilder(
                              builder: (context, setState1) {
                                return Slider(
                                    activeColor: Colors.black26,
                                    inactiveColor: Colors.black26,
                                    thumbColor: Colors.purple,
                                    min: 1.5,
                                    max: 7.0,
                                    onChanged: (value) {
                                      hgt = double.parse(
                                          value.toStringAsPrecision(2));
                                      setState(() {});
                                      setState1(() {});
                                    },
                                    value: hgt);
                              },
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(
                        right: 20, bottom: 10, top: 10, left: 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(5.0, 5.0),
                            blurRadius: 10.0,
                            spreadRadius: 2.0,
                          ),
                        ]),
                    child: Column(
                      children: [
                        Expanded(
                            flex: 1,
                            child: Container(
                              margin: EdgeInsets.only(top: 15),
                              child: Text(
                                "Gender",
                                textAlign: TextAlign.center,
                              ),
                            )),
                        Expanded(
                            flex: 3,
                            child: Row(
                              children: [
                                Expanded(
                                    child: Container(
                                  margin: EdgeInsets.only(bottom: 30),
                                  child: Text(
                                    "I'm",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 50,
                                        fontWeight: FontWeight.w900),
                                  ),
                                )),
                                Expanded(
                                    child: Row(
                                  children: [
                                    Expanded(
                                        child: Column(
                                      children: [
                                        Expanded(
                                            child: Container(
                                          // margin: EdgeInsets.only(bottom: 30),
                                          child: ListTile(
                                            title: Text(
                                              "Male",
                                              style: TextStyle(fontSize: 18),
                                            ),
                                            leading: Radio(
                                                value: "male",
                                                fillColor: MaterialStateColor
                                                    .resolveWith((states) =>
                                                        Colors.purple),
                                                groupValue: gender,
                                                onChanged: (value) {
                                                  setState(() {
                                                    gender = value.toString();
                                                  });
                                                }),
                                          ),
                                        )),
                                        Expanded(
                                            child: Container(
                                          margin: EdgeInsets.only(bottom: 30),
                                          child: ListTile(
                                            title: Text("Female",
                                                style: TextStyle(fontSize: 18)),
                                            leading: Radio(
                                                value: "female",
                                                fillColor: MaterialStateColor
                                                    .resolveWith((states) =>
                                                        Colors.purple),
                                                groupValue: gender,
                                                onChanged: (value) {
                                                  setState(() {
                                                    gender = value.toString();
                                                  });
                                                }),
                                          ),
                                        ))
                                      ],
                                    ))
                                  ],
                                ))
                              ],
                            ))
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return second(bmi, s, s1);
                    },
                  ));

                  // String a = age.text;
                  // String b = height.text;
                  // String c = weight.text;

                  // print(a);
                  // print(b);
                  // print(c);

                  // double n1 = double.parse(a);
                  // double n2 = double.parse(b);
                  // double n3 = double.parse(c);

                  double m = hgt / 3.2808;
                  print(m);

                  bmi = wgt / (m * m);

                  if (bmi <= 18.4) {
                    s = "Underweight";
                    s1 =
                        "This child's BMI is lower than\nthe 5th percentile and is considered\nbelow the normal range of\nhealthy weight for age,\nsex and height.";
                  } else if (bmi >= 18.5 && bmi <= 24.9) {
                    s = "Normal";
                    s1 =
                        "This child's BMI is between\nthe 5th and 85th percentiles,\nconsidered in the range of\nhealthy weight for age,\nsex and height.";
                  } else if (bmi >= 25.0 && bmi <= 39.9) {
                    s = "Overweight";

                    s1 =
                        "This child's BMI is between\nthe 85th and 95th percentiles\nand is considered above the range\nof healthy weight for age,\nsex and height.";
                  } else if (bmi >= 40.0) {
                    s = "Obese";
                    s1 =
                        "This child's BMI is\ngreater than the 95th percentile\nand is high above the range of\nhealthy weight for age,\nsex and height.";
                  }
                  print("bmi = ${bmi}");
                },
                child: Text(
                  "Calculate",
                  style: TextStyle(fontSize: 20),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.purple,
                )),
          )
        ],
      ),
    );
  }
}
