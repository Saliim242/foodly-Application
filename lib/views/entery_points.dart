import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:foodly/constants/constants.dart';
import 'package:foodly/controllers/bottom_navigation_controller.dart';
import 'package:get/get.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final btnNavController =
        Get.put<BottomNavigationBarController>(BottomNavigationBarController());
    return Obx(
      () => Scaffold(
        body: Stack(
          children: [
            btnNavController.pages[btnNavController.tabIndex],
            Align(
              alignment: Alignment.bottomCenter,
              child: Theme(
                data: Theme.of(context).copyWith(canvasColor: kPrimary),
                child: BottomNavigationBar(
                  showSelectedLabels: false,
                  showUnselectedLabels: false,
                  unselectedIconTheme: IconThemeData(color: Colors.black38),
                  selectedIconTheme: IconThemeData(color: kSecondary),
                  currentIndex: btnNavController.tabIndex,
                  onTap: (index) {
                    btnNavController.setTabIndex = index;
                  },
                  type: BottomNavigationBarType.fixed,
                  items: [
                    BottomNavigationBarItem(
                      icon: btnNavController.tabIndex == 0
                          ? Icon(AntDesign.appstore1)
                          : Icon(AntDesign.appstore_o),
                      label: "Home",
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.search),
                      label: "search",
                    ),
                    BottomNavigationBarItem(
                      icon: Badge(
                        label: Text("1"),
                        child: Icon(FontAwesome.opencart),
                      ),
                      label: "Cart",
                    ),
                    BottomNavigationBarItem(
                      icon: btnNavController.tabIndex == 3
                          ? Icon(FontAwesome.user_circle_o)
                          : Icon(FontAwesome.user_circle),
                      label: "Profile",
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );

    ;
  }
}
