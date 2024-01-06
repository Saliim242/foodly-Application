import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/common/back_ground_container.dart';
import 'package:foodly/constants/constants.dart';
import 'package:foodly/constants/uidata.dart';
import 'widgets/category_list_tile.dart';

class AllCategoriesPage extends StatelessWidget {
  const AllCategoriesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kOffWhite,
        centerTitle: true,
        title: const Text(
          'All Categories',
          style: TextStyle(
            fontSize: 14,
          ),
        ),
      ),
      body: BackGroundContainer(
        color: Colors.white,
        child: Container(
          padding: EdgeInsets.only(left: 8.w, top: 10.h),
          height: hieght,
          child: ListView(
            children: List.generate(
              categories.length,
              (index) {
                var cat = categories[index];
                return CategoryListTile(cat: cat);
              },
            ),
          ),
        ),
      ),
    );
  }
}
