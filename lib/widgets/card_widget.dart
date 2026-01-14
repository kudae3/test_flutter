import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Card Title', style: TextStyle(color: Colors.green, fontSize: 16, fontWeight: FontWeight.bold)),
                  SizedBox(height: 10),
                  Text('This is a card widget with some content.'),
                ],
              ),
            ),
          );
  }
}