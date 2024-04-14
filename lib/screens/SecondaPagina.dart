import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning/screens/PrimaPagina.dart';

class SecondaPagina extends StatelessWidget {
  const SecondaPagina({super.key, required this.data});

  final String data;

  @override
  Widget build(BuildContext context) {
    return Center(

        child: Stack(
          children: [
            Column(
              children: [
                Hero(
                  tag: 'immagine-copertina',
                    child: Image.asset('images/blue-nature.jpg')),
                Text(
                  data,
                  style: const TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const Positioned(
                top: 20,
                right: 20,
                child:
                Hero(
                  tag: 'like',
                  child: Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                )
            ),
          ],
        ),
      );
  }
}
