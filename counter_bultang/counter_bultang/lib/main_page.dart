import 'package:counter_bultang/bloc/counter2_bloc.dart';
import 'package:counter_bultang/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    CounterBloc bloc1 = BlocProvider.of<CounterBloc>(context);
    Counter2Bloc bloc2 = BlocProvider.of<Counter2Bloc>(context);

    return Scaffold(
      body: Row(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width / 2,
            child: Container(
              color: Colors.red,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "TIM MERAH",
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    BlocBuilder<CounterBloc, CounterState>(
                      builder: (context, state) {
                        return Text(
                          (state.value1!.isNegative)
                              ? "0"
                              : state.value1.toString(),
                          style: GoogleFonts.poppins(
                              textStyle:
                                  TextStyle(fontSize: 25, color: Colors.white)),
                        );
                      },
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 70,
                          child: ElevatedButton(
                              onPressed: () {
                                bloc1.add(Increment1());
                              },
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.black),
                              child: Text("+")),
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        SizedBox(
                          height: 70,
                          child: ElevatedButton(
                              onPressed: () {
                                bloc1.add(Decrement1());
                              },
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.black),
                              child: Text("-")),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width / 2,
            child: Container(
              color: Colors.blue,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "TIM BIRU",
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    BlocBuilder<Counter2Bloc, Counter2State>(
                      builder: (context, state) {
                        return Text(
                          (state.value2!.isNegative)
                              ? "0"
                              : state.value2.toString(),
                          style: GoogleFonts.poppins(
                              textStyle:
                                  TextStyle(fontSize: 25, color: Colors.white)),
                        );
                      },
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 70,
                          child: ElevatedButton(
                              onPressed: () {
                                bloc2.add(Increment2());
                              },
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.black),
                              child: Text("+")),
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        SizedBox(
                          height: 70,
                          child: ElevatedButton(
                              onPressed: () {
                                bloc2.add(Decrement2());
                              },
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.black),
                              child: Text("-")),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
