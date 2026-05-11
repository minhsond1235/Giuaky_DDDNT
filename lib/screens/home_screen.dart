import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/app_provider.dart';
import 'cart_screen.dart';
import 'food_list_screen.dart';
import 'login_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    // THÊM DÒNG NÀY
    final provider = context.watch<AppProvider>();

    return Scaffold(

      appBar: AppBar(

        centerTitle: true,

        title: const Text(
          "Restaurant App",
          style: TextStyle(
            color: Colors.red,
            fontWeight: FontWeight.bold,
          ),
        ),

        actions: [

          // CART
          Stack(
            children: [

              IconButton(
                onPressed: () {

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) =>
                          const CartScreen(),
                    ),
                  );
                },

                icon: const Icon(
                  Icons.shopping_cart,
                ),
              ),

              Positioned(
                right: 5,
                top: 5,

                child: CircleAvatar(
                  radius: 10,
                  backgroundColor: Colors.red,

                  child: Text(
                    "${provider.cart.length}",

                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ),
              )
            ],
          ),

          // LOGOUT
          IconButton(
            onPressed: () {

              provider.logout();

              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (_) =>
                      LoginScreen(),
                ),
              );
            },

            icon: const Icon(Icons.logout),
          ),
        ],
      ),

      drawer: Drawer(
        child: ListView(
          children: [

            DrawerHeader(

              decoration: const BoxDecoration(
                color: Colors.red,
              ),

              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start,

                mainAxisAlignment:
                    MainAxisAlignment.center,

                children: [

                  const CircleAvatar(
                    radius: 35,
                    child: Icon(
                      Icons.person,
                      size: 40,
                    ),
                  ),

                  const SizedBox(height: 10),

                  const Text(
                    "Thông tin khách hàng",

                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight:
                          FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 10),

                  Text(
                    provider.userLogin?["email"]
                            ??
                        "",

                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),

            ListTile(
              title:
                  const Text("Danh sách món ăn"),

              onTap: () {

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) =>
                        const FoodListScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),

      body: const Center(
        child: Text(
          "Welcome Restaurant App",
        ),
      ),
    );
  }
}