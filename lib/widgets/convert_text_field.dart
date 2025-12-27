import 'package:currency_convertor/constants/colors.dart';
import 'package:currency_convertor/constants/dimension.dart';
import 'package:currency_convertor/models/currency_name.dart';
import 'package:currency_convertor/widgets/dropdown.dart';
import 'package:flutter/material.dart';


class ConvertTextField extends StatefulWidget {
  final TextEditingController textFieldcontroller;
  final VoidCallback onTap;
  final CurrencyNames dropdownCurrencies;
  final String label; // from and to
  final String dropdownLabel;
  final ValueChanged<String> onCurrencyChanged;

  const ConvertTextField({
    super.key,
    required this.textFieldcontroller,
    required this.onTap,
    required this.dropdownCurrencies,
    required this.label,
    required this.dropdownLabel,
    required this.onCurrencyChanged});

  @override
  State<ConvertTextField> createState() => _ConvertTextFieldState();
}

class _ConvertTextFieldState extends State<ConvertTextField> {
  late String selectedDropdown;

  @override
  void initState() {
    super.initState();
    selectedDropdown = widget.dropdownLabel;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: Dimension.widthFactor*32,right: Dimension.widthFactor*32,top: Dimension.heightFactor*24),
      height: Dimension.heightFactor*92,
      width: Dimension.widthFactor*338,
      decoration: BoxDecoration(
        color: AppColors.mainPurpleColor,
        borderRadius: BorderRadius.all(Radius.circular(4)),
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
       crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(left:  Dimension.widthFactor*8),
            child: Row(
              children: [
                Icon(Icons.star_rate_rounded,
                size: Dimension.widthFactor*16,
                color: AppColors.textFieldColor,),
                SizedBox(
                  width: Dimension.widthFactor*4,
                ),
                Text(
                  widget.label,
                  style: TextStyle(
                    color: AppColors.textFieldColor,
                    fontSize: Dimension.widthFactor*16,
                    fontWeight: FontWeight.w500
                  ),),
                  SizedBox(
                  width: Dimension.widthFactor*4,
                ),
                /*Icon(Icons.star_rate_rounded,
                size: Dimension.widthFactor*16,
                color: AppColors.textFieldColor,),*/
              ],
            )),

          Row(
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
                          fontSize: 16,
                          color: AppColors.textFieldColor,
                          fontWeight: FontWeight.w500
                        ),
                        contentPadding:EdgeInsets.fromLTRB(8, 0, 16, 0),
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
                padding: EdgeInsets.only(left: 16,right: 16),
                decoration: BoxDecoration(
                  color: AppColors.backgroundColor,
                  borderRadius: BorderRadius.all(Radius.circular(2))
                ),
                  child: Dropdown(
                      currencies:widget.dropdownCurrencies,
                      selectedCountry: selectedDropdown,
                      onChanged: (value) {
                        setState(() {
                          selectedDropdown = value;
                        });
                      widget.onCurrencyChanged(value); // 
                      },)
              ),
            ],
          ),
        Container(
          padding: EdgeInsets.only(top: Dimension.heightFactor*2,bottom:Dimension.heightFactor*2,),
          width:Dimension.widthFactor*310,
          child: Align(
            alignment: AlignmentGeometry.topRight,
            child: Text(
              widget.dropdownCurrencies.names[selectedDropdown].toString(),
                style: TextStyle(
                 fontSize:Dimension.heightFactor*12,
                 color: AppColors.textFieldColor,
                 fontWeight: FontWeight.w500
              ),),
                        ),
        )
        ],
      ),
    );
  }
}