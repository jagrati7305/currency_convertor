import 'package:currency_convertor/constants/colors.dart';
import 'package:currency_convertor/constants/dimension.dart';
import 'package:flutter/material.dart';

class Buttons extends StatefulWidget {
  final String val;
  final IconData? icon;
  final double? iconSize;
  final TextEditingController buttonController;
  final bool decimalClicked;
  final int maxLength = 8;
  const Buttons({super.key,
  required this.val,
  this.icon,
  this.iconSize,
  required this.buttonController,
  this.decimalClicked = false
  });

  @override
  State<Buttons> createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {

  void _onNumberTap(String val,TextEditingController buttonController,bool decimalClicked){
    setState(() {
      if(buttonController.text.length<widget.maxLength){
          if(val == 'BackSpace'){
          if(buttonController.text.isEmpty!=true){
            buttonController.text = buttonController.text.substring(0,buttonController.text.length-1);
          }
          }else if(val =='Decimal'){
            decimalClicked = !decimalClicked;
          if(buttonController.text.isEmpty!= true){
            buttonController.text += '.';
          }else{
            buttonController.text +='0';
            buttonController.text +='.';
          }
          }else{
          buttonController.text += val;
          }
      }else{
          if(val == 'BackSpace'){
            if(buttonController.text.isEmpty!=true){
              buttonController.text = buttonController.text.substring(0,buttonController.text.length-1);
            }
          }
      }
      
    });
  }
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        _onNumberTap(widget.val,widget.buttonController,widget.decimalClicked);
      },
      borderRadius:BorderRadius.circular(100) ,
      child: Material(
        borderRadius: BorderRadius.circular(100),
          color: AppColors.orangeColor,
          elevation: 2,
          child: CircleAvatar(
            radius: Dimension.heightFactor*40,
            backgroundColor: AppColors.orangeColor,
            child: widget.icon==null?Text(
              widget.val,
              style: TextStyle(
                fontSize: Dimension.heightFactor*28,
                fontWeight: FontWeight.bold,
                color: AppColors.mainPurpleColor
              ),):Icon(
                widget.icon,
                color: AppColors.mainPurpleColor,
                size: widget.iconSize,)
          ),
      ),
    );
  }
}
