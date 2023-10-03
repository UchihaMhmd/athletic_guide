import 'dart:html';

import 'package:flutter/material.dart';
//import 'package:http/http.dart' as http;

// ignore: camel_case_types
class olympics extends StatefulWidget {
  const olympics({super.key});
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<olympics> {
  /*getFeedbackFromSheet() {
    // ignore: unused_local_variable
    //var raw={function doGet(){
    //var sheet=SpreadsheetApp.openById("18JemTwi9EIpDJKTdIjw-npaggOQ3lij9b1eOuJVwHb");
    var values=sheet.getActiveSheet().getvalues;
    var data=[];
    for(int i=1;i<values.length;i++){
var row=values[i];
var feedback={};
feedback['year']=row[0];
feedback['name']=row[1];
feedback['event']=row[2];
feedback['city']=row[3];
data.push(feedback);
}
return ContentService.createTextOutput(JSON.stringify(data)).setMimeType(ContentService.MimeType.JSON);


}};
    http.get();
  }
*/
  var t = {
    ['Year', 'City', 'Name', 'Event'],
    ['2021', 'Tokyo', 'Nour El Din Hadid', '200m'],
    ['2016', 'Rio', 'Ahmad Hazer', '110mh'],
    ['2016', 'Rio', 'Cherin Njeim', 'Marathon'],
    ['2012', 'London', 'Ahmad Hazer', '110mh'],
    ['2012', 'London', 'Gretta Taslakian', '400m']
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 206, 206, 206),
        body: ListView(children: [
          AppBar(
            backgroundColor: const Color.fromARGB(255, 3, 55, 67),
            title: const Text('Olympics'),
          ),
          Column(
            children: [
              for (var i = 0; i < 6; i++)
                Padding(
                    padding: const EdgeInsets.fromLTRB(5, 8, 5, 5),
                    child: Container(
                      height: 30,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 3, 55, 67),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Center(
                            child: Text(
                              ' ' + t.elementAt(i).elementAt(0),
                              style: s,
                            ),
                          ),
                          Center(
                            child: Text(
                              t.elementAt(i).elementAt(1),
                              style: s,
                            ),
                          ),
                          Center(
                            child: Text(
                              t.elementAt(i).elementAt(2),
                              style: s2,
                            ),
                          ),
                          Center(
                            child: Text(
                              t.elementAt(i).elementAt(3) + ' ',
                              style: s,
                            ),
                          ),
                        ],
                      ),
                    )),
            ],
          ),
        ]));
  }
}

var s =
    const TextStyle(fontSize: 15, color: Color.fromARGB(255, 255, 255, 255));
var s2 = const TextStyle(
    fontSize: 15,
    color: Color.fromARGB(255, 255, 255, 255),
    fontWeight: FontWeight.w600);

var c = const Color.fromARGB(255, 255, 255, 255);

class FeedbackTile extends StatelessWidget {
  final String year, name, event, city;
  FeedbackTile(
      {required this.year,
      required this.name,
      required this.event,
      required this.city});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [],
      ),
    );
  }
}
