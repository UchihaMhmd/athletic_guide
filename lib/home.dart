import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const appTitle = 'HomePage';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        body: const homepage(),
      ),
    );
  }
}

// ignore: camel_case_types
class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        AppBar(
          backgroundColor: const Color.fromARGB(208, 1, 47, 51),
          title: const Text('homepage'),
        ),
        const Text('Top Athletes'),
      ],
    ));
  }
}
