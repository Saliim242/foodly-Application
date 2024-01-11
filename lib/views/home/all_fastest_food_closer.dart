import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/constants/constants.dart';

import '../../common/back_ground_container.dart';
import '../../constants/uidata.dart';
import 'widgets/foods_tiles_widget.dart';

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
      body: BackGroundContainer(
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.all(12.h),
          child: ListView(
            scrollDirection: Axis.vertical,
            children: List.generate(
              foods.length,
              (index) {
                var food = foods[index];
                return FoodsTileWidget(
                  food: food,
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
