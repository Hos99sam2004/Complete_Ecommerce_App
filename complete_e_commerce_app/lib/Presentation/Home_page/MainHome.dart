import 'package:complete_e_commerce_app/Presentation/Home_page/Cubit/home_cubit.dart';
import 'package:complete_e_commerce_app/Presentation/Home_page/Products/All_Products.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import '../Componanats/Colors.dart';

class Mainhome extends StatefulWidget {
  const Mainhome({super.key});

  @override
  State<Mainhome> createState() => _MainhomeState();
}

class _MainhomeState extends State<Mainhome> {
  @override
  Widget build(BuildContext context) {
    final cubit = context.read<HomeCubit>();
    return BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          return Scaffold(
            floatingActionButton: FloatingActionButton(onPressed: (){
              Get.to(()=>AllProducts());
            },
              backgroundColor: primarydark,
            child: Icon(Icons.shopping_cart_outlined, color: primarylight,size: 33,
            ),
            ),
            bottomNavigationBar: CurvedNavigationBar(
              backgroundColor: text1,
              buttonBackgroundColor: primarydark,
              items: [
                Icon(Icons.home_outlined, color: text2,size: 30,),
                Icon(Icons.person_2_outlined, color: text2,size: 30,),
                Icon(Icons.favorite_outline, color: text2,size: 30,),
              ],
              onTap: (index) {

                cubit.changeScreen(index);
              },
            ),
            body: cubit.screans[cubit.currentIndex],
          );
        }
    );
  }
}