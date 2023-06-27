import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sport_app/static/color.dart';

class AppButtonBar extends StatelessWidget {
  const AppButtonBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      selectedItemColor: AppColor.mainColor,
      selectedLabelStyle: TextStyle(
        color: AppColor.mainColor,
        fontSize: 9.sp,
      ),
      unselectedLabelStyle: TextStyle(
        color: AppColor.bottomBarItemColor,
        fontSize: 9.sp,
      ),
      unselectedItemColor: AppColor.bottomBarItemColor,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/images/home.png',
            cacheHeight: 20,
            cacheWidth: 20,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/images/explore.png',
            cacheHeight: 20,
            cacheWidth: 20,
          ),
          label: 'Explore',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/images/arena.png',
            cacheHeight: 20,
            cacheWidth: 20,
          ),
          label: 'Arena',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/images/grandstand.png',
            cacheHeight: 20,
            cacheWidth: 20,
          ),
          label: 'Grandstand',
        ),
      ],
      currentIndex: 0,
    );
  }
}
