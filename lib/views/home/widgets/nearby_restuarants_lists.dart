import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/constants/constants.dart';
import 'package:foodly/constants/uidata.dart';

import 'nearby_resturents_widget.dart';

class NearbyRestuarantsLists extends StatelessWidget {
  const NearbyRestuarantsLists({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 194.h,
      padding: EdgeInsets.only(left: 12.w, top: 10.h),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(
          restaurants.length,
          (index) {
            var res = restaurants[index];
            return NearByResturentsWidget(
              image: res['imageUrl'],
              logoUrl: res['logoUrl'],
              rating: res['ratingCount'].toString(),
              time: res['time'],
              title: res['title'],
            );
          },
        ),
      ),
    );
  }
}
