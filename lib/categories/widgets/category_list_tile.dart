// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../constants/constants.dart';
import '../each_category_pages.dart';

class CategoryListTile extends StatelessWidget {
  CategoryListTile({
    super.key,
    required this.cat,
  });

  var cat;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Get.to(() => EachCategoryPages(),
            transition: Transition.fadeIn,
            duration: Duration(milliseconds: 900));
      },
      leading: CircleAvatar(
        radius: 18.r,
        backgroundColor: kGrayLight,
        child: Image.network(
          '${cat['imageUrl']}',
          fit: BoxFit.cover,
        ),
      ),
      title: Text(
        "${cat['title']}",
        style: TextStyle(
          fontSize: 14.r,
          color: kGray,
          fontWeight: FontWeight.normal,
        ),
      ),
      trailing: Icon(
        Icons.arrow_forward_ios_outlined,
        size: 15.r,
        color: kGray,
      ),
    );
  }
}
