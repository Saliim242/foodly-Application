import 'package:flutter/material.dart';

import '../../constants/constants.dart';

class AllRecomendations extends StatelessWidget {
  const AllRecomendations({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.3,
        backgroundColor: kOffWhite,
        title: const Text(
          'All Recomendations',
          style: TextStyle(
            fontSize: 16,
          ),
        ),
      ),
      body: Center(
        child: Text("All Recomendation"),
      ),
    );
  }
}
