import 'package:complete_e_commerce_app/Presentation/Auth/Login/Cubit/login_cubit.dart';
import 'package:complete_e_commerce_app/Presentation/Auth/Sign_up/Cubit/sign_cubit.dart';
import 'package:complete_e_commerce_app/Presentation/Home_page/Cubit/home_cubit.dart';
// import 'package:complete_e_commerce_app/Presentation/Helper/Hive_Helpers.dart';
import 'package:complete_e_commerce_app/Presentation/SplashScreens/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:hive_flutter/adapters.dart';
 // import 'package:hive_flutter/hive_flutter.dart';
 // import 'package:hive/hive.dart';
void main() async{
   // await Hive.initFlutter();
   // await Hive.openBox(HiveHelper.TOKEN);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<LoginCubit>(
          create: (context)=>LoginCubit(),
        ),
        BlocProvider<SignCubit>(
          create: (context)=>SignCubit(),
        ),BlocProvider<HomeCubit>(
          create: (context)=>HomeCubit()..getbanner()..getCatagorieList()..getProducts()..otherProducts()
        ),
      ],
      child: const GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: Homepage(),
      )
    );
  }
}

/// nasrHossam@gmail.com
/// 992004
/// Hossamnasr@gmail.com
///200499
///