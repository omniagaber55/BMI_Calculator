import 'package:bmi/BMI_cala.dart';
import 'package:flutter/material.dart';

class BMI extends StatelessWidget {
  final bool male;
  final int height;
  final double weight;
  final String result;
  final double age;
  final double bmi;
  const BMI(
      {Key? key,
      required this.height,
      required this.weight,
      required this.age,
      required this.male,
      required this.result,
       required this.bmi
      });

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            foregroundColor: const Color(0xff04040C),
            backgroundColor: const Color(0xff1D1E33),
            title: const Text(
              "BMI RESULT",
              style: TextStyle(fontSize: 25, color: Colors.white),
            ),
            elevation: 0,
            leading: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
              
            ),
          ),
          drawer: const Drawer(),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 10),
                child: Center(
                  child: Text(
                    "Your Result",
                    style: TextStyle(fontSize: 40, color: Colors.white),
                  ),
                ),
              ),
              Padding(padding: 
              EdgeInsets.symmetric(horizontal:12),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xff1D1E33)),
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 30),
                child: Column(
                  children: [
                    Text(
                      "Normal",
                      style: TextStyle(
                          color: Color(0xff25DA70),
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 28,
                    ),
                    Text(
                      "$bmi",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 55,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 28,
                    ),
                    Text(
                      "$result",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 55,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Normal BMI range:",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    Text(
                      "18.5-25 kg/m2",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    SizedBox(
                      height: 28,
                    ),
                  
                  ],
                ),
              ),
              ),
               InkWell(
                  onTap: () {
                    
                  
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BMIC(
                            
                                )));
                  },
                  child:Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: Container(
                  height: 75,
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 45),
                  color: Color(0xffFD0225),
                  child: const Text(
                    "RE-CALCULATE YOUR BMI",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ))
            
            ],
          )),
    );
  }
}
