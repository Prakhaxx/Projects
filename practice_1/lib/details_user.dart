import 'package:flutter/material.dart';

class Secondpage extends StatelessWidget {
  final String name, email, phone;
  const Secondpage(
      {super.key,
      required this.name,
      required this.email,
      required this.phone});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Transfer'),
      ),
      backgroundColor: Colors.green[200],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Name: $name'),
            Text('Email:$email'),
            Text('Phone: $phone'),
          ],
        ),
      ),
    );
  }
}
