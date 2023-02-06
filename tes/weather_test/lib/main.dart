import 'package:flutter/material.dart';

import 'package:weather_test/weather.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Center(
            child: ElevatedButton(
                onPressed: () async {
                  print(apiConnect());
                },
                child: Text("data")),
          ),
        ),
      ),
    );
  }
}
