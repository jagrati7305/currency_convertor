import 'package:currency_convertor/constants/colors.dart';
import 'package:currency_convertor/constants/dimension.dart';
import 'package:currency_convertor/widgets/buttons.dart';
import 'package:flutter/material.dart';

class Numpad extends StatelessWidget {
  const Numpad({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Dimension.widthFactor*338,
      height: Dimension.heightFactor*410,
      decoration: BoxDecoration(
        color: AppColors.mainPurpleColor,
        borderRadius: BorderRadius.all(Radius.circular(4))
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Buttons(val: 1,),
              Buttons(val: 2,),
              Buttons(val: 3,),
            ],         
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Buttons(val: 4,),
              Buttons(val: 5,),
              Buttons(val: 6,),
            ],         
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Buttons(val: 7,),
              Buttons(val: 8,),
              Buttons(val: 9,),
            ],         
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Buttons(icon: Icons.circle,),
              Buttons(val: 0,),
              Buttons(icon: Icons.backspace,),
            ],         
          ),
        ],
      ),
    );
  }
}