import 'package:flutter/material.dart';

import 'home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //logo
            Padding(
              padding: const EdgeInsets.all(53.0),
              child: Image.asset(
                "assets/shoes/logo.png",
                height: 240,
                scale: 20,
              ),
            ),
            SizedBox(
              height: 150,
            ),

            //title

            Text(
              "Just Explore Us!",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),

            //subtile

            SizedBox(
              height: 20,
            ),
            Text(
              "Way to new lifestyle with premium quality products",
              style: TextStyle(
                fontWeight: FontWeight.w300,
                color: Colors.grey,
                fontSize: 13,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            //start button
            Container(
              height: 45,
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((context) => const HomePage()),
                      ));
                },
                child: Text(
                  "Shop Now!",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
