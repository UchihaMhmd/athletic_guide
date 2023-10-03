import 'package:flutter/material.dart';

// ignore: camel_case_types
class about extends StatelessWidget {
  const about({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          AppBar(
            title: const Text('About'),
          )
        ],
      ),
    );
  }
}
