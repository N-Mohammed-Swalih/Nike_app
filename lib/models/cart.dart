import 'package:flutter/material.dart';
import 'package:sneakers_app/models/shoe.dart';

class Cart extends ChangeNotifier {
  //list of the shoes
  List<Shoe> shoeShop = [
    Shoe(
        name: "Airmax 1",
        price: "456",
        imagePath: "assets/shoes/airmax1.jpg",
        description: "Live with airmax styish lifestyle"),
    Shoe(
        name: "Airmax Pulse",
        price: "236",
        imagePath: "assets/shoes/airmaxpulse.jpg",
        description: "Live with airmax plus styish lifestyle"),
    Shoe(
        name: "Metcon 9",
        price: "327",
        imagePath: "assets/shoes/metcon9.jpg",
        description: "Live with metcon stylish lifestyle"),
    Shoe(
        name: "Zoom Vomero 5",
        price: "777",
        imagePath: "assets/shoes/zoomvomero5.jpg",
        description: "Live with vomero lifestyle")
  ];

  //list of items in users cart

  List<Shoe> userCart = [];

  //get list of the shoes for sale

  List<Shoe> getShoeList() {
    return shoeShop;
  }

  //get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  //add items to the cart
  void addItemsToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  //remove item from the cart
  void removeItemsfromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
