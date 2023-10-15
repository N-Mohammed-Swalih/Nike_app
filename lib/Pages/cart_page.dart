import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneakers_app/models/cart.dart';
import 'package:sneakers_app/models/shoe.dart';

import '../components/cart_items.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
        builder: (context, value, child) => Padding(
              padding:const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //heading of the page
                 const Text(
                    "My Cart",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Expanded(
                      child: ListView.builder(
                    itemCount: value.getUserCart().length,
                    itemBuilder: (context, index) {
                      //get individual items
                      Shoe individualShoe = value.getUserCart()[index];

                      //return the cart items
                      return CartItem(
                        shoe: individualShoe,
                      );
                    },
                  )),

                  //Pay Now Button
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.black87,
                        borderRadius: BorderRadius.circular(10)),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black),
                      onPressed: () {},
                      child:const Text(
                        "Place Order",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              ),
            ));
  }
}
