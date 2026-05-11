import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {

  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: const Color(0xFFF5F5F5),

      body: SafeArea(

        child: SingleChildScrollView(

          child: Padding(

            padding: const EdgeInsets.symmetric(
              horizontal: 30,
            ),

            child: Column(

              children: [

                const SizedBox(height: 50),

                const Text(

                  "Create Account",

                  style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),

                const SizedBox(height: 80),

                TextField(

                  decoration: InputDecoration(

                    hintText: "Full Name",

                    border: InputBorder.none,

                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey.shade300,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 30),

                TextField(

                  decoration: InputDecoration(

                    hintText: "Email",

                    border: InputBorder.none,

                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey.shade300,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 30),

                TextField(

                  obscureText: true,

                  decoration: InputDecoration(

                    hintText: "Password",

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

                      "Register",

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
      ),
    );
  }
}