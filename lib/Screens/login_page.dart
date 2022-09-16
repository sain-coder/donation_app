import 'package:donation/Routes/Routes_Names.dart';
import 'package:donation/Screens/sign_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/button.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(color: Color(0xff154c79)),
          child: Column(
            children: [
              const SizedBox(
                height: 80,
              ),
              Container(
                width: double.infinity,

                //height: 100,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Center(
                          child: Image.asset(
                            "assets/images/welcome.png",
                            height: 190,
                            width: 250,
                          ),
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 20, bottom: 10),
                      child: Text(
                        "Getting Started",
                        style: TextStyle(
                            fontSize: 20,
                            color: Color(0xff154c79),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 20, bottom: 10),
                      child: Text(
                        "Lets login for explore continues",
                        style: TextStyle(color: Colors.grey, fontSize: 18),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Email:',
                              style: TextStyle(
                                  color: Color(0xff154c79),
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold)),
                          const SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              prefixIcon: const Icon(
                                Icons.email,
                                color: Colors.grey,
                              ),
                              hintText: "Enter your email",
                              hintStyle: const TextStyle(color: Colors.grey),
                              //labelText: "Email",
                              // border: OutlineInputBorder(
                              //   borderRadius: BorderRadius.circular(10),
                              //   borderSide: BorderSide(color: Color(0xff154c33)),
                              // ),

                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide:
                                    const BorderSide(color: Color(0xff154c79)),
                              ),

                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide:
                                    const BorderSide(color: Color(0xff000000)),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text('Password:',
                              style: TextStyle(
                                  color: Color(0xff154c79),
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold)),
                          const SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(
                              prefixIcon: const Icon(
                                Icons.lock,
                                color: Colors.grey,
                              ),
                              hintText: "Enter your Password",
                              hintStyle: const TextStyle(color: Colors.grey),
                              //labelText: "Email",
                              // border: OutlineInputBorder(
                              //   borderRadius: BorderRadius.circular(10),
                              //   borderSide: BorderSide(color: Color(0xff154c79)),
                              // ),

                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide:
                                    const BorderSide(color: Color(0xff154c79)),
                              ),

                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide:
                                    const BorderSide(color: Color(0xff000000)),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: const [
                              Text('Forget your Password?',
                                  textAlign: TextAlign.end,
                                  style: TextStyle(
                                      color: Colors.deepOrangeAccent,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                          Column(
                            children: [
                              GestureDetector(
                                child: const MyButton(
                                  title: 'login',
                                ),
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, RoutesName.homeScreen);
                                },
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text('Don\'t have an account?',
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold)),
                                  const SizedBox(
                                    width: 8.0,
                                  ),
                                  GestureDetector(
                                    child: const Text('Sign Up here',
                                        textAlign: TextAlign.end,
                                        style: TextStyle(
                                            color: Colors.deepOrangeAccent,
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold)),
                                    onTap: () {
                                      Navigator.pushNamed(
                                          context, RoutesName.signPage);
                                    },
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 70,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
