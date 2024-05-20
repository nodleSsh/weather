import 'package:flutter/material.dart';
import 'package:weather/block/block_start.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
       scaffoldBackgroundColor: const Color.fromARGB(255, 240, 240, 240),
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        '/block_start': (context) => const BlockStart(),
      },
      initialRoute: '/block_start',
    );
  }
}

