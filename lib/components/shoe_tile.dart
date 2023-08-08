import 'package:flutter/material.dart';

import '../models/shoe.dart';

class ShoeTile extends StatelessWidget {
  Shoe shoe;

 ShoeTile({super.key, required this.shoe});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:const EdgeInsets.only(left: 25),
      width: 280,
      decoration: BoxDecoration(
        color: Colors.grey[200],
         borderRadius: BorderRadius.circular(12)
      ),
      child: Column(
        children: [
          //shoe images
          Image.asset(shoe.imagePath)
          
          //price

          //description

          //add to cart button

        ],
      ),
    );
  }
}