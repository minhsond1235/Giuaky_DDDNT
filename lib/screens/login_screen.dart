import 'package:flutter/material.dart';

import 'home_screen.dart';
import 'register_screen.dart';
import 'forgot_password_screen.dart';

class LoginScreen extends StatelessWidget {

  LoginScreen({super.key});

  final TextEditingController emailController =
      TextEditingController();

  final TextEditingController passwordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: const Color(0xFFF5F5F5),

      body: SafeArea(

        child: Padding(

          padding: const EdgeInsets.symmetric(
            horizontal: 30,
          ),

          child: Column(

            children: [

              const SizedBox(height: 60),

              const Text(

                "Restaurant App",

                style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),

              const SizedBox(height: 120),

              // EMAIL

              TextField(

                controller: emailController,

                decoration: InputDecoration(

                  hintText: "Test@gmail.com",

                  hintStyle: TextStyle(
                    color: Colors.grey,
                  ),

                  border: InputBorder.none,

                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey.shade300,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 40),

              // PASSWORD

              TextField(

                controller: passwordController,

                obscureText: true,

                decoration: InputDecoration(

                  hintText: "••••••••",

                  hintStyle: TextStyle(
                    color: Colors.grey,
                  ),

                  border: InputBorder.none,

                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey.shade300,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // FORGOT PASSWORD

              Align(

                alignment: Alignment.centerRight,

                child: TextButton(

                  onPressed: () {

                    Navigator.push(

                      context,

                      MaterialPageRoute(
                        builder: (_) =>
                            const ForgotPasswordScreen(),
                      ),
                    );
                  },

                  child: const Text(

                    "Forgot Password?",

                    style: TextStyle(
                      color: Color(0xFFD4A64A),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 30),

              // SIGN IN

              SizedBox(

                width: double.infinity,
                height: 60,

                child: ElevatedButton(

                  onPressed: () {

                    Navigator.push(

                      context,

                      MaterialPageRoute(
                        builder: (_) => const HomeScreen(),
                      ),
                    );
                  },

                  style: ElevatedButton.styleFrom(

                    backgroundColor:
                        Colors.grey.shade300,

                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(30),
                    ),

                    elevation: 0,
                  ),

                  child: const Text(

                    "Sign In",

                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 30),

              // SIGN UP

              SizedBox(

                width: double.infinity,
                height: 60,

                child: ElevatedButton(

                  onPressed: () {

                    Navigator.push(

                      context,

                      MaterialPageRoute(
                        builder: (_) =>
                            const RegisterScreen(),
                      ),
                    );
                  },

                  style: ElevatedButton.styleFrom(

                    backgroundColor:
                        const Color(0xFF3F51B5),

                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(30),
                    ),

                    elevation: 10,
                  ),

                  child: const Text(

                    "Sign Up",

                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
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