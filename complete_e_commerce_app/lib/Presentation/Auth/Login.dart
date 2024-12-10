import 'package:complete_e_commerce_app/Presentation/Auth/Auth_Welcome.dart';
import 'package:complete_e_commerce_app/Presentation/Auth/Sign_up.dart';
import 'package:complete_e_commerce_app/Presentation/Auth/Test.dart';
import 'package:complete_e_commerce_app/Presentation/Componanats/Colors.dart';
import 'package:complete_e_commerce_app/Presentation/Componanats/Defaultbuttom.dart';
import 'package:complete_e_commerce_app/Presentation/Componanats/TextFormField.dart';
import 'package:complete_e_commerce_app/Presentation/SplashScreens/HomePage.dart';
import 'package:complete_e_commerce_app/Presentation/SplashScreens/Splash5.dart';
import 'package:complete_e_commerce_app/Presentation/page/Home.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();
  GlobalKey<FormState> _formkey = new GlobalKey<FormState>();
  bool val = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        child: Stack(
          children: [
            Image.asset(
                'assets/woman-with-shopping-list-standing-by-fridge-supermarket-checking-cart 1.png'),
            Positioned(
                top: 68,
                left: 40,
                child: IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AuthWelcome()));
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 30,
                    ))),
            const Positioned(
                top: 63,
                left: 163,
                child: Text(
                  "Welcome",
                  style: TextStyle(fontSize: 25, color: Colors.white),
                )),
            Positioned(
              top: 446,
              child: Container(
                height: 453,
                width: 414,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: backgraund2,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Form(
                      key: _formkey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Welcome Back !",
                            style: TextStyle(
                                fontSize: 20,
                                color: text2,
                                fontWeight: FontWeight.w800),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            textAlign: TextAlign.center,
                            " Sign in to your account ",
                            style: TextStyle(fontSize: 18, color: text1),
                          ),
                          const SizedBox(height: 20),
                          CustomTextform(
                            hinttext: 'Email address',
                            prefixicon: Icons.email_rounded,
                            mycontroller: email,
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "Can`t be Empty";
                              }
                            },
                            ispassword: false,
                          ),
                          const SizedBox(height: 8),
                          CustomTextform(
                            hinttext: 'Password',
                            ispassword: true,
                            obscuretext: true,
                            prefixicon: Icons.lock_outline,
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "Can`t be Empty";
                              }
                            },
                            mycontroller: password,
                          ),
                          const SizedBox(height: 15),
                          Row(
                            children: [
                              Switch(
                                activeColor: Colors.green,
                                value: val,
                                onChanged: (value) {
                                  setState(() {
                                    val = value;
                                  });
                                },
                              ),
                              Text(
                                " Remember Me",
                                style: TextStyle(color: text1, fontSize: 15),
                              ),
                              Spacer(),
                              TextButton(
                                  onPressed: () {},
                                  child: const Text("Forgot Password",
                                      style: TextStyle(
                                        color: Colors
                                            .blue, // You can customize the color
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                      ))),
                            ],
                          ),
                          const SizedBox(height: 10),
                          defaultbuttom(
                            text: "Login",
                            textColor: Colors.white,
                            ontap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const HomeScreen()));
                            },
                          ),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(" Didn`t have an account ? ",
                                  style: TextStyle(color: text1, fontSize: 18)),
                              TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => const Test()));
                                },
                                child: const Text(
                                  "Sign Up",
                                  style: TextStyle(
                                    color: Colors
                                        .blue, // You can customize the color
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
