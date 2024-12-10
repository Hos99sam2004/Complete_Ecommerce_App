import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          iconSize: 40,
          selectedItemColor: Colors.amberAccent,
          items: [
            const BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "*",
            ),
            const BottomNavigationBarItem(
                icon: Icon(Icons.person_2_outlined), label: "**"),
            const BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart_outlined), label: "***"),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView(
            children: [
              Row(
                children: [
                  Expanded(
                      child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.search,
                        size: 35,
                      ),
                      fillColor: Colors.grey[300],
                      filled: true,
                      enabled: true,
                      hintText: "Search",
                      hintStyle:
                          const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  )),
                  Container(
                      padding: const EdgeInsets.only(left: 10),
                      child: const Icon(
                        Icons.menu,
                        size: 40,
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
