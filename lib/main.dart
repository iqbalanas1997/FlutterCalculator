import 'package:flutter/material.dart';

import 'widgets/calculator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Calculator',
        home: Scaffold(
            backgroundColor: Colors.grey[800],
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Calculator(
                        text: 'AC',
                        fillColor: 0xFF5C2A2A,
                        textColor: 0xFFFFFCFC,
                      ),
                      Calculator(
                        text: 'C',
                        fillColor: 0xFF5C2A2A,
                        textColor: 0xFFFFFCFC,
                      ),
                      Calculator(
                        text: '%',
                        fillColor: 0xFF464481,
                        textColor: 0xFFFFFCFC,
                      ),
                      Calculator(
                        text: '/',
                        fillColor: 0xFF464481,
                        textColor: 0xFFFFFCFC,
                      ),
                    ],
                  ),

                  //2nd row

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Calculator(
                        text: '7',
                        fillColor: 0xFF,
                        textColor: 0xFFFFFCFC,
                      ),
                      Calculator(
                        text: '8',
                        fillColor: 0xFF,
                        textColor: 0xFFFFFCFC,
                      ),
                      Calculator(
                        text: '9',
                        fillColor: 0xFF,
                        textColor: 0xFFFFFCFC,
                      ),
                      Calculator(
                        text: '*',
                        fillColor: 0xFF464481,
                        textColor: 0xFFFFFCFC,
                      ),
                    ],
                  ),

                  //3rd row

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Calculator(
                        text: '4',
                        fillColor: 0xFF,
                        textColor: 0xFFFFFCFC,
                      ),
                      Calculator(
                        text: '5',
                        fillColor: 0xFF,
                        textColor: 0xFFFFFCFC,
                      ),
                      Calculator(
                        text: '6',
                        fillColor: 0xFF,
                        textColor: 0xFFFFFCFC,
                      ),
                      Calculator(
                        text: '-',
                        fillColor: 0xFF464481,
                        textColor: 0xFFFFFCFC,
                      ),
                    ],
                  ),

                  //4th row

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Calculator(
                        text: '1',
                        fillColor: 0xFF,
                        textColor: 0xFFFFFCFC,
                      ),
                      Calculator(
                        text: '2',
                        fillColor: 0xFF,
                        textColor: 0xFFFFFCFC,
                      ),
                      Calculator(
                        text: '3',
                        fillColor: 0xFF,
                        textColor: 0xFFFFFCFC,
                      ),
                      Calculator(
                        text: '+',
                        fillColor: 0xFF464481,
                        textColor: 0xFFFFFCFC,
                      ),
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Calculator(
                        text: '.',
                        fillColor: 0xFF,
                        textColor: 0xFFFFFCFC,
                      ),
                      Calculator(
                        text: '0',
                        fillColor: 0xFF,
                        textColor: 0xFFFFFCFC,
                      ),
                      Calculator(
                        text: '00',
                        fillColor: 0xFF,
                        textColor: 0xFFFFFCFC,
                      ),
                      Calculator(
                        text: '=',
                        btnRadius: 10,
                        fillColor: 0xFFFFFFFF,
                        textColor: 0xFF252525,
                      ),
                    ],
                  ),
                ],
              ),
            )));
  }
}
