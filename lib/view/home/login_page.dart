import 'package:flutter/material.dart';
import 'package:quick_fix/view/navigator.dart';
// Import MainNavigator to navigate after login

class LoginPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: emailController,
              decoration: const InputDecoration(labelText: 'Email'),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: const InputDecoration(labelText: 'Password'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigate to MainNavigator after login button is pressed
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => MainNavigator()),
                );
              },
              child: const Text('Login'),
            ),
            TextButton(
              onPressed: () {
                // Navigate to RegisterPage if needed (you can create this screen)
              },
              child: const Text("Don't have an account? Register"),
            ),
          ],
        ),
      ),
    );
  }
}
