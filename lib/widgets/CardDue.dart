import 'package:flutter/material.dart';

class CardDue extends StatefulWidget {
  CardDue({super.key, required this.numero, required this.piace});
  var numero;
  var piace;
  @override
  State<CardDue> createState() => _CardDueState();
}

class _CardDueState extends State<CardDue> {
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
              onDoubleTap: (){
                setState(() {
                  widget.piace = !widget.piace;
                });
              },
              child: Image.asset('images/blue-nature.jpg'),
            ),
            Positioned(
              top: 250,
              right: 10,
              child: widget.piace ? const Icon(Icons.favorite, color: Colors.red,) : const Icon(Icons.favorite_outline),
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
                widget.numero.toString(),
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
