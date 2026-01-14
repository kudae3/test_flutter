import 'package:flutter/material.dart';
import 'package:my_project_1/views/widget_tree.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/bg.jpg'), 
            Text('Welcome to the App!', style: TextStyle(fontSize: 21)),
            SizedBox(height: 23),
            FilledButton(onPressed: () => {
              Navigator.pushReplacement(context, 
                MaterialPageRoute(builder: (context) {
                  return WidgetTree();
                })
              )
            }, 
            child: Text('Login'))
          ],
        ),
      ),
    );
  }
}