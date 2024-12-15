// import 'package:complete_e_commerce_app/Presentation/Auth/Login/Login.dart';
import 'package:complete_e_commerce_app/Presentation/Componanats/Colors.dart';
import 'package:complete_e_commerce_app/Presentation/page/Search_Function/SearchFunction.dart';
import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get/get_connect/sockets/src/socket_notifier.dart';
// import 'package:get/get_core/src/get_main.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   title: const Text(
        //     "Home",
        //     style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        //   ),
        //   actions: [
        //     IconButton(
        //       icon: const Icon(Icons.notifications),
        //       onPressed: () {
        //         // Handle notifications click
        //         // Get.to.(()=>Login());
        //         Get.to(()=> const Login()) ;// Navigate back to login screen
        //       },
        //     ),
        //   ],
        // ),

        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView(
            children: [
              InkWell(
                onTap: () {
                  showSearch(context: context, delegate: Searchfunction());
                },
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                    color: backgraund2,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(15),
                    child: Row(
                      children: [
                        const Icon(Icons.search,
                            size: 30, color: Color(0xFF868889)),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Search",
                          style: TextStyle(fontSize: 23, color: text1),
                        ),
                        Spacer(),
                        Container(
                            padding: const EdgeInsets.only(left: 10),
                            child: const Icon(Icons.menu,
                                size: 40, color: Color(0xFF868889))),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Container(
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [primary, primarydark],
                    ),
                    color: backgraund1,
                  ),
                  child: Image.asset("assets/test.png",fit: BoxFit.fill,),
                ),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Text(
                    "Categories",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Container(
                    padding: const EdgeInsets.only(right: 10),
                    child: const Icon(Icons.arrow_forward_ios,
                        size: 20, color: Color(0xFF868889)),
                  ),
                ],
              ),
              Container(
                height: 70,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: backgraund2,
                ),
                child: ListView.builder( physics: BouncingScrollPhysics(),scrollDirection: Axis.horizontal,itemCount: 15,itemBuilder:(context, index) {
                  return Column(
                    children: [
                      Container(margin:  EdgeInsets.all(10), height: 20,width: 50,child: Icon(Icons.ac_unit),),
                      Text("data: $index"),
                    ],
                  );
                }, ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


