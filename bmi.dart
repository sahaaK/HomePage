import 'package:bmi/pages/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Bmi extends StatelessWidget {
  const Bmi(this._currentValue, this.weight); // Change the type here

  final double _currentValue;
  final int Function() weight;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF08091B),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 50,
        centerTitle: true,
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Body Mass Index',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          Gap(20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SizedBox(
              child: Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 27),
                      child: Text(
                        'BMI RESULTS',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Gap(20),
                    Text(
                      '${_currentValue / weight()}',
                      style: TextStyle(
                          fontSize: 140,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'NORMAL BMI',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.green,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                height: 250,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color(0xFF17182C),
                    borderRadius: BorderRadius.circular(12)),
              ),
            ),
          ),
          Gap(30),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    minimumSize: Size(280, 60),
                    backgroundColor: Colors.deepPurpleAccent),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
                child: Text(
                  ' Take Another One',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                )),
          ),
        ],
      ),
    );
  }
}
