import 'package:flutter/material.dart';
import 'package:foodly/constants/constants.dart';

class AllFastestFoodCloser extends StatelessWidget {
  const AllFastestFoodCloser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.4,
        centerTitle: true,
        backgroundColor: kOffWhite,
        title: const Text(
          'All Fastest Food Closer',
          style: TextStyle(
            fontSize: 16,
          ),
        ),
      ),
      body: Center(
        child: Text("All Fastest Food Closer"),
      ),
    );
  }
}
