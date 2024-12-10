import 'package:complete_e_commerce_app/Presentation/Componanats/Colors.dart';
import 'package:complete_e_commerce_app/Presentation/Componanats/Defaultbuttom.dart';
import 'package:complete_e_commerce_app/Presentation/Componanats/TextFormField.dart';
import 'package:complete_e_commerce_app/Presentation/SplashScreens/HomePage.dart';
import 'package:complete_e_commerce_app/Presentation/SplashScreens/Splash5.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();
  TextEditingController phone = new TextEditingController();
  GlobalKey<FormState> _formkey = new GlobalKey<FormState>();
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        child: Stack(
          children: [
            Image.asset(
                'assets/portrait-female-person-supermarket-holding-fruit-smiling 1.png'),
            Positioned(
                top: 68,
                left: 40,
                child: IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Splash5()));
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
              top: 430,
              child: Container(
                height: 466,
                width: 414,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: backgraund2,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 8),
                      Text(
                        "Create account",
                        style: TextStyle(
                            fontSize: 20,
                            color: text2,
                            fontWeight: FontWeight.w800),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        textAlign: TextAlign.center,
                        "Quickly create account ",
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
                        hinttext: "phone number",
                        prefixicon: Icons.phone,
                        keyboardType: TextInputType.phone,
                        mycontroller: phone,
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "Can`t be Empty";
                          }
                        },
                      ),
                      const SizedBox(height: 8),
                      CustomTextform(
                        hinttext: 'Password',
                        ispassword: true,
                        prefixicon: Icons.lock_outline,
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "Can`t be Empty";
                          }
                        },
                        mycontroller: password,
                      ),
                      const SizedBox(height: 20),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Homepage()));
                        },
                        child: defaultbuttom(
                          textColor: Colors.white,
                          text: "Signup",
                          ontap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Homepage()));
                          },
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Already have an account ?",
                              style: TextStyle(color: text1, fontSize: 18)),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              "Login",
                              style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
