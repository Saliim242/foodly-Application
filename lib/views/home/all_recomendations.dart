import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/common/back_ground_container.dart';
import 'package:foodly/constants/uidata.dart';
import 'package:foodly/views/home/widgets/foods_tiles_widget.dart';

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
            color: kGray,
            fontWeight: FontWeight.w600,
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
