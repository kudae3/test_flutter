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
          Text('Your name is: ${nameController.text}'),
          Text('Your email is: ${emailController.text}'),
        ],
      ),
    );
  }
}