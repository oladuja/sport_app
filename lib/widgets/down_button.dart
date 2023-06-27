import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sport_app/static/color.dart';

class DownButton extends StatelessWidget {
  const DownButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      backgroundColor: AppColor.mainColor,
      child: const FaIcon(
        FontAwesomeIcons.plus,
        color: Colors.white,
        size: 14,
      ),
    );
  }
}
