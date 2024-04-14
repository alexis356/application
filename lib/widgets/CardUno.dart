import 'package:flutter/material.dart';

class CardUno extends StatelessWidget {
  CardUno({super.key, required int this.numero, required bool this.isFavourite});
  final int numero;
  final bool isFavourite;
  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)
      ),
      child: SizedBox(
        height: 350,
        child: Stack(
          children: [
            InkWell(
              child: Image.asset('images/blue-nature.jpg'),
            ),
            Positioned(
              top: 250,
              right: 10,
              child: isFavourite ? const Icon(Icons.favorite, color: Colors.red,) : const Icon(Icons.favorite_outline),
            ),
            const Positioned(
                top: 250,
                left: 5,
                child: CircleAvatar(
                  backgroundImage: NetworkImage('https://i.pravatar.cc/150?img=27'),
                )
            ),
            Positioned(
              top: 260,
              left: 50,
              child: Text(
                'Nome $numero',
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
            )

          ],
        ),

      ),
    );
  }
}