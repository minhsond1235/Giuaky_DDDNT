import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/app_provider.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final provider = context.watch<AppProvider>();

    double subtotal = provider.totalPrice;

    double tax = subtotal * 0.08;

    double delivery = 30;

    double total =
        subtotal + tax + delivery;

    return Scaffold(

      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Cart",
          style: TextStyle(
            color: Colors.red,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(12),

        child: Column(
          children: [

            // CART LIST
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(12),
                color: Colors.grey.shade200,

                child: ListView.builder(

                  itemCount: provider.cart.length,

                  itemBuilder: (context, index) {

                    final food =
                        provider.cart[index];

                    return Padding(
                      padding:
                          const EdgeInsets.symmetric(
                        vertical: 10,
                      ),

                      child: Row(
                        mainAxisAlignment:
                            MainAxisAlignment
                                .spaceBetween,

                        children: [

                          Expanded(
                            child: Text(
                              food.name,
                              style:
                                  const TextStyle(
                                color: Colors.red,
                                fontWeight:
                                    FontWeight.bold,
                              ),
                            ),
                          ),

                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(),
                            ),

                            child: Row(
                              children: [

                                IconButton(
                                  onPressed: () {
                                    provider.decreaseQty(food);
                                  },

                                  icon: const Icon(Icons.remove),
                                ),

                                Text(
                                  "${food.quantity}",
                                ),

                                IconButton(
                                  onPressed: () {
                                    provider.increaseQty(food);
                                  },

                                  icon: const Icon(
                                    Icons.add,
                                    color: Colors.green,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Text(
                            "₹ ${(food.price * food.quantity).toStringAsFixed(0)}",
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),

            const SizedBox(height: 20),

            // BILL
            Container(
              padding: const EdgeInsets.all(16),
              color: Colors.grey.shade200,

              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start,

                children: [

                  const Text(
                    "Bill Receipt",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight:
                          FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 20),

                  buildBillRow(
                    "Items Total",
                    subtotal,
                  ),

                  buildBillRow(
                    "Taxes (8%)",
                    tax,
                  ),

                  buildBillRow(
                    "Delivery Charges",
                    delivery,
                  ),

                  const Divider(),

                  buildBillRow(
                    "Total Pay",
                    total,
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // BUTTON
            const SizedBox(height: 20),

Row(
  children: [

    Expanded(
      child: Container(
        height: 60,
        alignment: Alignment.center,
        color: Colors.grey.shade300,

        child: Text(
          "₹ ${total.toStringAsFixed(2)}",

          style: const TextStyle(
            color: Colors.red,
            fontSize: 20,
          ),
        ),
      ),
    ),

    Expanded(
      child: SizedBox(
        height: 60,

        child: ElevatedButton(

          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green,
          ),

          onPressed: () {

  provider.clearCart();

  Navigator.pushNamed(
    context,
    '/success',
  );
},

          child: const Text(
            "Proceed To Pay",

            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
        ),
      ),
    ),
  ],
)
          ],
        ),
      ),
    );
  }

  Widget buildBillRow(
      String title,
      double value,
      ) {

    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 6,
      ),

      child: Row(
        mainAxisAlignment:
            MainAxisAlignment.spaceBetween,

        children: [

          Text(title),

          Text(
            "₹ ${value.toStringAsFixed(2)}",
          ),
        ],
      ),
    );
  }
}