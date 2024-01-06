import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/constants/constants.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
      height: 110.h,
      width: width,
      color: kOffWhite,
      child: Container(
        margin: EdgeInsets.only(top: 20.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CircleAvatar(
                    radius: 22.r,
                    backgroundColor: kSecondary,
                    backgroundImage: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9yZyF373WSegLRC8Oo6ugxmprvSOEgF07Og&usqp=CAU')),
                Padding(
                  padding: EdgeInsets.only(bottom: 6.h, left: 8.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                          text: "Deliver to",
                          style: TextStyle(
                            fontSize: 13,
                            color: kSecondary,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: width * 0.65,
                        child: Text(
                          "16768 21st AVe N, plymouth MN 55447",
                          style: TextStyle(
                            fontSize: 11,
                            color: kGrayLight,
                            fontWeight: FontWeight.normal,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Text(
              "${getTimeDay()}",
              style: TextStyle(fontSize: 35),
            ),
          ],
        ),
      ),
    );
  }
}

String getTimeDay() {
  DateTime now = DateTime.now();

  int hour = now.hour;

  if (hour >= 0 && hour < 12) {
    return '☀️';
  } else if (hour >= 12 && hour < 16) {
    return '⛅';
  } else {
    return '🌙';
  }
}
