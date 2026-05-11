import 'package:flutter/material.dart';

import '../models/category.dart';
import '../models/food.dart';

class AppProvider extends ChangeNotifier {

  // ================= USER LOGIN =================

  Map<String, dynamic>? userLogin;

  void login(String email) {

    userLogin = {
      "email": email,
    };

    notifyListeners();
  }

  void logout() {

    userLogin = null;

    notifyListeners();
  }

  // ================= CATEGORY =================

  List<Category> categories = [

    Category(
      id: "1",
      name: "Chinese",
    ),

    Category(
      id: "2",
      name: "South Indian",
    ),

    Category(
      id: "3",
      name: "Beverages",
    ),

    Category(
      id: "4",
      name: "North Indian",
    ),
  ];

  // ================= FOOD =================

  List<Food> foods = [

    Food(
      id: "1",
      name: "Noodles",
      price: 100,
      image:
          "https://cdn-icons-png.flaticon.com/512/2718/2718224.png",
      categoryId: "1",
    ),

    Food(
      id: "2",
      name: "Dosa",
      price: 150,
      image:
          "https://cdn-icons-png.flaticon.com/512/5787/5787016.png",
      categoryId: "2",
    ),

    Food(
      id: "3",
      name: "Juice",
      price: 80,
      image:
          "https://cdn-icons-png.flaticon.com/512/2405/2405479.png",
      categoryId: "3",
    ),

    Food(
      id: "4",
      name: "Pizza",
      price: 200,
      image:
          "https://cdn-icons-png.flaticon.com/512/3132/3132693.png",
      categoryId: "4",
    ),
  ];

  // ================= CART =================

  List<Food> cart = [];

  // ================= ADD TO CART =================

  void addToCart(Food food) {

    int index = cart.indexWhere(
      (item) => item.id == food.id,
    );

    // Nếu món đã tồn tại
    if (index >= 0) {

      cart[index].quantity++;

    } else {

      // Nếu chưa tồn tại
      cart.add(

        Food(
          id: food.id,
          name: food.name,
          price: food.price,
          image: food.image,
          categoryId: food.categoryId,
          quantity: 1,
        ),
      );
    }

    notifyListeners();
  }

  // ================= REMOVE =================

  void removeFromCart(Food food) {

    cart.removeWhere(
      (item) => item.id == food.id,
    );

    notifyListeners();
  }

  // ================= INCREASE =================

  void increaseQty(Food food) {

    food.quantity++;

    notifyListeners();
  }

  // ================= DECREASE =================

  void decreaseQty(Food food) {

    if (food.quantity > 1) {

      food.quantity--;

    } else {

      cart.removeWhere(
        (item) => item.id == food.id,
      );
    }

    notifyListeners();
  }

  // ================= TOTAL =================

  double get totalPrice {

    double total = 0;

    for (var item in cart) {

      total += item.price * item.quantity;
    }

    return total;
  }

  // ================= CLEAR =================

  void clearCart() {

    cart.clear();

    notifyListeners();
  }
}