
import 'package:flutter/material.dart';
import 'package:tragon/manager/color_manager.dart';
import 'package:tragon/manager/font_manager.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key, required this.title, this.backgroundColor, this.height, this.width, required this.onTap, this.titleStyle,
  });
    final String title;
    final Color? backgroundColor;
    final double? height;
    final double? width;
    final Function() onTap;
    final TextStyle? titleStyle;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(child: Container(
     height: height,
     width: width,
     decoration: BoxDecoration(color:backgroundColor?? Colors.white,borderRadius: BorderRadius.circular(5)),
     child: Center(child: Text(title,style:titleStyle?? appFont.f12w500Black.copyWith(color: appColors.primary),),),
    ),);
  }
}
