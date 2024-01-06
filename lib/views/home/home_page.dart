import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/common/custom_app_bar.dart';
import 'package:foodly/common/custom_container.dart';
import 'package:foodly/constants/constants.dart';
import 'package:foodly/views/home/widgets/category_lists.dart';
import 'package:get/get.dart';

import '../../common/custom_heading_widget.dart';
import 'all_fastest_food_closer.dart';
import 'all_nearby_resturents.dart';
import 'all_recomendations.dart';
import 'widgets/foods_lists.dart';
import 'widgets/nearby_restuarants_lists.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimary,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(130.h),
        child: CustomAppBar(),
      ),
      body: SafeArea(
        child: CustomContainer(
          containerWidget: Column(
            children: [
              const CategoryLists(),
              CustomHeadingWidget(
                text: "Nearby Restuarants",
                onTap: () {
                  Get.to(
                    () => AllNearByResturents(),
                    transition: Transition.rightToLeftWithFade,
                    //duration: Duration(milliseconds: 900),
                  );
                },
              ),
              NearbyRestuarantsLists(),
              CustomHeadingWidget(
                text: "Try Something new ",
                onTap: () {
                  Get.to(
                    () => AllRecomendations(),
                    transition: Transition.rightToLeftWithFade,
                    //duration: Duration(milliseconds: 900),
                  );
                },
              ),
              FoodsList(),
              CustomHeadingWidget(
                text: "Fastest food closer to you",
                onTap: () {
                  Get.to(
                    () => AllFastestFoodCloser(),
                    transition: Transition.rightToLeftWithFade,
                    //duration: Duration(milliseconds: 900),
                  );
                },
              ),
              FoodsList(),
            ],
          ),
        ),
      ),
    );
  }
}
