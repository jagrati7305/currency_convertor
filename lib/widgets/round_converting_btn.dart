import 'package:currency_convertor/constants/colors.dart';
import 'package:currency_convertor/constants/dimension.dart';
import 'package:flutter/material.dart';

class RoundConvertingBtn extends StatefulWidget {
  const RoundConvertingBtn({super.key});

  @override
  State<RoundConvertingBtn> createState() => _RoundConvertingBtnState();
}

class _RoundConvertingBtnState extends State<RoundConvertingBtn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Dimension.heightFactor*60,
      height: Dimension.widthFactor*60,
      decoration: BoxDecoration(
        color: AppColors.orangeColor,
        borderRadius: BorderRadius.circular(60),
        border: Border.all(
              color:AppColors.backgroundColor,
              width: 4,
              style: BorderStyle.solid,
              strokeAlign: BorderSide.strokeAlignInside
          )
      ),
      child: Center(
        child: Icon(
          Icons.swap_vert_rounded,
          color:AppColors.mainPurpleColor,
          size:Dimension.widthFactor*48),
          ),
    );
  }
}