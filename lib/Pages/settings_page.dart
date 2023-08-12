import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneakers_app/models/cart.dart';
import 'package:sneakers_app/models/shoe.dart';

import '../components/cart_items.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
        builder: (context, value, child) => Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //heading of the page
                  Text(
                    "Settings",
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
                  ))
                ],
              ),
            ));
  }
}
