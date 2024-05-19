import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sales Analytics',
      theme: ThemeData.dark(),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.only(left: 18),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/profile.jpg'),
            ),
          ),
          title: Text('Hi  Abid'),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    'Sales per employee per month',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    '263 contributions in the last year',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    YearButton(year: 2021, isSelected: false),
                    SizedBox(width: 8),
                    YearButton(year: 2022, isSelected: false),
                    SizedBox(width: 8),
                    YearButton(year: 2023, isSelected: true),
                    SizedBox(width: 8),
                    YearButton(year: 2024, isSelected: false),
                  ],
                ),
                SizedBox(height: 16),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    'Heat map of  sales.',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
                SizedBox(height: 16),
                ContributionCalendar(),
                SizedBox(height: 16),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      StatCard(
                        value: '\$4,732.27',
                        label: 'Last Month',
                      ),
                      StatCard(
                        value: '\$8,034',
                        label: 'Year to Date',
                      ),
                      StatCard(
                        value: '\$3,124',
                        label: 'This Month',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class YearButton extends StatelessWidget {
  final int year;
  final bool isSelected;

  YearButton({
    required this.year,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: isSelected ? const Color(0xFF0D7517) : Colors.grey[800],
        borderRadius: BorderRadius.circular(16),
        border: !isSelected
            ? Border.all(
                color: const Color(0xFF0D7517),
                width: 4,
              )
            : null,
      ),
      child: Text(
        year.toString(),
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class ContributionCalendar extends StatelessWidget {
  final List<String> months = [
    'Jan',
    'Feb',
    'Mar',
    'Apr',
    'May',
    'Jun',
    'Jul',
    'Aug',
    'Sep',
    'Oct',
    'Nov',
    'Dec',
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
              months.length,
              (index) => Padding(
                padding: EdgeInsets.only(right: 10),
                child: Text(
                  months[index],
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 8),
          GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 24,
              mainAxisSpacing: 4,
              crossAxisSpacing: 4,
              childAspectRatio: 0.8,
            ),
            itemCount: 360,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  color: getRandomColor(),
                  borderRadius: BorderRadius.circular(4),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  Color? getRandomColor() {
    final random = Random();
    final colors = [
      Colors.grey[600],
      Color.fromARGB(255, 228, 223, 223),
      const Color(0xFF0D7517),
    ];
    return colors[random.nextInt(colors.length)];
  }
}

class StatCard extends StatelessWidget {
  final String value;
  final String label;

  StatCard({
    required this.value,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              color: const Color(0xFF0D7517),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Text(
              value,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 8),
          Text(
            label,
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
