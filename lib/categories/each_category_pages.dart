import 'package:flutter/material.dart';
import 'package:foodly/constants/constants.dart';

class EachCategoryPages extends StatelessWidget {
  const EachCategoryPages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Each Category PAGE',
          style: TextStyle(
            fontSize: 15,
            color: kDark,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(),
    );
  }
}
