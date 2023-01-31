import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:weather_test/weather.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: ElevatedButton(
              onPressed: () {
                Weather? weather;
                // var url =
                //     'https://api.openweathermap.org/data/2.5/forecast?lat=-6.200000&lon=106.816666&exclude=daily&units=metric&appid=49e5853edeb3e252fcd4177d15aca5ad';

                // var apiResult = await http.get(Uri.parse(url));
                // var jsonObject = jsonDecode(apiResult.body);
                // var userData = (jsonObject as Map<String, dynamic>)['list'];

                // print(userData);

                print(weather!.dt);
              },
              child: Text("data")),
        ),
      ),
    );
  }
}
