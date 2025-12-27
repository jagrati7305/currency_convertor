import 'package:currency_convertor/constants/colors.dart';
import 'package:currency_convertor/constants/dimension.dart';
import 'package:currency_convertor/widgets/buttons.dart';
import 'package:flutter/material.dart';

class Numpad extends StatelessWidget {
  final TextEditingController numpadController;
  const Numpad({super.key,
  required this.numpadController});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Dimension.widthFactor*338,
      height: Dimension.heightFactor*410,
      decoration: BoxDecoration(
        color: AppColors.mainPurpleColor,
        borderRadius: BorderRadius.all(Radius.circular(8)),
        boxShadow:[
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.4),
            blurRadius: 8,
            spreadRadius: -5,
            offset: Offset(0, 4)
          )
        ]
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Buttons(val: '1',buttonController: numpadController,),
              Buttons(val: '2',buttonController: numpadController,),
              Buttons(val: '3',buttonController: numpadController,),
            ],         
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Buttons(val: '4',buttonController: numpadController,),
              Buttons(val: '5',buttonController: numpadController,),
              Buttons(val: '6',buttonController: numpadController,),
            ],         
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Buttons(val: '7',buttonController: numpadController,),
              Buttons(val: '8',buttonController: numpadController,),
              Buttons(val: '9',buttonController: numpadController,),
            ],         
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Buttons(val:'Decimal',icon:Icons.circle,iconSize: 10,buttonController: numpadController,),
              Buttons(val: '0',buttonController: numpadController,),
              Buttons(val: 'BackSpace',icon: Icons.backspace,buttonController: numpadController,),
            ],         
          ),
        ],
      ),
    );
  }
}