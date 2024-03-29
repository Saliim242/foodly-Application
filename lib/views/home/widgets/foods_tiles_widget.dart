import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:foodly/constants/constants.dart';

class FoodsTileWidget extends StatelessWidget {
  FoodsTileWidget({Key? key, required this.food}) : super(key: key);

  final dynamic food;

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
                            food['imageUrl'],
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
                        "${food['title']}",
                        style: TextStyle(
                          fontSize: 12,
                          color: kDark,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        "Delivery time : ${food['time']}",
                        style: TextStyle(
                          fontSize: 12,
                          color: kGray,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        width: width * .7,
                        height: 15.h,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          //shrinkWrap: true,
                          itemCount: food['additives'].length,
                          itemBuilder: (contex, i) {
                            var additives = food['additives'][i];
                            return Container(
                              margin: EdgeInsets.only(right: 5.w),
                              decoration: BoxDecoration(
                                color: kSecondaryLight,
                                borderRadius: BorderRadius.circular(4.r),
                              ),
                              child: Center(
                                child: Padding(
                                  padding: EdgeInsets.all(2.h),
                                  child: Text(
                                    "${additives['title']}",
                                    style: TextStyle(
                                      fontSize: 8.sp,
                                      color: kGray,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
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
                  width: 60.w,
                  height: 20.h,
                  decoration: BoxDecoration(
                    color: kPrimary,
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Text(
                    "\$ ${food['price'].toStringAsFixed(2)}",
                    style: TextStyle(
                      fontSize: 12.sp,
                      color: kLightWhite,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            ),
          ),
          Positioned(
            right: 75.w,
            top: 6.h,
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Container(
                      width: 20.w,
                      height: 20.h,
                      decoration: BoxDecoration(
                        color: kSecondary,
                        borderRadius: BorderRadius.circular(4.r),
                      ),
                      child: Center(
                        child: Icon(
                          MaterialCommunityIcons.cart_plus,
                          size: 15.h,
                          color: kLightWhite,
                        ),
                      )),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
