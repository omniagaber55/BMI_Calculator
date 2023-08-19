import 'dart:math';

import 'package:bmi/BMI_Result.dart';

import 'package:flutter/material.dart';

class BMIC extends StatefulWidget {
  double _currentSliderValue = 20;
  @override
  State<BMIC> createState() => _BMICState();
}

class _BMICState extends State<BMIC> {
  // This widget is the root of your application.
  bool male = true;
  int height = 100;
  double weight = 50;

  double age = 20;
  late String result;
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            foregroundColor: const Color(0xff04040C),
            backgroundColor: const Color(0xff1D1E33),
            title: const Text(
              "BMI CALCULATOR",
              style: TextStyle(fontSize: 22, color: Colors.white),
            ),
            centerTitle: true,
            elevation: 0,
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 12, top: 16),
                    child: Container(
                      height: 130,
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: male ? Colors.red : Color(0xff1D1E33)),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 15),
                      child: Column(
                        children: [
                          Icon(
                            Icons.male,
                            size: 40,
                            color: Colors.white,
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                male = true;
                              });
                            },
                            child: Text(
                              "MAN",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 24, top: 16),
                    child: Container(
                      height: 130,
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: male ? Color(0xff1D1E33) : Colors.red),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 15),
                      child: Column(
                        children: [
                          Icon(
                            Icons.female,
                            size: 40,
                            color: Colors.white,
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                male = false;
                              });
                            },
                            child: Text(
                              "FEMALE",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 12),
                child: Container(
                  height: 180,
                  width: 324,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xff1D1E33)),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
                  child: Column(
                    children: [
                      Text(
                        "height",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                        ),
                      ),
                      Text(
                        "$height",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Slider(
                        value: height.toDouble(),
                        activeColor: Colors.red,
                        min: 0,
                        max: 200,
                        onChanged: (value) {
                          setState(() {
                            height = value.round();
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 12),
                    child: Container(
                      height: 130,
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xff1D1E33)),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 15),
                      child: Column(
                        children: [
                          Text(
                            "weight",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                            ),
                          ),
                          Text(
                            "$weight",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 14),
                                child: Container(
                                  height: 40,
                                  width: 40,
                                  child: FittedBox(
                                    child: FloatingActionButton(
                                        onPressed: () {
                                          setState(() {
                                            weight--;
                                          });
                                        },
                                        child: Icon(
                                          Icons.minimize,
                                          size: 40,
                                        ),
                                        backgroundColor: Color(0xff4C4F5E)),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 12),
                                child: Container(
                                  height: 40,
                                  width: 40,
                                  child: FittedBox(
                                    child: FloatingActionButton(
                                      onPressed: () {
                                        setState(() {
                                          weight++;
                                        });
                                      },
                                      child: Icon(Icons.add),
                                      backgroundColor: Color(0xff4C4F5E),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 24),
                    child: Container(
                      height: 130,
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xff1D1E33)),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 15),
                      child: Column(
                        children: [
                          Text(
                            "age",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                            ),
                          ),
                          Text(
                            "$age",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 14),
                                child: Container(
                                  height: 40,
                                  width: 40,
                                  child: FittedBox(
                                    child: FloatingActionButton(
                                        onPressed: () {
                                          setState(() {
                                            age--;
                                          });
                                        },
                                        child: Icon(
                                          Icons.minimize,
                                          size: 40,
                                        ),
                                        backgroundColor: Color(0xff4C4F5E)),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 12),
                                child: Container(
                                  height: 40,
                                  width: 40,
                                  child: FittedBox(
                                    child: FloatingActionButton(
                                      onPressed: () {
                                        setState(() {
                                          age++;
                                        });
                                      },
                                      child: Icon(Icons.add),
                                      backgroundColor: Color(0xff4C4F5E),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              InkWell(
                  onTap: () {
                    
                    double bmi = weight / pow(height / 100, 2);
                    if (bmi.round() < 18) {
                      result = "very thin";
                    }
                    else  if (bmi.round() >18&&bmi.round() <25) {
                      result = "Normal";
                    }
                    else {
                      result = "Very fat";
                    }
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BMI(
                              result:result,
                                  age: age,
                                  male: male,
                                  height: height,
                                  weight: weight,
                                  bmi:bmi,
                                )));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Container(
                      width: double.infinity,
                      height: 75,
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 45),
                      color: Color(0xffFD0225),
                      child: const Text(
                        "CALCULATE",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ))
            ],
          )),
    );
  }
}
