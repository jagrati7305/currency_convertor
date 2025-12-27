import 'package:currency_convertor/constants/colors.dart';
import 'package:currency_convertor/constants/dimension.dart';
import 'package:currency_convertor/models/currency_rate.dart';
import 'package:flutter/material.dart';

class ConvertBtn extends StatefulWidget {
  final ExchangeRateModel rateChangedata;
  final VoidCallback onTap;
  const ConvertBtn({
    super.key,
    required this.rateChangedata,
    required this.onTap});

  @override
  State<ConvertBtn> createState() => _ConvertBtnState();
}

class _ConvertBtnState extends State<ConvertBtn> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Dimension.widthFactor*338,
      height: Dimension.heightFactor*46,
      child: ElevatedButton(onPressed: widget.onTap,
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.mainPurpleColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.all(Radius.circular(4))
            )
          ),
          child: Text('Convert',
              style: TextStyle(
                color: AppColors.textFieldColor,
                fontSize: Dimension.widthFactor*20,
                fontWeight: FontWeight.w700
            ),),
          ),
    );
  
  }
}