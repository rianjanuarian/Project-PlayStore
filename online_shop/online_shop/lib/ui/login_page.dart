import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:online_shop/ui/register_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Container(
          //   margin: EdgeInsets.all(80),
          //   decoration: BoxDecoration(
          //       color: Colors.red[300],
          //       borderRadius: BorderRadius.circular(10)),
          //   child: Container(
          //     margin: EdgeInsets.all(50),
          //     decoration: BoxDecoration(
          //         color: Colors.white, borderRadius: BorderRadius.circular(10)),
          //   ),
          // ),

          // Padding(
          //   padding: const EdgeInsets.all(50.10),
          //   child: Align(
          //     alignment: Alignment.topRight,
          //     child: SizedBox(
          //       width: 100,
          //       height: 100,
          //       child: Stack(
          //         children: [
          //           SizedBox(
          //             width: 90,
          //             height: 90,
          //             child: Container(
          //               decoration: BoxDecoration(
          //                   color: Colors.amber,
          //                   borderRadius: BorderRadius.circular(10)),
          //             ),
          //           ),
          //           SizedBox(
          //             width: 80,
          //             height: 80,
          //             child: Container(
          //               margin: EdgeInsets.all(10),
          //               decoration: BoxDecoration(color: Colors.red),
          //             ),
          //           ),
          //         ],
          //       ),
          //     ),
          //   ),
          // ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.only(right: 250),
                  child: Text(
                    "LOGIN",
                    style: GoogleFonts.rowdies(fontSize: 30),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(right: 185),
                  child: const Text("Please sign in to continue"),
                ),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  width: 350,
                  child: Container(
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          blurRadius: 7,
                          spreadRadius: 5,
                          offset: const Offset(6, 7))
                    ]),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: TextFormField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.amber),
                              borderRadius: BorderRadius.circular(10)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.amber),
                              borderRadius: BorderRadius.circular(10)),
                          prefixIcon: const Icon(
                            Icons.mail,
                            color: Colors.black,
                          ),
                          prefixStyle: const TextStyle(color: Colors.amber),
                          labelText: "Email",
                          floatingLabelStyle:
                              const TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  width: 350,
                  child: Container(
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          blurRadius: 7,
                          spreadRadius: 5,
                          offset: const Offset(6, 7))
                    ]),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: TextFormField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.amber),
                              borderRadius: BorderRadius.circular(10)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.amber),
                              borderRadius: BorderRadius.circular(10)),
                          prefixIcon: const Icon(
                            Icons.lock,
                            color: Colors.black,
                          ),
                          prefixStyle: const TextStyle(color: Colors.amber),
                          labelText: "Password",
                          floatingLabelStyle:
                              const TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 230),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.amber.withOpacity(0.5),
                              blurRadius: 5,
                              spreadRadius: 2,
                              offset: const Offset(1, 2))
                        ]),
                    child: SizedBox(
                        width: 120,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: const StadiumBorder(),
                              backgroundColor: Colors.amber),
                          onPressed: () {},
                          child: const Text("LOGIN"),
                        )),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.75),
            child: Padding(
              padding: const EdgeInsets.only(left: 60, right: 60),
              child: MaterialButton(
                color: Colors.white70,
                shape: StadiumBorder(),
                onPressed: () {},
                elevation: 10,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 30.0,
                      width: 30.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/google_logo.png'),
                            fit: BoxFit.cover),
                        shape: BoxShape.circle,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text("Sign In with Google")
                  ],
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(bottom: 15),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account?"),
                  InkWell(
                    child: Text(
                      " Sign Up",
                      style: TextStyle(color: Colors.amber[800]),
                    ),
                    onTap: () {
                      Get.to(() => const RegisterPage());
                    },
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
