import 'package:flutter/material.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
        //search bar
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 25),
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(20)),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Search",
                  style: TextStyle(
                      fontWeight: FontWeight.w300, color: Colors.grey),
                ),
                Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
              ],
            ),
          ),

          //message
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 20.0),
            child: Text(
              "Just do it,Nike In",
              style: TextStyle(color: Colors.grey),
            ),
          ),
          //hot picks
          const Padding(
            padding:EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Hot picks",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
                Text(
                  "See all",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.blue),
                )
              ],
            ),
          )
        ]);
  }
}
