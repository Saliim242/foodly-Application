import 'package:flutter/material.dart';
import 'package:foodly/views/cart/cart_page.dart';
import 'package:foodly/views/home/home_page.dart';
import 'package:foodly/views/profile/profile_page.dart';
import 'package:foodly/views/search/search_page.dart';
import 'package:get/get.dart';

class BottomNavigationBarController extends GetxController {
  RxInt _tabIndex = 0.obs;

  int get tabIndex => _tabIndex.value;

  set setTabIndex(int index) {
    _tabIndex.value = index;
  }

  // All Pages List

  List<Widget> pages = [
    HomePage(),
    SearchPage(),
    CartPage(),
    ProfilePage(),
  ];
}
