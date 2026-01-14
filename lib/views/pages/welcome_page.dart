import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:my_project_1/views/widget_tree.dart';
import 'package:my_project_1/widgets/hero_widget.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.asset('assets/lotties/Fish_Loader.json'),
              Text('Welcome to the App!', style: TextStyle(fontSize: 24, letterSpacing: 1.5)),
              SizedBox(height: 23),
              FilledButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20)
                ),
                onPressed: () => {
                  Navigator.pushReplacement(context, 
                    MaterialPageRoute(builder: (context) {
                      return WidgetTree();
                    })
                  )
                }, 
              child: const Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}