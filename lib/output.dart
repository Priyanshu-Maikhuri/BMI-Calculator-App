//import 'package:flutter/foundation.dart';
import 'dart:ui';

import 'package:flutter/material.dart';

class Output extends StatefulWidget {
  final TextEditingController h,w;
  Output(this.h,this.w);

  @override
  State<Output> createState() => _OutputState();
}

class _OutputState extends State<Output> {
 //final TextEditingController w, h;
 //OutputState(this.h, this.w); - no need cuz swe can directlyuse them
 static double value=0;

 String _category(){
    if(value<=18.5)
      return 'Underweight';
    else if(value>18.5 && value<=24.9)
      return 'Normal Weight';
    else if(value>24.9 && value<=29.9)
      return 'Overweight';
    else return 'Obesed';
  }

  void bmi(double height, double weight){
    height = height/100;
    height = height*height;
    setState(() {  
    value = weight/height;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.centerRight,
          margin: EdgeInsets.only(right: 20.0, bottom: 38.0),
          child: ElevatedButton(
            onPressed: () => bmi(double.parse(widget.h.text),double.parse(widget.w.text)),
            child: Text('Compute BMI',
              style: TextStyle(fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            )
          ),
        ),
        Container(
          child: (value==0.0)? Text('\nCheck your BMI...')
            :Column(
              children: [
                Card(
                  elevation: 25,
                  margin: EdgeInsets.only(bottom: 18.0),
                  child: Text('${_category()}', 
                    style: TextStyle(
                      fontSize: 50,
                      color: Colors.redAccent,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      decoration: TextDecoration.underline,
                    ),
                  )
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Your BMI: ',
                      style: TextStyle(fontWeight:FontWeight.bold, fontSize: 20,),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 4.0, bottom: 5.0),
                      child: Text('${value.toStringAsFixed(2)}',
                        style: TextStyle(fontSize: 18,),
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(width: 2, 
                          color: Colors.black,),
                      ),
                      padding: EdgeInsets.all(2.0),
                    ),
                  ],
                ),
              ],
            ),
        ),
      ],
    );
  }
}

