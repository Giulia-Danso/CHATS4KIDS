import 'package:chat4kids/components/my_buttons.dart';
import 'package:chat4kids/components/mytextfield.dart';
import 'package:chat4kids/pages/login_page.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController newPasswordController = TextEditingController();
  final TextEditingController repeatPasswordController =
      TextEditingController();

  void showConfirmationMessage(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Password reset successful! 👍'),
        duration: Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/confetti3.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Enter your Email and new Password to reset your Password!🙃',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 16),
              MyTextField(
                controller: emailController,
                hintText: 'Email',
                obscureText: false,
              ),
              const SizedBox(
                height: 16.0,
              ),
              MyTextField(
                controller: newPasswordController,
                hintText: 'Enter new Password',
                obscureText: true,
              ),
              const SizedBox(
                height: 16.0,
              ),
              MyTextField(
                controller: repeatPasswordController,
                hintText: 'Repeat Password',
                obscureText: true,
              ),
              const SizedBox(
                height: 24.0,
              ),
              MyButton(
                onTap: () {
                  showConfirmationMessage(context);
                },
                text: 'Reset Password',
              ),
              const SizedBox(height: 16.0),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => LoginPage(
                              onTap: () {},
                            )),
                  );
                },
                child: const Text(
                  'Back to Login ',
                  style: TextStyle(
                    color: Colors.greenAccent,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
