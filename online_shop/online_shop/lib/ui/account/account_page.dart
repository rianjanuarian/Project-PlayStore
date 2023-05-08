import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:online_shop/ui/login_register/login_page.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("Account Page"),
      ),
      body: Column(children: [
        StreamBuilder<User?>(
            stream: FirebaseAuth.instance.userChanges(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Column(
                  children: [
                    Text(FirebaseAuth.instance.currentUser!.uid.toString()),
                    Text(FirebaseAuth.instance.currentUser!.displayName
                        .toString()),
                    Text(FirebaseAuth.instance.currentUser!.email.toString()),
                    Image.network(FirebaseAuth.instance.currentUser!.photoURL!),
                  ],
                );
              }
              return const Text("No User");
            }),
        ElevatedButton(
            onPressed: () {
              if (FirebaseAuth.instance.currentUser != null) {
                GoogleSignIn().signOut();
                FirebaseAuth.instance.signOut();
                Get.off(const LoginPage());
              } else {
                Get.off(const LoginPage());
              }
            },
            child: StreamBuilder<User?>(
                stream: FirebaseAuth.instance.userChanges(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return const Text("Log Out");
                  } else {
                    return const Text("Login");
                  }
                }))
      ]),
    );
  }
}
