import 'package:currency_convertor/constants/dimension.dart';
import 'package:currency_convertor/models/currency_name.dart';
import 'package:currency_convertor/models/currency_rate.dart';
import 'package:currency_convertor/widgets/convert_btn.dart';
import 'package:currency_convertor/widgets/convert_text_field.dart';
import 'package:currency_convertor/widgets/numpad.dart';
import 'package:currency_convertor/widgets/round_converting_btn.dart';
import 'package:flutter/material.dart';

enum ActiveField {
  from,
  to,
}

class HomePage extends StatefulWidget {
  final CurrencyNames allcurrencies;
  final ExchangeRateModel rateChange;
  const HomePage({
    super.key,
    required this.allcurrencies,
    required this.rateChange});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController fromtextController = TextEditingController();
  final TextEditingController totextController = TextEditingController();
  ActiveField activeField = ActiveField.from;


  @override
  void dispose() {
    fromtextController.dispose();
    totextController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: Dimension.heightFactor*8,
        ),
        Stack(
          children:[ 
            Column(
              children: [
                ConvertTextField(textFieldcontroller: fromtextController,
                  onTap: () {
                    setState(() {
                    activeField = ActiveField.from;
                  });
                },dropdownCurrencies:widget.allcurrencies),
              ConvertTextField(textFieldcontroller: totextController,
                onTap: () {
                  setState(() {
                  activeField = ActiveField.to;
                  });
              },dropdownCurrencies:widget.allcurrencies,),
              ],
            ),
            Positioned(
              top: Dimension.heightFactor*95,
              left: Dimension.widthFactor*203,
              child: RoundConvertingBtn())
        ]),
        SizedBox(
          height: Dimension.heightFactor*24,
        ),
        ConvertBtn(rateChangedata:widget.rateChange,),
         SizedBox(
          height: Dimension.heightFactor*24,
        ),
        Numpad(numpadController: activeField == ActiveField.from?fromtextController:totextController)
      ],
    );
  }
}