import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  
  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          TextField(
            controller: nameController,
            onEditingComplete: () => setState(() {}),
            decoration: InputDecoration(
              labelText: 'Your name',
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 20),
          TextField(
            controller: emailController,
            onEditingComplete: () => setState(() {}),
            decoration: InputDecoration(
              labelText: 'Your email',
              border: OutlineInputBorder(),
            ),
          ),
          
          ValueListenableBuilder(
            valueListenable: nameController, builder:(context, value, child) {
            return Text('Your name is: ${nameController.text}');
          }),

          ValueListenableBuilder(
            valueListenable: emailController,
            builder: (BuildContext context, dynamic value, Widget? child) {
              return Text('Your email is: ${emailController.text}');
            },
          ),
          
          
        ],
      ),
    );
  }
}