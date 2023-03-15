import 'package:flutter/material.dart';
import './output.dart';

class InputFields extends StatelessWidget {
  final weight = TextEditingController();
  final height = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(top: 22.0),
          padding: EdgeInsets.only(bottom: 1.0),
          decoration: BoxDecoration(color: Colors.blueGrey,),
          constraints: BoxConstraints.expand(width: 308.0, height: 180.0),
          child: Image.asset(
            "assets/images/bmichart.jpg",
            fit: BoxFit.fill,
          )
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 25.0, horizontal: 27.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TextField(decoration: InputDecoration(labelText: 'Weight (in kg)'),
                controller: weight,),
              TextField(decoration: InputDecoration(labelText: 'Height (in cm)'),
                controller: height,),
            ],
          ),   
        ),
        Output(height, weight),
      ],
    );
  }
}