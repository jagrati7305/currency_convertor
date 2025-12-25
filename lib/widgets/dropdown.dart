import 'package:currency_convertor/constants/colors.dart';
import 'package:currency_convertor/models/currency_name.dart';
import 'package:flutter/material.dart';

class Dropdown extends StatefulWidget {
  final CurrencyNames currencies;
  const Dropdown({super.key,
  required this.currencies});

  @override
  State<Dropdown> createState() => _DropdownState();
}

class _DropdownState extends State<Dropdown> {
  String dropDownValue = 'INR';
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
          value: dropDownValue,
          icon: const Icon(Icons.arrow_drop_down_rounded,),
          iconEnabledColor: AppColors.textFieldColor,
          iconSize: 24,
          
          onChanged: (String? newValue){
            setState(() {
              dropDownValue=newValue!;
            });
          },
          items: widget.currencies.names.entries.map((entry) {
            return DropdownMenuItem<String>(
              value: entry.key,
              child: Text(entry.key,
              style: TextStyle(
                color: AppColors.textFieldColor,
                fontSize: 16,
                fontWeight: FontWeight.w500
              ),),
            );
          }).toList(),  
    );
  }
}