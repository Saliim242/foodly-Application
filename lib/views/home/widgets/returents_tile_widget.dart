import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/constants/constants.dart';

class ReturentsTileWidget extends StatelessWidget {
  ReturentsTileWidget({Key? key, required this.restaurant}) : super(key: key);

  final dynamic restaurant;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Stack(
        clipBehavior: Clip.hardEdge,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 8.h),
            height: 70.h,
            width: width,
            decoration: BoxDecoration(
              color: kOffWhite,
              borderRadius: BorderRadius.circular(9.r),
            ),
            child: Container(
              padding: EdgeInsets.all(4.r),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.all(
                      Radius.circular(12.r),
                    ),
                    child: Stack(
                      children: [
                        SizedBox(
                          height: 70.h,
                          width: 70.w,
                          child: Image.network(
                            restaurant['imageUrl'],
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          child: Container(
                            padding: EdgeInsets.only(left: 6.w, bottom: 2.h),
                            color: kGray.withOpacity(0.6),
                            height: 16.h,
                            width: width,
                            child: RatingBarIndicator(
                              rating: 5,
                              itemCount: 5,
                              itemBuilder: (contex, i) => const Icon(
                                Icons.star,
                                color: kSecondary,
                              ),
                              itemSize: 15.h,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 10.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "${restaurant['title']}",
                        style: TextStyle(
                          fontSize: 12,
                          color: kDark,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        "Delivery time : ${restaurant['time']}",
                        style: TextStyle(
                          fontSize: 12,
                          color: kGray,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        width: width * .7,
                        child: Text(
                          "${restaurant['coords']['address']}']",
                          style: TextStyle(
                            fontSize: 10,
                            color: kGray,
                            fontWeight: FontWeight.w400,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: 5.w,
            top: 6.h,
            child: Row(
              children: [
                Container(
                  width: 30.w,
                  height: 30.h,
                  decoration: BoxDecoration(
                    color: kSecondary,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.shopping_bag_outlined,
                    color: kOffWhite,
                  ),
                ),
                SizedBox(width: 4.w),
                Container(
                  width: 60.w,
                  height: 20.h,
                  decoration: BoxDecoration(
                    color: restaurant['isAvailable'] == true ||
                            restaurant['isAvailable'] == null
                        ? kPrimary
                        : kSecondaryLight,
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Text(
                    restaurant['isAvailable'] == true ||
                            restaurant['isAvailable'] == null
                        ? "Open"
                        : "Closed",
                    style: TextStyle(
                      fontSize: 12.sp,
                      color: kLightWhite,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
