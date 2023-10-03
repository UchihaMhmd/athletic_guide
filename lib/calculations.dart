// ignore: avoid_web_libraries_in_flutter
//import 'dart:html';
import 'dart:html';
import 'dart:math';
// ignore: unnecessary_import
import 'dart:ui';
import 'package:flutter/services.dart';
import 'package:untitled/calculatep.dart';
import 'package:flutter/material.dart';
// ignore: unnecessary_import
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
// ignore: unused_import
import 'package:untitled/athletemain.dart';
// ignore: unused_import
import 'package:untitled/calculatepoints.dart';
import 'package:untitled/olympics.dart';

// ignore: unused_import
import 'main.dart';
import 'package:untitled/controller/HomeController.dart';

class calculations extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

enum Gender { male, female }

enum In_Out { Indoor, Outdoor }

class _MyAppState extends State<calculations> {
  String dropdownValue = '100m';
  Gender _gender = Gender.male;
  In_Out _in_out = In_Out.Indoor;
  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    //String s = myController.text;
    Gender g = _gender;
    In_Out io = _in_out;
    double? doubleVar = 0.0;
    String stringVar = myController.text;
    doubleVar = double.tryParse(stringVar);
    String s = 'xx';
    if (doubleVar != null)
      doubleVar = doubleVar + 1 - 1;
    else
      doubleVar = 1.0;
    String ioo = io.toString();
    String gg = g.toString();
    if (g == Gender.male) gg = 'male';
    if (g == Gender.female) gg = 'female';
    void dispose() {
      // dispose of the Text field controller when the widget is removed
      myController.dispose();
      super.dispose();
    }

    String ee = dropdownValue.toString();
    calculatepoints cal = calculatepoints(ee, doubleVar, gg, ioo);
    int i = cal.fnx(ee, doubleVar, gg, ioo);

    String ii = i.toString();
    //int dd = cal.fnx(dropdownValue, s);
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 206, 206, 206),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 3, 55, 67),
          title: Text('Calculations'),
        ),
        body: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Radio(
                      value: In_Out.Indoor,
                      groupValue: _in_out,
                      onChanged: (value) {
                        setState(() {
                          _in_out = value!;
                        });
                      }),
                  Text(
                    'Indoor',
                    style: TextStyle(
                      color: Color.fromARGB(255, 3, 55, 67),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Radio(
                      value: In_Out.Outdoor,
                      groupValue: _in_out,
                      onChanged: (value) {
                        setState(() {
                          _in_out = value!;
                        });
                      }),
                  Text(
                    'Outdoor',
                    style: TextStyle(
                      color: Color.fromARGB(255, 3, 55, 67),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Radio(
                      value: Gender.male,
                      groupValue: _gender,
                      onChanged: (value) {
                        setState(() {
                          _gender = value!;
                        });
                      }),
                  Text(
                    'Male',
                    style: TextStyle(
                      color: Color.fromARGB(255, 3, 55, 67),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Radio(
                      value: Gender.female,
                      groupValue: _gender,
                      onChanged: (value) {
                        setState(() {
                          _gender = value!;
                        });
                      }),
                  Text(
                    'Female',
                    style: TextStyle(
                      color: Color.fromARGB(255, 3, 55, 67),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              Container(
                width: 300,
                child: DropdownButton<String>(
                  key: const Key('m'),
                  hint: Text('Event'),
                  value: dropdownValue,
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownValue = newValue!;
                    });
                  },
                  items: <String>[
                    'Event',
                    '100m',
                    '200m',
                    '400m',
                    '110mh',
                    '400mh',
                    '800m',
                    '1500m',
                    '3000m st',
                    '5000m',
                    '10000m',
                    '21km',
                    '42km',
                    'Long Jump',
                    'Triple Jump',
                    'High Jump',
                    'Pole Vault',
                    'Discuss Throw',
                    'Hammer Throw',
                    'Shot Put',
                    'Javlen Throw',
                    'Heptathlon',
                    'Decathlon'
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                        value,
                        style: TextStyle(
                          color: Color.fromARGB(255, 3, 55, 67),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
              TextField(
                  controller: myController,
                  decoration: new InputDecoration(
                    labelText: "Enter your timing",
                    fillColor: Color.fromARGB(255, 3, 55, 67),
                    iconColor: Color.fromARGB(255, 3, 55, 67),
                  ),
                  //keyboardType: TextInputType.number,
                  //inputFormatters: <TextInputFormatter>[
                  //FilteringTextInputFormatter.digitsOnly
                  // ],
                  onChanged: (String? newValue) {
                    setState(() {
                      //(newValue) => doubleVar = double.parse(newValue);
                      stringVar = newValue!;
                    });
                  }

                  // Only numbers can be entered
                  ),
              Container(
                color: Color.fromARGB(255, 3, 55, 67),
                child: ElevatedButton(
                  onPressed: null,
                  child: Text(
                    'Result',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                ),
              ),
              Text(
                '$ii', // <-- SEE HERE
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 3, 55, 67)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
