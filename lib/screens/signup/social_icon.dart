import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_page/constant.dart';

class SocialIcon extends StatelessWidget {
  final String iconsrc;
  final Function() press;

  const SocialIcon({
    super.key,
    required this.iconsrc,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(

        margin: const EdgeInsets.symmetric(horizontal: 10),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            border: Border.all(width: 2, color: kPrimaryColor),
            shape: BoxShape.circle),
        child: SvgPicture.asset(
          iconsrc,
          height: 25,
          width: 25,
        ),
      ),
    );
  }
}
