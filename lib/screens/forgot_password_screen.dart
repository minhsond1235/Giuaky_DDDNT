import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatelessWidget {

  const ForgotPasswordScreen({super.key});

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

              const SizedBox(height: 70),

              const Text(

                "Forgot Password",

                style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),

              const SizedBox(height: 40),

              const Text(

                "Enter your email to reset password",

                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),

              const SizedBox(height: 80),

              TextField(

                decoration: InputDecoration(

                  hintText: "Enter Email",

                  border: InputBorder.none,

                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey.shade300,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 50),

              SizedBox(

                width: double.infinity,
                height: 60,

                child: ElevatedButton(

                  onPressed: () {},

                  style: ElevatedButton.styleFrom(

                    backgroundColor:
                        const Color(0xFF3F51B5),

                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(30),
                    ),
                  ),

                  child: const Text(

                    "Reset Password",

                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              TextButton(

                onPressed: () {
                  Navigator.pop(context);
                },

                child: const Text(
                  "Back To Login",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black87,
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