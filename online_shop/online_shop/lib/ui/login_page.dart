import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.only(right: 250),
                  child: Text(
                    "LOGIN",
                    style: GoogleFonts.rowdies(fontSize: 30),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(right: 185),
                  child: Text("Please sign in to continue"),
                ),
                SizedBox(
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
                          offset: Offset(6, 7))
                    ]),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: TextFormField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.amber),
                              borderRadius: BorderRadius.circular(10)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.amber),
                              borderRadius: BorderRadius.circular(10)),
                          prefixIcon: Icon(
                            Icons.mail,
                            color: Colors.black,
                          ),
                          prefixStyle: TextStyle(color: Colors.amber),
                          labelText: "Email",
                          floatingLabelStyle: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
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
                          offset: Offset(6, 7))
                    ]),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: TextFormField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.amber),
                              borderRadius: BorderRadius.circular(10)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.amber),
                              borderRadius: BorderRadius.circular(10)),
                          prefixIcon: Icon(
                            Icons.lock,
                            color: Colors.black,
                          ),
                          prefixStyle: TextStyle(color: Colors.amber),
                          labelText: "Password",
                          floatingLabelStyle: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  padding: EdgeInsets.only(left: 230),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.amber.withOpacity(0.5),
                              blurRadius: 5,
                              spreadRadius: 2,
                              offset: Offset(1, 2))
                        ]),
                    child: SizedBox(
                        width: 120,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: StadiumBorder(),
                              backgroundColor: Colors.amber),
                          onPressed: () {},
                          child: Text("LOGIN"),
                        )),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 15),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?"),
                  InkWell(
                    child: Text(
                      " Sign Up",
                      style: TextStyle(color: Colors.amber[800]),
                    ),
                    onTap: () {},
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
