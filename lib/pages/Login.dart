import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart' show Buttons, SignInButton;

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[500],
      body: SafeArea(
        child: Column(
          children: [

            /// LOGO
            Expanded(
              flex: 2,
              child: Image.asset('lib/images/Logo.png'),
            ),

            /// FORM
            Expanded(
              flex: 5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  /// SIGN UP TEXT
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "Don't have an account? ",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      Text(
                        "SIGN UP",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),

                  /// EMAIL
                  _inputField(Icons.email, 'EMAIL'),

                  /// PASSWORD
                  _inputField(Icons.lock, 'PASSWORD', obscure: true),

                  /// FORGOT PASSWORD
                  const SizedBox(height: 10),
                  const Text(
                    'Forgot Password?',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  /// SIGN IN BUTTON
                  const SizedBox(height: 20),
                  _signInButton(),

                  const SizedBox(height: 20),

                  /// SOCIAL LOGIN
                  Row(
                    children: [
                      Expanded(child: SignInButton(Buttons.AppleDark, onPressed: () {})),
                      Expanded(child: SignInButton(Buttons.Google, onPressed: () {})),
                      Expanded(child: SignInButton(Buttons.FacebookNew, onPressed: () {})),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// REUSABLE INPUT FIELD
  Widget _inputField(IconData icon, String hint, {bool obscure = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 8),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          color: Colors.blue[50],
          child: TextField(
            obscureText: obscure,
            decoration: InputDecoration(
              border: InputBorder.none,
              prefixIcon: Icon(icon),
              hintText: hint,
            ),
          ),
        ),
      ),
    );
  }

  /// SIGN IN BUTTON
  Widget _signInButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          height: 50,
          color: Colors.blue[50],
          child: const Center(
            child: Text(
              'SIGN IN',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
