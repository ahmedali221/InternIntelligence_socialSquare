import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:internintelligence_socialsquare/features/auth/presentation/cubit/auth_cubit.dart';

import '../components/customTextInputField.dart';
import 'signupPage.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          spacing: 15,
          children: [
            CustomTextInput(
              hintText: 'Email',
              controller: emailController,
              prefixIcon: Icons.email,
              keyboardType: TextInputType.emailAddress,
            ),
            CustomTextInput(
              hintText: 'Password',
              controller: passwordController,
              obscureText: true,
              prefixIcon: Icons.lock,
            ),
            ElevatedButton(
              onPressed: () {
                // Handle login logic
                final email = emailController.text;
                final password = passwordController.text;
                final authCubit = context.read<AuthCubit>();
                if (email.isNotEmpty && password.isNotEmpty) {
                  authCubit.login(email, password);
                  print("Done");
                }
              },
              child: const Text('Login'),
            ),
            TextButton(
              onPressed: () {
                // Navigate to Signup Page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignupPage()),
                );
              },
              child: const Text('Don\'t have an account? Sign up'),
            ),
          ],
        ),
      ),
    );
  }
}
