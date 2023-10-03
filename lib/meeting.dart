import 'package:flutter/material.dart';

// ignore: camel_case_types
class Meeting extends StatelessWidget {
  const Meeting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          AppBar(
            backgroundColor: const Color.fromARGB(208, 1, 47, 51),
            title: const Text('Meeting'),
          )
        ],
      ),
    );
  }
}
