import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TabButton extends StatelessWidget {
  final String title;
  final Color bgColor;
  final Color buttonColor;
  final IconData iconData;

  const TabButton({
    super.key,
    required this.title,
    required this.bgColor,
    required this.buttonColor,
    required this.iconData,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton.icon(
        style: ButtonStyle(
          padding: const MaterialStatePropertyAll(EdgeInsets.zero),
          elevation: const MaterialStatePropertyAll(0),
          backgroundColor: MaterialStateProperty.all(buttonColor),
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
        ),
        onPressed: () {},
        icon: FaIcon(
          iconData,
          color: bgColor,
          size: 14,
        ),
        label: Text(
          title,
          style: TextStyle(
            color: bgColor,
            fontSize: 12.sp,
          ),
        ),
      ),
    );
  }
}
