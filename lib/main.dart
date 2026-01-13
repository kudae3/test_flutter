import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

String name = 'Hello, Flutter!';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal, brightness: Brightness.dark),
      ),
      
      home: MyHomePage()
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          
          appBar: AppBar(
            title: Text('My Flutter', style: TextStyle(fontSize: 16)),
          ),
          
        
          bottomNavigationBar: NavigationBar(
            selectedIndex: currentIndex,
            destinations: [
              NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
              NavigationDestination(icon: Icon(Icons.settings), label: 'Settings'),
            ],
            onDestinationSelected: (int val) {
              setState(() {
                currentIndex = val;
              });
            },
            ),
        
          body: Center(
            child: currentIndex == 0 ? Text('Welcome to Home Page', style: TextStyle(fontSize: 20))
            : Text('Settings Page', style: TextStyle(fontSize: 20)),
          ),
        ),
    );
  }
}