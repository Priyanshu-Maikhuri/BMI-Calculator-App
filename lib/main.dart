import 'package:flutter/material.dart';
import 'inputFields.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('BMI Calculator',
            style: TextStyle(
              fontSize: 30, 
              fontWeight: FontWeight.bold,
            )
          ),
        ),
        body: SingleChildScrollView
        (child: InputFields()),
          //Output(double.parse(InputFields().height.text), double.parse(InputFields().weight.text)),
      ),
    );
  }
}
