import 'dart:math';

import 'package:flutter/material.dart';
import 'package:learning/screens/SecondaPagina.dart';

class PrimaPagina extends StatefulWidget {
  const PrimaPagina({super.key});

  @override
  State<PrimaPagina> createState() => _PrimaPaginaState();
}

class _PrimaPaginaState extends State<PrimaPagina> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: const Text('Prova first page'),
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: (){print('tappami');},
              onDoubleTap: (){print('double tappami');},
              onLongPress: (){print('long pressami');},
              child: Container(
                width: double.infinity,
                height: 300,
              ),
            ),
          ),
          floatingActionButton: FloatingActionButton(onPressed: () {}),
        );
  }
}
