import 'package:flutter/material.dart';
import 'package:my_project_1/views/pages/course_page.dart';

class HeroWidget extends StatelessWidget {
  final String title;
  
  const HeroWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return CoursePage();
        }));
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