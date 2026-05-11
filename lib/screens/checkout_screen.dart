import 'package:flutter/material.dart';

import 'success_screen.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text("Thanh toán"),
      ),

      body: Center(
        child: ElevatedButton(

          onPressed: () {

            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (_) =>
                    const SuccessScreen(),
              ),
            );
          },

          child: const Text(
            "Xác nhận thanh toán",
          ),
        ),
      ),
    );
  }
}