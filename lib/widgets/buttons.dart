import 'package:currency_convertor/constants/colors.dart';
import 'package:currency_convertor/constants/dimension.dart';
import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  final int? val;
  final IconData? icon;
  const Buttons({
    super.key,
    this.val,
    this.icon});
 
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        
      },
      borderRadius:BorderRadius.circular(100) ,
      child: Material(
        borderRadius: BorderRadius.circular(100),
          color: AppColors.orangeColor,
          elevation: 2,
          child: CircleAvatar(
            radius: Dimension.heightFactor*40,
            backgroundColor: AppColors.orangeColor,
            child: icon==null?Text(
              val.toString(),
              style: TextStyle(
                fontSize: Dimension.heightFactor*28,
                fontWeight: FontWeight.bold,
                color: AppColors.mainPurpleColor
              ),):Icon(icon)
          ),
      ),
    );
  }
}