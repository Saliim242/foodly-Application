import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/constants/constants.dart';
import 'package:foodly/constants/uidata.dart';
import 'package:foodly/controllers/category_controller.dart';
import 'package:get/get.dart';

import '../../../categories/all_categories_page.dart';

class CategoryLists extends StatelessWidget {
  const CategoryLists({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ctrs = Get.put(CategoryController());
    return Container(
      height: 80.h,
      padding: EdgeInsets.only(left: 12.w, top: 10.h),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(
          categories.length,
          (index) {
            var category = categories[index];
            return GestureDetector(
              onTap: () {
                if (ctrs.category == category['_id']) {
                  ctrs.updateCategoryValue = '';
                  ctrs.updateTitleValue = '';
                } else if (category['value'] == 'more') {
                  log("Hello");
                  Get.to(
                    () => AllCategoriesPage(),
                    transition: Transition.fadeIn,
                    duration: Duration(milliseconds: 900),
                  );
                } else {
                  ctrs.updateCategoryValue = category['_id'];
                  ctrs.updateTitleValue = category['title'];
                }
              },
              child: Obx(
                () => Container(
                  margin: EdgeInsets.only(right: 5.h),
                  padding: EdgeInsets.only(top: 4.h),
                  width: width * 0.19,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    border: Border.all(
                        color: ctrs.category == category['_id']
                            ? kSecondary
                            : kOffWhite,
                        width: .5.w),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 35.h,
                        child: Image.network(
                          category['imageUrl'],
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text(
                        "${category['title']}",
                        style: TextStyle(
                          fontSize: 12,
                          color: kDark,
                          fontWeight: FontWeight.normal,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
