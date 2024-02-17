import 'package:flutter/material.dart';

class BmiCalc extends StatefulWidget {
  const BmiCalc({Key? key}) : super(key: key);

  @override
  State<BmiCalc> createState() => _BmiCalcState();
}

class _BmiCalcState extends State<BmiCalc> {
  TextEditingController height=TextEditingController();
  TextEditingController weight=TextEditingController();
  double h_value=0;
  double w_value=0;
  double result=0;
  void calculate(){
    h_value=double.parse(height.text)/100;
    w_value=double.parse(weight.text);
    result=w_value/(h_value*h_value);
    print(result);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI-CALCULATOR',
          style: TextStyle(fontSize: 50, color: Colors.black),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.cyan,
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        TextField(
          controller: weight,
          decoration: InputDecoration(
            hintStyle: TextStyle(color: Colors.black87),
            hintText: "Enter your weight (Kg)",


            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(40)),
          ),
        ),
        SizedBox(
          height: 20,
          width: 10,
        ),
        TextField(
          controller: height,
          decoration: InputDecoration(
            hintStyle: TextStyle(color: Colors.black87),
            hintText: "Enter your height (Cm)",
            labelText: 'height',
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(

                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(20)),
          ),
        ),
        TextButton(
            onPressed: () {
              setState(() {
                calculate();
              });
            },
            child: Text(
              'calculate',
              style: TextStyle(color: Colors.red),
            )),
        Text(result.toString()),
      ]),
    );
  }
}
