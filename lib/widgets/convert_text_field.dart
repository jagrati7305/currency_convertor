import 'package:currency_convertor/constants/colors.dart';
import 'package:currency_convertor/constants/dimension.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ConvertTextField extends StatefulWidget {
  final TextEditingController textFieldcontroller;
  final VoidCallback onTap;
  const ConvertTextField({
    super.key,
    required this.textFieldcontroller,
    required this.onTap});

  @override
  State<ConvertTextField> createState() => _ConvertTextFieldState();
}

class _ConvertTextFieldState extends State<ConvertTextField> {
  

  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: EdgeInsets.fromLTRB(24, 24, 24, 24),
      margin: EdgeInsets.only(left: Dimension.widthFactor*32,right: Dimension.widthFactor*32,top: Dimension.heightFactor*24),
      height: Dimension.heightFactor*92,
      width: Dimension.widthFactor*338,
      decoration: BoxDecoration(
        color: AppColors.mainPurpleColor,
        borderRadius: BorderRadius.all(Radius.circular(4))
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
            Container(
              width: Dimension.widthFactor*161,
              height: Dimension.heightFactor*44,
              decoration: BoxDecoration(
                color: AppColors.backgroundColor,
                borderRadius: BorderRadius.all(Radius.circular(2))
              ),
              child: TextField(
                  onTap: widget.onTap,
                  controller: widget.textFieldcontroller,
                  keyboardType: TextInputType.none,
                  style: TextStyle(
                    fontSize: Dimension.heightFactor*20,
                    color: AppColors.textFieldColor,
                    fontWeight: FontWeight.w500
                  ),
                  decoration: InputDecoration(
                    hintText: 'Value',
                    hintStyle: TextStyle(
                      fontSize: Dimension.heightFactor*20,
                      color: AppColors.textFieldColor,
                      fontWeight: FontWeight.w500
                    ),
                    contentPadding:EdgeInsets.fromLTRB(Dimension.widthFactor*16, 0, 16, 0),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(2)),
                      borderSide: BorderSide(
                        color: AppColors.backgroundColor
                      )
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(2)),
                      borderSide: BorderSide(
                        color: AppColors.backgroundColor
                      )
                  ),
                ),
            ),
            ),
          Container(
            height: Dimension.heightFactor*44,
            width: Dimension.widthFactor*97,
            decoration: BoxDecoration(
              color: AppColors.backgroundColor,
              borderRadius: BorderRadius.all(Radius.circular(2))
            ),
          )
        ],
      ),
    );
  }
}