import 'package:flutter/material.dart';
import 'package:learning/screens/PrimaPagina.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Learning App',
      theme: ThemeData(
        useMaterial3: false,

      ),
      home: PrimaPagina()
      // Scaffold(
      //   appBar: AppBar(
      //   ),
      //   body: const Center(
      //     child: CircularProgressIndicator()
      //   ),
      //   floatingActionButton: FloatingActionButton(onPressed: () {
      //
      //   }),
      // ),
    );
  }
}
