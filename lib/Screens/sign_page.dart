import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Routes/Routes_Names.dart';
import '../widgets/button.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(top: 25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Image.asset(
                    "assets/images/welcome.png",
                    height: 190,
                    width: 250,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20, bottom: 5),
                  child: Text(
                    "Getting Register",
                    style: TextStyle(
                        fontSize: 20,
                        color: Color(0xff154c79),
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20, bottom: 13),
                  child: Text(
                    "Lets Sign Up for explore continues",
                    style: TextStyle(color: Colors.grey, fontSize: 18),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 20, right: 20, bottom: 10),
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
                        height: 10,
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
                        height: 15.0,
                      ),
                      Column(
                        children: [
                          const MyButton(
                            title: 'Signup',
                          ),
                          const Text(
                            "Or Sign Up With",
                            style: TextStyle(color: Colors.grey),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Container(
                              height: 50,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                //color: Color(0xff154c79),
                                border: Border.all(
                                    color: const Color(0xff154c79), width: 1.5),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  //Icon(	FontAwesomeIcons.google,color: Color(0xff154c79),),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Sign in with Google",
                                    style: TextStyle(
                                        color: Color(0xff154c79), fontSize: 20),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20.0),
                            child: Container(
                              height: 50,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                //color: Color(0xff154c79),
                                border: Border.all(
                                    color: const Color(0xff154c79), width: 1.5),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  //Icon(	FontAwesomeIcons.apple,color: Color(0xff154c79),),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Sign in with Apple",
                                    style: TextStyle(
                                        color: Color(0xff154c79), fontSize: 20),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text('Already have account?',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold)),
                              const SizedBox(
                                width: 8.0,
                              ),
                              GestureDetector(
                                child: const Text('Login here',
                                    textAlign: TextAlign.end,
                                    style: TextStyle(
                                        color: Colors.deepOrangeAccent,
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold)),
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, RoutesName.loginPage);
                                },
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
