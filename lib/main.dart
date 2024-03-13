import 'package:flutter/material.dart';

import 'home_page.dart';

void main()=> runApp(const TourSpot());

class TourSpot extends StatefulWidget {
  const TourSpot({Key?key}):super(key: key);

  @override
  State<TourSpot> createState() => _PageControlState();
}

class _PageControlState extends State<TourSpot> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(child: HomePage()),
    );
  }
}



