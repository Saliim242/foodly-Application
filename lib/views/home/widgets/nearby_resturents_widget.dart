import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/constants/constants.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class NearByResturentsWidget extends StatelessWidget {
  NearByResturentsWidget({
    Key? key,
    required this.image,
    required this.logoUrl,
    required this.title,
    required this.time,
    required this.rating,
    this.onTap,
  }) : super(key: key);

  final String image, logoUrl, title, time, rating;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.only(right: 12.w),
        child: Container(
          width: width * .75,
          height: 192.h,
          decoration: BoxDecoration(
            color: kLightWhite,
            borderRadius: BorderRadius.circular(12.r),
          ),
          child: ListView(
            physics: NeverScrollableScrollPhysics(),
            children: [
              Padding(
                padding: EdgeInsets.all(8.w),
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12.r),
                      child: SizedBox(
                        height: 112.h,
                        width: width * .8,
                        child: Image.network(
                          image,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      right: 10.w,
                      top: 10.h,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(
                          50.r,
                        ),
                        child: Container(
                          color: kLightWhite,
                          padding: EdgeInsets.all(2.r),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(
                              50.r,
                            ),
                            child: Image.network(
                              "$logoUrl",
                              fit: BoxFit.cover,
                              width: 30.w,
                              height: 30.h,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 14,
                        color: kDark,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Delivery time",
                          style: TextStyle(
                            fontSize: 11,
                            color: kGray,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          time,
                          style: TextStyle(
                            fontSize: 12,
                            color: kDark,
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        RatingBarIndicator(
                          itemCount: 5,
                          rating: 5,
                          itemSize: 15.h,
                          itemBuilder: (BuildContext context, int index) {
                            return Icon(
                              Icons.star,
                              color: kPrimary,
                            );
                          },
                        ),
                        SizedBox(width: 12.w),
                        Text(
                          "+ $rating reviews and ratings",
                          style: TextStyle(
                            fontSize: 11,
                            color: kGray,
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
