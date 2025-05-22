import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  final TextEditingController departmentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: ListView(
          children: [
            SizedBox(height: 100),
            TextField(decoration: InputDecoration(labelText: 'Full Name and Last')),
            TextField(decoration: InputDecoration(labelText: 'Email')),
            TextField(
              controller: departmentController,
              decoration: InputDecoration(
                labelText: 'Department',
                suffixIcon: Icon(Icons.calendar_today),
              ),
            ),
            TextField(obscureText: true, decoration: InputDecoration(labelText: 'Enter Your Password')),
            TextField(obscureText: true, decoration: InputDecoration(labelText: 'Confirm Password')),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: Text('Sign Up'),
              style: ElevatedButton.styleFrom(minimumSize: Size(double.infinity, 50)),
            ),
          ],
        ),
      ),
    );
  }
}
