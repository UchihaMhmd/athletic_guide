import 'package:flutter/material.dart';

// ignore: camel_case_types
class topranking extends StatelessWidget {
  const topranking({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          AppBar(
            backgroundColor: const Color.fromARGB(208, 1, 47, 51),
            title: const Text('Top Ranking'),
          ),
          Row(
            children: [
              Column(
                children: [Text('hi'), Text('bi')],
              ),
              Column(
                children: [Text('hi'), Text('bi')],
              )
            ],
          )
        ],
      ),
    );
  }
}
