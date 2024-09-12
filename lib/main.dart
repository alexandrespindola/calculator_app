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
  String result = '0';

  void calculate(String key) {
    setState(() {
      switch (key) {
        case 'AC':
          result = '0';
          break;
        case 'Back':
          if (result.length >= 2) {
            result = result.substring(0, result.length - 1);
          }
          break;
        default:
          if ('0123456789+-/x,'.contains(key)) {
            result += key;
          }
      }
    });
  }

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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                result,
                                style: const TextStyle(
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
                                  calculate('AC');
                                },
                                color: Colors.white,
                              ),
                              CalcButton(
                                text: 'Back',
                                onPressed: () {
                                  print('Back');
                                  calculate('Back');
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
                                  calculate('7');
                                },
                                color: Colors.white,
                              ),
                              CalcButton(
                                text: '8',
                                onPressed: () {
                                  print('8');
                                  calculate('8');
                                },
                                color: Colors.white,
                              ),
                              CalcButton(
                                text: '9',
                                onPressed: () {
                                  print('9');
                                  calculate('9');
                                },
                                color: Colors.white,
                              ),
                              CalcButton(
                                text: '/',
                                onPressed: () {
                                  print('/');
                                  calculate('/');
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
                                  calculate('4');
                                },
                                color: Colors.white,
                              ),
                              CalcButton(
                                text: '5',
                                onPressed: () {
                                  print('5');
                                  calculate('5');
                                },
                                color: Colors.white,
                              ),
                              CalcButton(
                                text: '6',
                                onPressed: () {
                                  print('6');
                                  calculate('6');
                                },
                                color: Colors.white,
                              ),
                              CalcButton(
                                text: 'X',
                                onPressed: () {
                                  print('x');
                                  calculate('x');
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
                                  calculate('1');
                                },
                                color: Colors.white,
                              ),
                              CalcButton(
                                text: '2',
                                onPressed: () {
                                  print('2');
                                  calculate('2');
                                },
                                color: Colors.white,
                              ),
                              CalcButton(
                                text: '3',
                                onPressed: () {
                                  print('3');
                                  calculate('3');
                                },
                                color: Colors.white,
                              ),
                              CalcButton(
                                text: '-',
                                onPressed: () {
                                  print('-');
                                  calculate('-');
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
                                  calculate('0');
                                },
                                color: Colors.white,
                              ),
                              CalcButton(
                                text: ',',
                                onPressed: () {
                                  print(',');
                                  calculate(',');
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
                                  calculate('+');
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
