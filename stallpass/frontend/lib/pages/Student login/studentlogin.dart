import "package:flutter/material.dart";

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            SizedBox(height: 150), // Placeholder for graphic
            TextField(
              decoration: InputDecoration(labelText: 'Username'),
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(labelText: 'Enter Your Password'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/home'),
              child: Text('Login'),
              style: ElevatedButton.styleFrom(minimumSize: Size(double.infinity, 50)),
            ),
            SizedBox(height: 10),
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, '/signup'),
              child: Text("Don't have an Account? Sign up", style: TextStyle(color: Colors.blue)),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}