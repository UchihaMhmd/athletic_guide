import 'package:flutter/material.dart';

// ignore: unused_import
//import 'package:untitled/Athlete.dart';
import 'package:untitled/about.dart';
import 'package:untitled/athletemain.dart';
import 'package:untitled/calculations.dart';
import 'package:untitled/meeting.dart';
import 'package:untitled/olympics.dart';
import 'package:untitled/records.dart';
import 'package:untitled/topranking.dart';
import 'package:get/get.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    var backcolor = Color.fromARGB(255, 3, 55, 67);
    return Drawer(
      backgroundColor: Color.fromARGB(255, 206, 206, 206),
      child: ListView(
        children: [
          const UserAccountsDrawerHeader(
            arrowColor: Color.fromARGB(255, 3, 55, 67),
            accountName: Text('Mohamad Mortada'),
            accountEmail: Text('mortada_mohamad@hotmail.com'),
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 3, 55, 67),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(100),
                )),
          ),
          ListTile(
            leading: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: backcolor,
                ),
                onPressed: () {
                  /*Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AthleteMain()),
                  );*/
                  Get.to(AthleteMain());
                },
                child: const Text('Athletesmain')),
          ),
          ListTile(
            leading: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: backcolor,
                ),
                onPressed: () {
                  /*Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Meeting()),
                  );*/
                  Get.to(const Meeting());
                },
                child: const Text('Meetings')),
          ),
          ListTile(
            leading: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: backcolor,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const topranking()),
                  );
                },
                child: const Text('Top Ranking')),
          ),
          ListTile(
            leading: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: backcolor,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Records()),
                  );
                },
                child: const Text('Records')),
          ),
          ListTile(
            leading: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: backcolor,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const olympics()),
                  );
                },
                child: const Text('Olympics/World ch')),
          ),
          ListTile(
            leading: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: backcolor,
                ),
                onPressed: () {
                  Get.to(calculations());
                },
                child: const Text('calculations')),
          ),
          ListTile(
            leading: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: backcolor,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const about()),
                  );
                },
                child: const Text('About')),
          ),
        ],
      ),
    );
  }
}
