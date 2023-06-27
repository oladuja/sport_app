import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sport_app/static/color.dart';
import 'package:sport_app/widgets/app_button.dart';
import 'package:sport_app/widgets/down_button.dart';
import 'package:sport_app/widgets/recommended_list.dart';
import 'package:sport_app/widgets/tab_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home',
          style: TextStyle(
            fontSize: 24.sp,
            fontWeight: FontWeight.bold,
            color: const Color(0XFF353535),
          ),
        ),
        actions: [
          Image.asset(
            'assets/images/search.png',
            cacheHeight: 24,
            cacheWidth: 24,
          ),
          const SizedBox(width: 15),
          Image.asset(
            'assets/images/Notification.png',
            cacheHeight: 24,
            cacheWidth: 24,
          ),
          const SizedBox(width: 15),
          Image.asset(
            'assets/images/profile.png',
            cacheHeight: 24,
            cacheWidth: 24,
          ),
          const SizedBox(width: 15),
        ],
        backgroundColor: Colors.white,
      ),
      backgroundColor: const Color.fromARGB(255, 249, 249, 249),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 15.0,
            right: 15.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const TabButton(
                    title: 'Trending',
                    bgColor: Colors.white,
                    buttonColor: AppColor.mainColor,
                    iconData: FontAwesomeIcons.fire,
                  ),
                  SizedBox(width: 5.w),
                  const TabButton(
                    title: 'Baseball',
                    buttonColor: Colors.white,
                    bgColor: Color(0XFFB5BCDC),
                    iconData: FontAwesomeIcons.baseball,
                  ),
                  SizedBox(width: 5.w),
                  const TabButton(
                    title: 'Basketball',
                    bgColor: Color(0XFFB5BCDC),
                    buttonColor: Colors.white,
                    iconData: FontAwesomeIcons.basketball,
                  ),
                ],
              ),
              SizedBox(height: 15.h),
              Stack(
                children: [
                  Container(
                    height: 200.h,
                    width: 1.sw,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: const DecorationImage(
                        image: AssetImage('assets/images/recommend.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    left: 20,
                    right: 0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Featured',
                          style: TextStyle(
                            fontSize: 12.sp,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'Everyone loses games, few change them',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.sp,
                          ),
                        ),
                        SizedBox(height: 8.h),
                        Row(
                          children: [
                            const CircleAvatar(
                              radius: 2.5,
                              backgroundColor: AppColor.bottomBarItemColor,
                            ),
                            SizedBox(width: 4.w),
                            const CircleAvatar(
                              radius: 2.5,
                              backgroundColor: AppColor.mainColor,
                            ),
                            SizedBox(width: 4.w),
                            const CircleAvatar(
                              radius: 2.5,
                              backgroundColor: AppColor.bottomBarItemColor,
                            ),
                            SizedBox(width: 4.w),
                            const CircleAvatar(
                              radius: 2.5,
                              backgroundColor: AppColor.bottomBarItemColor,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              Text(
                'Recommended',
                style: TextStyle(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.bold,
                  color: const Color(0XFF353535),
                ),
              ),
              SizedBox(height: 9.h),
              const SizedBox(
                height: 150,
                child: RecommendeList(
                  items: [
                    {
                      'image': 'assets/images/img1.png',
                      'text':
                          'Lakers have played like never before! Love to see it!',
                      'post': '100+ post',
                    },
                    {
                      'image': 'assets/images/img2.png',
                      'text': 'Raptors game happening now!',
                      'post': '100+ post',
                    },
                    {
                      'image': 'assets/images/img3.png',
                      'text':
                          'Lakers have played like never before! Love to see it!',
                      'post': '100+ post',
                    },
                  ],
                ),
              ),
              SizedBox(height: 15.h),
              Container(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/profile.png',
                          cacheHeight: 30,
                          cacheWidth: 30,
                        ),
                        SizedBox(width: 10.w),
                        Text(
                          'Tassy Omah',
                          style: TextStyle(
                            fontSize: 14.sp,
                          ),
                        ),
                        const Spacer(),
                        const FaIcon(
                          FontAwesomeIcons.clock,
                          color: AppColor.bottomBarItemColor,
                          size: 14,
                        ),
                        SizedBox(width: 10.w),
                        Text(
                          '6h ago',
                          style: TextStyle(
                              fontSize: 9.sp,
                              color: AppColor.bottomBarItemColor),
                        ),
                        SizedBox(width: 10.w),
                        const FaIcon(
                          FontAwesomeIcons.ellipsisVertical,
                          color: AppColor.bottomBarItemColor,
                        ),
                      ],
                    ),
                    SizedBox(height: 10.h),
                    Text(
                      'The Raptors Don’t Need Leonard To be in that game! They really don’t!',
                      style: TextStyle(
                        fontSize: 14.sp,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 15.h),
              Container(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/profile.png',
                          cacheHeight: 30,
                          cacheWidth: 30,
                        ),
                        SizedBox(width: 10.w),
                        Text(
                          'Tassy Omah',
                          style: TextStyle(
                            fontSize: 14.sp,
                          ),
                        ),
                        const Spacer(),
                        const FaIcon(
                          FontAwesomeIcons.clock,
                          color: AppColor.bottomBarItemColor,
                          size: 14,
                        ),
                        SizedBox(width: 10.w),
                        Text(
                          '6h ago',
                          style: TextStyle(
                              fontSize: 9.sp,
                              color: AppColor.bottomBarItemColor),
                        ),
                        SizedBox(width: 10.w),
                        const FaIcon(
                          FontAwesomeIcons.ellipsisVertical,
                          color: AppColor.bottomBarItemColor,
                        ),
                      ],
                    ),
                    SizedBox(height: 10.h),
                    Text(
                      'The Raptors Don’t Need Leonard To be in that game! They really don’t!',
                      style: TextStyle(
                        fontSize: 14.sp,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 15.h),
              Container(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/profile.png',
                          cacheHeight: 30,
                          cacheWidth: 30,
                        ),
                        SizedBox(width: 10.w),
                        Text(
                          'Tassy Omah',
                          style: TextStyle(
                            fontSize: 14.sp,
                          ),
                        ),
                        const Spacer(),
                        const FaIcon(
                          FontAwesomeIcons.clock,
                          color: AppColor.bottomBarItemColor,
                          size: 14,
                        ),
                        SizedBox(width: 10.w),
                        Text(
                          '6h ago',
                          style: TextStyle(
                              fontSize: 9.sp,
                              color: AppColor.bottomBarItemColor),
                        ),
                        SizedBox(width: 10.w),
                        const FaIcon(
                          FontAwesomeIcons.ellipsisVertical,
                          color: AppColor.bottomBarItemColor,
                        ),
                      ],
                    ),
                    SizedBox(height: 10.h),
                    Text(
                      'The Raptors Don’t Need Leonard To be in that game! They really don’t!',
                      style: TextStyle(
                        fontSize: 14.sp,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: const DownButton(),
      bottomNavigationBar: const AppButtonBar(),
    );
  }
}
