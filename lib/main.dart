import 'package:flutter/material.dart';

import 'widgets/calculator.dart';
import 'package:math_expressions/math_expressions.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _history = "";
  String _expression = "";

  void numClick(String txt) {
    setState(() {
      _expression += txt;
    });
  }

  void allClear(String txt) {
    setState(() {
      _history = "";
      _expression = "";
      print("_expression");
    });
  }

  void clearing(String txt) {
    setState(() {
      if (_expression != "" && _expression.length > 0) {
        _expression = _expression.substring(0, _expression.length - 1);
      }
    });
    print("_expression");
  }

  void evaluate(String txt) {
    Parser p = Parser();
    Expression exp = p.parse(_expression);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);

    setState(() {
      _history = _expression;
      _expression = eval.toString();
    });
  }

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
                  Container(
                    width: 500,
                    height: 120,
                    margin: EdgeInsets.only(bottom: 30),
                    alignment: Alignment.bottomRight,
                    padding: EdgeInsets.all(20),

                    // color: Colors.black12,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white10),
                        color: Colors.black12,
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            _history,
                            style: TextStyle(
                              color: Colors.white30,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Container(
                          width: 700,
                          alignment: Alignment.bottomRight,
                          child: Text(
                            _expression,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Calculator(
                        text: 'C',
                        fillColor: 0xFF5C2A2A,
                        textColor: 0xFFFFFCFC,
                        callBack: clearing,
                      ),
                      // Calculator(
                      //   text: 'AC',
                      //   fillColor: 0xFF5C2A2A,
                      //   textColor: 0xFFFFFCFC,
                      //   callBack: allClear,

                      // ),

                      Calculator(
                        text: 'AC',
                        fillColor: 0xFF5C2A2A,
                        textColor: 0xFFFFFCFC,
                        callBack: allClear,
                      ),
                      Calculator(
                        text: '%',
                        callBack: numClick,
                        fillColor: 0xFF464481,
                        textColor: 0xFFFFFCFC,
                      ),
                      Calculator(
                        callBack: numClick,
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
                        callBack: numClick,
                        text: '7',
                        fillColor: 0xFF,
                        textColor: 0xFFFFFCFC,
                      ),
                      Calculator(
                        callBack: numClick,
                        text: '8',
                        fillColor: 0xFF,
                        textColor: 0xFFFFFCFC,
                      ),
                      Calculator(
                        callBack: numClick,
                        text: '9',
                        fillColor: 0xFF,
                        textColor: 0xFFFFFCFC,
                      ),
                      Calculator(
                        callBack: numClick,
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
                        callBack: numClick,
                        fillColor: 0xFF,
                        textColor: 0xFFFFFCFC,
                      ),
                      Calculator(
                        text: '5',
                        fillColor: 0xFF,
                        callBack: numClick,
                        textColor: 0xFFFFFCFC,
                      ),
                      Calculator(
                        text: '6',
                        fillColor: 0xFF,
                        callBack: numClick,
                        textColor: 0xFFFFFCFC,
                      ),
                      Calculator(
                        callBack: numClick,
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
                        callBack: numClick,
                        fillColor: 0xFF,
                        textColor: 0xFFFFFCFC,
                      ),
                      Calculator(
                        text: '2',
                        callBack: numClick,
                        fillColor: 0xFF,
                        textColor: 0xFFFFFCFC,
                      ),
                      Calculator(
                        callBack: numClick,
                        text: '3',
                        fillColor: 0xFF,
                        textColor: 0xFFFFFCFC,
                      ),
                      Calculator(
                        text: '+',
                        callBack: numClick,
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
                        callBack: numClick,
                        fillColor: 0xFF,
                        textColor: 0xFFFFFCFC,
                      ),
                      Calculator(
                        text: '0',
                        callBack: numClick,
                        fillColor: 0xFF,
                        textColor: 0xFFFFFCFC,
                      ),
                      Calculator(
                        text: '00',
                        callBack: numClick,
                        fillColor: 0xFF,
                        textColor: 0xFFFFFCFC,
                      ),
                      Calculator(
                        text: '=',
                        textSize: 40,
                        callBack: evaluate,
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
