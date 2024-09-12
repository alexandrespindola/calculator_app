import 'package:calculator_app/components/buttons.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Calculator App',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue[900],
        ),
        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            color: Colors.blue[200],
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: ConstrainedBox(
                  constraints: const BoxConstraints(
                    maxWidth: 400,
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blue[100],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                '0',
                                style: TextStyle(
                                  fontSize: 100,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CalcButton(
                                text: 'AC',
                                onPressed: () {
                                  print('AC');
                                },
                                color: Colors.white,
                              ),
                              CalcButton(
                                text: 'Back',
                                onPressed: () {
                                  print('Back');
                                },
                                color: Colors.orange,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CalcButton(
                                text: '7',
                                onPressed: () {
                                  print('7');
                                },
                                color: Colors.white,
                              ),
                              CalcButton(
                                text: '8',
                                onPressed: () {
                                  print('8');
                                },
                                color: Colors.white,
                              ),
                              CalcButton(
                                text: '9',
                                onPressed: () {
                                  print('9');
                                },
                                color: Colors.white,
                              ),
                              CalcButton(
                                text: '/',
                                onPressed: () {
                                  print('/');
                                },
                                color: Colors.orange,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CalcButton(
                                text: '4',
                                onPressed: () {
                                  print('4');
                                },
                                color: Colors.white,
                              ),
                              CalcButton(
                                text: '5',
                                onPressed: () {
                                  print('5');
                                },
                                color: Colors.white,
                              ),
                              CalcButton(
                                text: '6',
                                onPressed: () {
                                  print('6');
                                },
                                color: Colors.white,
                              ),
                              CalcButton(
                                text: 'X',
                                onPressed: () {
                                  print('X');
                                },
                                color: Colors.orange,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CalcButton(
                                text: '1',
                                onPressed: () {
                                  print('1');
                                },
                                color: Colors.white,
                              ),
                              CalcButton(
                                text: '2',
                                onPressed: () {
                                  print('2');
                                },
                                color: Colors.white,
                              ),
                              CalcButton(
                                text: '3',
                                onPressed: () {
                                  print('3');
                                },
                                color: Colors.white,
                              ),
                              CalcButton(
                                text: '-',
                                onPressed: () {
                                  print('-');
                                },
                                color: Colors.orange,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CalcButton(
                                text: '0',
                                onPressed: () {
                                  print('0');
                                },
                                color: Colors.white,
                              ),
                              CalcButton(
                                text: ',',
                                onPressed: () {
                                  print(',');
                                },
                                color: Colors.white,
                              ),
                              CalcButton(
                                text: '=',
                                onPressed: () {
                                  print('=');
                                },
                                color: Colors.orange,
                              ),
                              CalcButton(
                                text: '+',
                                onPressed: () {
                                  print('+');
                                },
                                color: Colors.orange,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}