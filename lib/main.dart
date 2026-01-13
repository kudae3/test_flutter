import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal, brightness: Brightness.dark),
      ),
      
      home: SafeArea(
        child: Scaffold(
          
          appBar: AppBar(
            title: Text('My Flutter', style: TextStyle(fontSize: 16)),
          ),
          
        
          bottomNavigationBar: NavigationBar(
            destinations: [
              NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
              NavigationDestination(icon: Icon(Icons.settings), label: 'Settings'),
            ],
            selectedIndex: 0,
            // onDestinationSelected: (int val) => {print('Selected: $val')},
            ),
          
          floatingActionButton: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              FloatingActionButton(
                onPressed: () => {},
                child: Icon(Icons.add),
              ),
              SizedBox(height: 10),
              FloatingActionButton(
                onPressed: () => {},
                child: Icon(Icons.remove),
              ),
            ],
          ),
        
          body: Center(
            child: Text('Hello, Flutter!'),
          ),
        ),
      ),
    );
  }
}