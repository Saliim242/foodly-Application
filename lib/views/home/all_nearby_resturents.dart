import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/common/back_ground_container.dart';

import '../../constants/constants.dart';
import '../../constants/uidata.dart';
import 'widgets/returents_tile_widget.dart';

class AllNearByResturents extends StatelessWidget {
  const AllNearByResturents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: kOffWhite,
        title: const Text(
          'All NearBy Restuarants',
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
              restaurants.length,
              (index) {
                var res = restaurants[index];
                return ReturentsTileWidget(
                  restaurant: res,
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
