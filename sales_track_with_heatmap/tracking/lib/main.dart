import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tracking/shape_maker.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      //theme: ThemeData.dark(),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          elevation: 0,
          leading: const CircleAvatar(
            backgroundImage: AssetImage('assets/profile.jpg'),
          ),
          title: const Text(
            'M.H. Abid',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(16),
              child: Row(
                children: [
                  Text(
                    'Hello M.H. Abid',
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  SizedBox(width: 16),
                  Icon(
                    Icons.settings,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            Text("data"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                BeautifulButton(
                  text: "Button 1",
                  color: Colors.black,
                  onPressed: () {
                    // Handle button press
                  },
                ),
                BeautifulButton(
                  text: "Button 2",
                  color: Colors.green,
                  onPressed: () {
                    // Handle button press
                  },
                ),
                BeautifulButton(
                  text: "Button 3",
                  color: Colors.black,
                  onPressed: () {
                    // Handle button press
                  },
                ),
              ],
            ),
            Container(
              height: 380,
              width: 390,
              // color: Colors.amber,
              child: Stack(
                // alignment: Alignment.center,
                children: [
                  Positioned(
                    top: 210,
                    left: 35,
                    child: Transform.rotate(
                      angle: -pi / 4,
                      child: Container(
                        color: const Color.fromARGB(255, 36, 229, 3),
                        width: 260,
                        height: 40,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 30,
                    top: 210,
                    child: Container(
                      decoration: BoxDecoration(
                        // borderRadius: BorderRadius.circular(30),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30.0),
                          topRight: Radius.circular(30.0),
                          topLeft: Radius.circular(30.0),
                        ),
                        color: Color.fromARGB(255, 58, 54, 54),
                      ),
                      height: 150,
                      width: 150,
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.scale_outlined,
                            color: Colors.white,
                          ),
                          Text(
                            "22130K",
                            style: TextStyle(
                                fontSize: 27,
                                color: Colors.white,
                                fontWeight: FontWeight.w900),
                          ),
                          Text(
                            "Sales",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    right: 30,
                    top: 30,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(30.0),
                            //  topRight: Radius.circular(30.0),
                            topLeft: Radius.circular(30.0),
                          ),
                          color: const Color.fromARGB(255, 36, 229, 3)),
                      height: 170,
                      width: 170,
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.person_add_alt_1_sharp,
                            color: Colors.black,
                          ),
                          Text(
                            "8.95K",
                            style: TextStyle(
                                fontSize: 27,
                                color: Colors.black,
                                fontWeight: FontWeight.w900),
                          ),
                          Text(
                            "Customers",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 200,
                    left: 30,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(30.0),
                          // topRight: Radius.circular(30.0),
                          topLeft: Radius.circular(30.0),
                        ),
                        color: const Color.fromARGB(255, 36, 229, 3),
                      ),
                      height: 170,
                      width: 170,
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.person_add_alt_1_sharp,
                            color: Colors.black,
                          ),
                          Text(
                            "8.95K",
                            style: TextStyle(
                                fontSize: 27,
                                color: Colors.black,
                                fontWeight: FontWeight.w900),
                          ),
                          Text(
                            "Customers",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 40,
                    left: 30,
                    child: Container(
                      decoration: BoxDecoration(
                        // borderRadius: BorderRadius.circular(30),
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(30.0),
                          topRight: Radius.circular(30.0),
                          bottomLeft: Radius.circular(30.0),
                        ),
                        color: Color.fromARGB(255, 58, 54, 54),
                      ),
                      height: 150,
                      width: 150,
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.scale_outlined,
                            color: Colors.white,
                          ),
                          Text(
                            "230K",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 27,
                                fontWeight: FontWeight.w900),
                          ),
                          Text(
                            "Sales",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(20),
              ),
              border: Border(
                top: BorderSide(
                  color: Colors.white, // Set the color of the border
                  width: 2.0, // Set the width of the border
                ),
              )),
          child: BottomAppBar(
            color: Colors.transparent,
            shape: CircularNotchedRectangle(),
            notchMargin: 8.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  icon: const Icon(Icons.home, color: Colors.white),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.bar_chart, color: Colors.white),
                  onPressed: () {},
                ),
                const SizedBox(width: 48),
                IconButton(
                  icon: const Icon(Icons.person, color: Colors.white),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.settings, color: Colors.white),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Stack(alignment: Alignment.center, children: [
          FloatingActionButton(
            onPressed: () {},
            backgroundColor: Color.fromARGB(255, 36, 229, 3),
            child: const Icon(
              Icons.add,
              color: Colors.black,
            ),
          ),
        ]));
  }
}

class StatCard extends StatelessWidget {
  final String label;
  final String value;
  final Color color;

  StatCard({
    required this.label,
    required this.value,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Text(
            value,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          label,
          style: const TextStyle(
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}

class PaddedContainer extends StatelessWidget {
  final Color color;
  final double top;
  final double left;

  PaddedContainer({required this.color, required this.top, required this.left});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: left,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8),
        ),
        width: 100,
        height: 100,
      ),
    );
  }
}

class BeautifulButton extends StatelessWidget {
  final String text;
  final Color color;
  final VoidCallback onPressed;

  BeautifulButton({
    required this.text,
    required this.color,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
        ),
        elevation: 5,
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
        ),
      ),
    );
  }
}
