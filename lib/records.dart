// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
// ignore: unused_import
//import 'package:untitled/Athlete.dart';
//import 'package:untitled/frgmnt.java';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const appTitle = 'AthletePage';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(208, 1, 47, 51),
          title: const Text('Athlete Page'),
        ),
        body: const Records(),
      ),
    );
  }
}

class Records extends StatelessWidget {
  const Records({super.key});

  @override
  Widget build(BuildContext context) {
    //var athlete = Athlete('mhmd', '31/5/1998', 'Inter', '400m', '1056');
    /*var a1 = Athlete('mhmd mortada', '31/5/1998', 'Inter', '400m', '1056');
    var a2 = Athlete('nour hadid', '31/5/1998', 'Inter', '400m', '1056');
    var a3 = Athlete('ali khazaal', '31/5/1998', 'Inter', '400m', '1056');*/

    return Scaffold(
      body: ListView(
        children: [
          AppBar(
            backgroundColor: const Color.fromARGB(208, 1, 47, 51),
            title: const Text('Records'),
          ),
          /*ListView(),*/
          Row(
            children: [
              Column(
                children: [
                  Container(
                    decoration: const BoxDecoration(),
                    child: const TextButton(
                      onPressed: onclick,
                      child: Text(
                        'Track',
                        style: TextStyle(
                          fontSize: 18,
                          color: Color.fromARGB(208, 1, 47, 51),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Column(children: [
                // ignore: avoid_unnecessary_containers
                Container(
                  child: const TextButton(
                      onPressed: null,
                      child: Text(
                        'Field',
                        style: TextStyle(
                          fontSize: 18,
                          color: Color.fromARGB(208, 1, 47, 51),
                          fontWeight: FontWeight.w700,
                        ),
                      )),
                ),
              ]),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(5, 3, 5, 0),
            child: Container(
              //height: 35,
              decoration: const BoxDecoration(
                color: Color.fromARGB(208, 1, 47, 51),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              child: t,
            ),
          )
          /*const Padding(
            padding: EdgeInsets.fromLTRB(10, 5, 20, 5),

            
          ),*/
        ],
      ),
    );
  }
}

method() {
//FragmentShaderManager fragmentShaderManager=;
//FragmentManager : fragmentManager
}

var t = Table(
  border: const TableBorder(
      top: BorderSide.none,
      horizontalInside: BorderSide(color: Color.fromARGB(255, 255, 255, 255))),
  columnWidths: const <int, TableColumnWidth>{
    0: FlexColumnWidth(2),
    1: FlexColumnWidth(5),
    2: FlexColumnWidth(2),
    3: FlexColumnWidth(2),
    4: FlexColumnWidth(3),
  },
  defaultVerticalAlignment: TableCellVerticalAlignment.middle,
  children: const <TableRow>[
    TableRow(
      children: <Widget>[
        Text(
          ' 100m',
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
        Text(
          ' Nour El din Hadid',
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
        Text(
          ' 10"41',
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
        Text(
          ' 1061',
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
        Text(
          '21/9/2019',
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
      ],
    ),
    TableRow(
      children: <Widget>[
        Text(
          ' 200m',
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
        Text(
          ' Nour El din Hadid',
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
        Text(
          ' 20"82',
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
        Text(
          ' 1093',
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
        Text(
          '21/9/2019',
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
      ],
    ),
    TableRow(
      children: <Widget>[
        Text(
          ' 400m',
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
        Text(
          ' Mohamad Mortada',
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
        Text(
          ' 46"94s',
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
        Text(
          ' 1049',
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
        Text(
          '7/8/2022',
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
      ],
    ),
    TableRow(
      children: <Widget>[
        Text(
          ' 800m',
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
        Text(
          ' Ali Khazaal',
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
        Text(
          ' 1:50"91',
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
        Text(
          ' 1011',
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
        Text(
          '21/9/1998',
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
      ],
    ),
    TableRow(
      children: <Widget>[
        Text(
          ' 1500m',
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
        Text(
          ' Mounir kabara',
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
        Text(
          ' 3:44"32',
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
        Text(
          ' 1066',
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
        Text(
          '21/9/2022',
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
      ],
    ),
    TableRow(
      children: <Widget>[
        Text(
          ' 3000m St',
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
        Text(
          ' Mounir Kabbara',
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
        Text(
          ' 8:44"32',
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
        Text(
          ' 1021',
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
        Text(
          '21/9/2022',
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
      ],
    ),
    TableRow(
      children: <Widget>[
        Text(
          ' 5000m',
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
        Text(
          ' Mounir Kabbara',
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
        Text(
          ' 14:12',
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
        Text(
          ' 998',
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
        Text(
          '21/9/2022',
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
      ],
    ),
    TableRow(
      children: <Widget>[
        Text(
          ' 10000m',
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
        Text(
          ' Ali Awad',
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
        Text(
          ' 30:30',
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
        Text(
          ' 898',
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
        Text(
          '21/9/2001',
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
      ],
    ),
    TableRow(
      children: <Widget>[
        Text(
          ' Half Marathon',
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
        Text(
          ' Hussien Awada',
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
        Text(
          ' 1:04h',
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
        Text(
          ' 841',
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
        Text(
          '21/9/2011',
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
      ],
    ),
    TableRow(
      children: <Widget>[
        Text(
          ' Marathon',
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
        Text(
          ' Hussien Awada',
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
        Text(
          ' 14:12',
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
        Text(
          ' 898',
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
        Text(
          '21/9/2011',
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
      ],
    ),
    TableRow(
      children: <Widget>[
        Text(
          ' High Jump',
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
        Text(
          ' Joan Claud Rabbat',
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
        Text(
          ' 224cm',
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
        Text(
          ' 1150',
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
        Text(
          '21/9/2004',
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
      ],
    ),
    TableRow(
      children: <Widget>[
        Text(
          ' Long Jump',
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
        Text(
          ' Marc Habib',
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
        Text(
          ' 7:40m',
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
        Text(
          ' 998',
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
        Text(
          '21/9/2022',
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
      ],
    ),
    TableRow(
      children: <Widget>[
        Text(
          ' Triple Jump',
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
        Text(
          ' Patrik Hanna',
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
        Text(
          ' 14:89m',
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
        Text(
          ' 998',
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
        Text(
          '21/9/2022',
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
      ],
    ),
    TableRow(
      children: <Widget>[
        Text(
          ' Discus Throw',
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
        Text(
          ' George Hashem',
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
        Text(
          ' 54.15',
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
        Text(
          ' 998',
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
        Text(
          '21/9/2022',
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
      ],
    ),
    TableRow(
      children: <Widget>[
        Text(
          ' Hammer Throw',
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
        Text(
          ' AB shahin',
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
        Text(
          ' 58.41',
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
        Text(
          ' 998',
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
        Text(
          '21/9/2022',
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
      ],
    ),
  ],
);

onclick() {
  //print(t);
}
