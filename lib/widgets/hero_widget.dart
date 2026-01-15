import 'package:flutter/material.dart';

class HeroWidget extends StatelessWidget {
  final String title;
  final Widget? destination;
  
  const HeroWidget({super.key, required this.title, this.destination});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if(destination != null) {
          Navigator.push(context, MaterialPageRoute(builder: (context) => destination!));
        }
      },
      child: Stack(
        alignment: Alignment.center,
        children: [
          ClipRRect(borderRadius: BorderRadius.circular(20), child: Image.asset('assets/images/bg.jpg')),
          FittedBox(child: Text(title, style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500, letterSpacing: 30),))
        ]),
    );
  }
}