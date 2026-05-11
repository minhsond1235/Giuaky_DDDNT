import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/app_provider.dart';

class FoodListScreen extends StatelessWidget {
  const FoodListScreen({super.key});

  @override
  Widget build(BuildContext context) {

    // context chỉ dùng trong build
    final provider = context.watch<AppProvider>();

    return Scaffold(

      appBar: AppBar(
        title: const Text("Food List"),
      ),

      body: GridView.builder(

        itemCount: provider.foods.length,

        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),

        itemBuilder: (context, index) {

          final food = provider.foods[index];

          return Card(

            child: Column(
              children: [

                Expanded(
                  child: Image.network(
                    food.image,
                  ),
                ),

                Text(food.name),

                Text(
                  "${food.price} ₹",
                ),

                ElevatedButton(

                  onPressed: () {

                    provider.addToCart(food);

                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          "${food.name} added to cart",
                        ),
                      ),
                    );
                  },

                  child: const Text(
                    "Add To Cart",
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}