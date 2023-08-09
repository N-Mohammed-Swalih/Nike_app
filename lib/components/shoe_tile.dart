import 'package:flutter/material.dart';

import '../models/shoe.dart';

class ShoeTile extends StatelessWidget {
  Shoe shoe;

  ShoeTile({super.key, required this.shoe});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(left: 25),
        width: 280,
        decoration: BoxDecoration(
            color: Colors.grey[200], borderRadius: BorderRadius.circular(12)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //shoe images
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(shoe.imagePath,
              height: 277.2,),
            ),

            //description
           Padding(
             padding: const EdgeInsets.only(top : 4.0),
             child: Text(
                  shoe.description,
                  style: TextStyle(color: Colors.grey[700]),
                ),
           ),
            //price+details
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //shoe name
                        const SizedBox(height: 12,),
                        Text(
                          shoe.name,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        //price
                        Text(
                          "\$" + shoe.price,
                          style: const TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ]),

                  //plus button
                  Container(
                    height: 60,
                    width: 50,
                    padding: const EdgeInsets.only(),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12),
                          bottomRight: Radius.circular(12)),
                      color: Colors.black,
                    ),
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
