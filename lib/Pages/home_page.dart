import 'package:flutter/material.dart';
import 'package:sneakers_app/pages/settings_page.dart';
import 'package:sneakers_app/pages/shop_page.dart';
import 'package:sneakers_app/components/bottom_nav_bar.dart';

import 'cart_page.dart';
import 'order_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
//the selected index is to control the bottom nav bar

  int _selectedIndex = 0;
//this method will update our selected index
//when the users tap on the bottom nav bar

  void navigatebottombar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

//pages to display

  final List<Widget> _pages = [

//shop page
     ShopPage(),
//cart page
    const CartPage(),
//orders page
    const OrderPage(),
//settings page
    const SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Builder(
            builder: (context) => IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Icon(
                  Icons.menu,
                  color: Colors.black,
                ),
              ),
            ),
          )),
      drawer: Drawer(
        backgroundColor: Colors.black54,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(children: [
              //logo
              DrawerHeader(
                child: Image.asset(
                  "assets/shoes/logo.png",
                  color: Colors.white,
                  height: 70,
                  width: 70,
                ),
              ),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: Divider(
                    thickness: 0.2,
                    color: Colors.grey,
                  )),
              //other pages
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: ListTile(
                  leading: Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Home",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.white60),
                  ),
                  onTap: () {},
                ),
              ),
              const SizedBox(
                height: 7,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: ListTile(
                  leading: Icon(
                    Icons.info,
                    color: Colors.white,
                  ),
                  title: Text(
                    "About Us",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.white60),
                  ),
                  onTap: () {},
                ),
              )
            ]),
            const SizedBox(
              height: 7,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, bottom: 10),
              child: ListTile(
                leading: Icon(
                  Icons.logout,
                  color: Colors.white,
                ),
                title: Text(
                  " Log Out",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white60),
                ),
                onTap: () {},
              ),
            ),
          ],
        ),
      ),
      //bottom nav bar
      backgroundColor: Colors.grey[50],
      bottomNavigationBar: BottomNavBar(
        onTabChange: (index) => navigatebottombar(index),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
