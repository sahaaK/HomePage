// import 'package:bmi/main.dart';
// import 'package:bmi/pages/bmi.dart';
// import 'package:bmi/pages/bmi.dart';
import 'package:bmi/pages/bmi.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double _currentValue = 0;
  int weight = 50;
  int age = 15;
  // _IconCounterState createState() => _IconCounterState();

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
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(padding: EdgeInsets.only(top: 7)),
                      Text(
                        'Age',
                        style: TextStyle(color: Colors.white, fontSize: 19),
                      ),
                      Gap(5),
                      Text('$age',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 50,
                              fontWeight: FontWeight.bold)),
                      // Gap(7),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                              icon: Icon(
                                Icons.remove,
                                color: Colors.white,
                                size: 20,
                              )),
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                              icon: Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 20,
                              )),
                        ],
                      )
                    ],
                  ),
                  height: 130,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Color(0xFF17182C),
                      borderRadius: BorderRadius.circular(12)),
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(padding: EdgeInsets.only(top: 15)),
                      Text(
                        'Weight (KG)',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      Gap(5),
                      Text('$weight',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 50,
                              fontWeight: FontWeight.bold)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                              icon: Icon(
                                Icons.remove,
                                size: 20,
                                color: Colors.white,
                              )),
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                              icon: Icon(
                                Icons.add,
                                size: 20,
                                color: Colors.white,
                              )),
                        ],
                      )
                    ],
                  ),
                  height: 130,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Color(0xFF17182C),
                      borderRadius: BorderRadius.circular(12)),
                ),
              ],
            ),
            Gap(25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Height (CM)',
                        style: TextStyle(color: Colors.white, fontSize: 15)),
                    Gap(12),
                    Text(_currentValue.toString(),
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 50,
                            fontWeight: FontWeight.bold)),
                    Slider(
                        value: _currentValue,
                        activeColor: Colors.deepPurpleAccent,
                        min: 0,
                        max: 200,
                        divisions: 10,
                        onChanged: (value) {
                          setState(() {
                            _currentValue = value;
                          });
                        })
                  ],
                ),
                height: 170,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color(0xFF17182C)),
              ),
            ),
            Gap(15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 19.0, vertical: 19),
                      child: Text('Height (CM)',
                          style: TextStyle(color: Colors.white, fontSize: 15)),
                    ),
                    Gap(12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Male',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w400),
                        ),
                        LiteRollingSwitch(
                          onTap: () {},
                          onDoubleTap: () {},
                          onSwipe: () {},
                          onChanged: (value) {},
                          value: true,
                          colorOn: Colors.deepPurpleAccent,
                          colorOff: Color(0xFF17182C),
                          iconOn: Icons.woman,
                          iconOff: Icons.man,
                        ),
                        Text(
                          'Female',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    )
                  ],
                ),
                height: 170,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color(0xFF17182C)),
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
                    // final result = _currentValue / weight;
                    // print(result);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Bmi(_currentValue, weight)));
                  },
                  child: Text(
                    'Calculate BMI',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
