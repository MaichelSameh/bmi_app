import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'result.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isMale = false;
  double height = 170;
  int weight = 70;
  int age = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Body Mass Index"),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isMale = true;
                      });
                    },
                    child: Container(
                      margin: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: isMale
                            ? Colors.teal
                            : const Color.fromRGBO(91, 124, 136, 1),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SvgPicture.asset(
                            "assets/icons/male_icon.svg",
                            color: Colors.white,
                            width: 100,
                            height: 100,
                          ),
                          Text(
                            "Male",
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isMale = false;
                      });
                    },
                    child: Container(
                      margin: const EdgeInsets.all(8),
                      height: double.infinity,
                      decoration: BoxDecoration(
                        color: !isMale
                            ? Colors.teal
                            : const Color.fromRGBO(91, 124, 136, 1),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SvgPicture.asset(
                            "assets/icons/female_icon.svg",
                            color: Colors.white,
                            width: 100,
                            height: 100,
                          ),
                          Text(
                            "Female",
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            flex: 2,
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: const Color.fromRGBO(91, 124, 136, 1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Height",
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "$height ",
                        style: Theme.of(context).textTheme.headline2,
                      ),
                      Text(
                        "cm",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ],
                  ),
                  Slider(
                    value: height,
                    onChanged: (double newValue) {
                      setState(
                        () {
                          height = newValue;
                        },
                      );
                    },
                    activeColor: Colors.teal,
                    divisions: 200,
                    max: 200,
                    min: 100,
                    thumbColor: Colors.teal,
                    inactiveColor: Colors.teal.withOpacity(0.8),
                  ),
                ],
              ),
            ),
            flex: 3,
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(91, 124, 136, 1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Weight",
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                        Text(
                          "$weight",
                          style: Theme.of(context).textTheme.headline2,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                              onTap: () => setState(() {
                                weight++;
                              }),
                              child: Container(
                                width: 50,
                                height: 50,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.teal,
                                ),
                                child: const Icon(Icons.remove,
                                    color: Colors.white),
                              ),
                            ),
                            GestureDetector(
                              onTap: () => setState(() {
                                weight--;
                              }),
                              child: Container(
                                width: 50,
                                height: 50,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.teal,
                                ),
                                child:
                                    const Icon(Icons.add, color: Colors.white),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(91, 124, 136, 1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Age",
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                        Text(
                          "$age",
                          style: Theme.of(context).textTheme.headline2,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                              onTap: () => setState(() {
                                age++;
                              }),
                              child: Container(
                                width: 50,
                                height: 50,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.teal,
                                ),
                                child: const Icon(Icons.remove,
                                    color: Colors.white),
                              ),
                            ),
                            GestureDetector(
                              onTap: () => setState(() {
                                age--;
                              }),
                              child: Container(
                                width: 50,
                                height: 50,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.teal,
                                ),
                                child:
                                    const Icon(Icons.add, color: Colors.white),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            flex: 3,
          ),
        ],
      ),
      bottomNavigationBar: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) => ResultScreen(
                age: age,
                isMAle: isMale,
                result: weight / pow(height, 2),
              ),
            ),
          );
        },
        child: Container(
          height: 70,
          width: double.infinity,
          color: Theme.of(context).primaryColor,
          child: Center(
            child: Text(
              "Calculate",
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    color: Colors.white,
                  ),
            ),
          ),
        ),
      ),
    );
  }
}
