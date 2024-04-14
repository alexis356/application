import 'package:flutter/material.dart';
import 'package:learning/screens/SecondaPagina.dart';

class PaginaErrore extends StatelessWidget {
  const PaginaErrore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Application"),
      ),
      body: const Center(

        child: Column(
          children: [
            Text(
              'Errore',
              style: TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      ),
    );
  }
}
