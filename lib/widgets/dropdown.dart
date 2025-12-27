import 'package:currency_convertor/constants/colors.dart';
import 'package:currency_convertor/models/currency_name.dart';
import 'package:flutter/material.dart';

class Dropdown extends StatefulWidget {
  final CurrencyNames currencies;
  final String selectedCountry;
  final ValueChanged<String> onChanged;

  const Dropdown({super.key,
  required this.currencies,
  required this.selectedCountry,
  required this.onChanged});

  @override
  State<Dropdown> createState() => _DropdownState();
}

class _DropdownState extends State<Dropdown> {
  late String dropdownValue;
  
  @override 
    void initState(){
      super.initState();
      dropdownValue = widget.selectedCountry;
    }
  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton(
            value: dropdownValue,
            icon: const Icon(Icons.arrow_drop_down_rounded,),
            iconEnabledColor: AppColors.textFieldColor,
            iconSize: 24,
            elevation: 0,
        
            onChanged: (String? value){
              if (value != null) {
               widget.onChanged(value);
              }
              setState(() {
                dropdownValue=value!;
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
      ),
    );
  }
}