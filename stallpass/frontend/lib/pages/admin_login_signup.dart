import 'package:flutter/material.dart';

class AdminLoginSignupPage extends StatefulWidget {
  const AdminLoginSignupPage({super.key});

  @override
  State<AdminLoginSignupPage> createState() => _AdminLoginSignupPageState();
}

class _AdminLoginSignupPageState extends State<AdminLoginSignupPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      body: Center(
        child: Container(
          width: 600,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.grey.shade300),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Admin Login/signup',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
                ),
              ),
              const SizedBox(height: 10),
              TabBar(
                controller: _tabController,
                labelColor: Colors.white,
                unselectedLabelColor: Colors.black,
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.deepPurple,
                ),
                tabs: const [
                  Tab(text: 'Login'),
                  Tab(text: 'Sign up'),
                ],
              ),
              SizedBox(
                height: 400,
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    _buildLoginForm(),
                    _buildSignUpForm(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLoginForm() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          const TextField(
            decoration: InputDecoration(labelText: 'Username or Email'),
          ),
          const SizedBox(height: 10),
          const TextField(
            obscureText: true,
            decoration: InputDecoration(labelText: 'Password'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Checkbox(value: false, onChanged: (val) {}),
                  const Text('Remember me'),
                ],
              ),
              TextButton(
                onPressed: () {},
                child: const Text('Forgot password?'),
              ),
            ],
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(double.infinity, 40),
              backgroundColor: Colors.deepPurple,
            ),
            child: const Text('Log In'),
          ),
          const SizedBox(height: 10),
          TextButton(
            onPressed: () {},
            child: const Text("Don't have an account? Sign Up"),
          )
        ],
      ),
    );
  }

  Widget _buildSignUpForm() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          const TextField(
            decoration: InputDecoration(labelText: 'Full Name'),
          ),
          const SizedBox(height: 10),
          const TextField(
            decoration: InputDecoration(labelText: 'Email'),
          ),
          const SizedBox(height: 10),
          const TextField(
            obscureText: true,
            decoration: InputDecoration(labelText: 'Password'),
          ),
          const SizedBox(height: 10),
          const TextField(
            obscureText: true,
            decoration: InputDecoration(labelText: 'Confirm Password'),
          ),
          Row(
            children: [
              Checkbox(value: false, onChanged: (val) {}),
              Expanded(
                child: RichText(
                  text: TextSpan(
                    children: [
                      const TextSpan(
                          text: "I agree to the ",
                          style: TextStyle(color: Colors.black)),
                      TextSpan(
                        text: "Terms and Conditions",
                        style: const TextStyle(
                          color: Colors.deepPurple,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(double.infinity, 40),
              backgroundColor: Colors.deepPurple,
            ),
            child: const Text('Create Account'),
          ),
          const SizedBox(height: 10),
          TextButton(
            onPressed: () {},
            child: const Text("Already have an account? Log In"),
          )
        ],
      ),
    );
  }
}
