import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

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
        body: AthleteMain(),
      ),
    );
  }
}

class AthleteMain extends StatefulWidget {
  @override
  _MyAppState1 createState() => _MyAppState1();
}

class _MyAppState1 extends State<AthleteMain> {
  late User athlete = FirebaseAuth.instance.currentUser!;
  List<String> docIDs = [];
  Future getDocTd() async {
    await FirebaseFirestore.instance.collection('athlete').get().then(
          (snapshot) => snapshot.docs.forEach((element) {
            print(element.reference);
            docIDs.add(element.reference.id);
          }),
        );
  }

  @override
  void initState() {
    getDocTd();
    super.initState();
  }

  static var pb = {
    ['Event', 'Date', 'Result', 'Points'],
    ['400m', '28/8/2022', '46"94s', '1049'],
    ['200m', '18/6/2022', '22"09s', '910'],
    ['100m', '12/6/2019', '11"25s', '850']
  };
  @override
  Widget build(BuildContext context) {
    var s = const TextStyle(
        fontSize: 15, color: Color.fromARGB(255, 255, 255, 255));
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 206, 206, 206),
      body: ListView(
        children: [
          AppBar(
            backgroundColor: const Color.fromARGB(255, 3, 55, 67),
            title: const Text('Athlete Page'),
          ),
          Expanded(
              child: FutureBuilder(
            future: getDocTd(),
            builder: (context, snapshot) {
              return ListView.builder(
                  itemCount: docIDs.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(docIDs[index]),
                    );
                  });
            },
          )),
          Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Container(
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 3, 55, 67),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                      border: Border.all(
                          color: const Color.fromARGB(255, 3, 55, 67),
                          width: 6)),
                  child: Column(
                    children: [
                      const Row(
                        children: [
                          Column(
                            children: [
                              Image(
                                  height: 100,
                                  width: 100,
                                  image: NetworkImage(
                                      'https://i.pinimg.com/736x/7e/ce/c4/7ecec434137d1fcbe023db38e06c1260.jpg')),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'mhmd mortada',
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Color.fromARGB(255, 255, 255, 255)),
                              ),
                              Text('31/5/1998',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color:
                                          Color.fromARGB(255, 255, 255, 255))),
                              Text('Inter Lebanon',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color:
                                          Color.fromARGB(255, 255, 255, 255))),
                              Text('1049 points',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color:
                                          Color.fromARGB(255, 255, 255, 255))),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Filter by:',
                            style: s,
                          ),
                          ElevatedButton(
                              style: const ButtonStyle(
                                  backgroundColor: MaterialStatePropertyAll(
                                      Color.fromARGB(255, 3, 55, 67))),
                              onPressed: () {
                                setState(() {
                                  for (var i = 0; i < 4; i++) {
                                    Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            5, 8, 5, 5),
                                        child: Container(
                                          height: 30,
                                          decoration: const BoxDecoration(
                                            //color: Color.fromARGB(255, 255, 255, 255),
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(10),
                                              topRight: Radius.circular(10),
                                              bottomLeft: Radius.circular(10),
                                              bottomRight: Radius.circular(10),
                                            ),
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                pb.elementAt(i).elementAt(0),
                                                style: s,
                                              ),
                                              Text(
                                                pb.elementAt(i).elementAt(1),
                                                style: s,
                                              ),
                                              Text(
                                                pb.elementAt(i).elementAt(2),
                                                style: s,
                                              ),
                                              Text(
                                                pb.elementAt(i).elementAt(3),
                                                style: s,
                                              ),
                                            ],
                                          ),
                                        ));
                                  }
                                });
                              },
                              child: Text(
                                'Pb',
                                style: s,
                              )),
                          ElevatedButton(
                              style: const ButtonStyle(
                                  backgroundColor: MaterialStatePropertyAll(
                                      Color.fromARGB(255, 3, 55, 67))),
                              onPressed: null,
                              child: Text(
                                'Sb',
                                style: s,
                              )),
                        ],
                      ),
                    ],
                  ))),
        ],
      ),
    );
  }
}

onclick() {}
