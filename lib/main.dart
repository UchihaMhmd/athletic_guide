// ignore_for_file: unnecessary_const

/*import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Athlete'),
            centerTitle: true,
          ),
          )));
}
*/

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/athletemain.dart';
import 'package:untitled/navbar.dart';
// ignore: unused_import
//import 'package:untitled/Athlete.dart';
import 'package:untitled/about.dart';
import 'package:untitled/calculations.dart';
import 'package:untitled/meeting.dart';
import 'package:untitled/olympics.dart';
import 'package:untitled/records.dart';
import 'package:untitled/topranking.dart';
import 'package:untitled/controller/HomeController.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const appTitle = 'MainView';
    return GetMaterialApp(
      routes: {
        '\first': (context) => const MyCustomForm(),
        'second': (context) => AthleteMain(),
        'third': (context) => const about(),
        'fourth': (context) => calculations(),
        'fifth': (context) => const Meeting(),
        'seventh': (context) => const olympics(),
        'eighth': (context) => const Records(),
        'nineth': (context) => const topranking(),
      },
      title: appTitle,
      home: Scaffold(
        drawer: const NavBar(),
        //drawerScrimColor: Color.fromARGB(255, 81, 228, 228),
        appBar: AppBar(
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(
                  Icons.menu,
                  color: Color.fromARGB(255, 255, 255, 255),
                  size: 30, // Changing Drawer Icon Size
                ),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            },
          ),
          actions: const [
            IconButton(
                onPressed: null,
                icon: Icon(
                    color: Color.fromARGB(255, 233, 233, 233), Icons.search)),
            IconButton(
                onPressed: null,
                icon: Icon(
                    color: Color.fromARGB(255, 213, 213, 213), Icons.settings))
          ],
          backgroundColor: Color.fromARGB(255, 3, 55, 67),
          title: const Text(
            appTitle,
            style: TextStyle(
              color: Color.fromARGB(255, 212, 212, 212),
              fontSize: 25,
              //fontWeight: FontWeight.w700
            ),
          ),
        ),
        body: const MyCustomForm(),
      ),
    );
  }
}

class MyCustomForm extends StatelessWidget {
  const MyCustomForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 206, 206, 206),
      body: ListView(
        children: [
          Padding(
              padding: const EdgeInsets.fromLTRB(5, 3, 5, 3),
              child: Container(
                width: 100,
                height: 42,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 206, 206, 206),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                ),
                child: const Text(
                  '   Top Ranking Athletes',
                  style: TextStyle(
                    fontSize: 25,
                    color: Color.fromARGB(255, 3, 55, 67),
                    fontWeight: FontWeight.w700,
                  ),
                ),
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 80,
                height: 32,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 206, 206, 206),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                ),
                child: const Text(
                  '  Male',
                  style: TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 3, 55, 67),
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 20, 0),
                  child: Container(
                    width: 60,
                    height: 20,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 3, 55, 67),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                    child: const TextButton(
                      onPressed: null,
                      child: Text(
                        'See All',
                        style: TextStyle(
                          fontSize: 12,
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  )),
            ],
          ),
          Row(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 20, 0),
                    child: Container(
                      width: 306,
                      height: 110,
                      decoration: BoxDecoration(
                        border: Border.all(width: 1),
                        color: const Color.fromARGB(255, 3, 55, 67),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                      ),
                      child: Row(
                        children: [
                          Column(
                            children: const [
                              Image(
                                  height: 100,
                                  width: 100,
                                  image: NetworkImage(
                                      'https://i.pinimg.com/736x/7e/ce/c4/7ecec434137d1fcbe023db38e06c1260.jpg')),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Mhmd Mortada',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255)),
                              ),
                              Text(
                                '31/5/1998',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255)),
                              ),
                              Text(
                                'Inter Lebanon',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255)),
                              ),
                              Text(
                                '400m',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255)),
                              ),
                              Text(
                                '1049 points',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255)),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const Text(''),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 120,
                height: 32,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 206, 206, 206),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                ),
                child: const Text(
                  '  Female',
                  style: TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 3, 55, 67),
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 20, 0),
                  child: Container(
                    width: 60,
                    height: 20,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 3, 55, 67),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                    child: const TextButton(
                      onPressed: null,
                      child: Text(
                        'See All',
                        style: TextStyle(
                          fontSize: 12,
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  )),
            ],
          ),
          Row(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 20, 0),
                    child: Container(
                      width: 306,
                      height: 110,
                      decoration: BoxDecoration(
                        border: Border.all(width: 1),
                        color: const Color.fromARGB(255, 3, 55, 67),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                      ),
                      child: Row(
                        children: [
                          Column(
                            children: const [
                              Image(
                                  height: 100,
                                  width: 100,
                                  image: NetworkImage(
                                      'https://i.pinimg.com/736x/7e/ce/c4/7ecec434137d1fcbe023db38e06c1260.jpg')),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Aziza Sbeity',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255)),
                              ),
                              Text(
                                '1/1/1993',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255)),
                              ),
                              Text(
                                'Lets Run',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255)),
                              ),
                              Text(
                                '100m',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255)),
                              ),
                              Text(
                                '1032 points',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255)),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const Text(''),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 20, 0),
                  child: Container(
                    height: 32,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 206, 206, 206),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                    child: const Text(
                      ' Upcoming Events ',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 3, 55, 67),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  )),
              Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 20, 0),
                  child: Container(
                    width: 60,
                    height: 20,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                      color: Color.fromARGB(255, 3, 55, 67),
                    ),
                    child: const TextButton(
                      onPressed: null,
                      child: Text(
                        'See All',
                        style: TextStyle(
                          fontSize: 12,
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  )),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Container(
              height: 40,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 3, 55, 67),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Meeting()),
                  );
                },
                style: const ButtonStyle(),
                child: const Text(
                  'Asian Indoor Championship',
                  style: TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
