import 'package:currency_convertor/constants/dimension.dart';
import 'package:currency_convertor/widgets/convert_btn.dart';
import 'package:currency_convertor/widgets/convert_text_field.dart';
import 'package:currency_convertor/widgets/numpad.dart';
import 'package:flutter/material.dart';

enum ActiveField {
  from,
  to,
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

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
        ConvertTextField(textFieldcontroller: fromtextController,
        onTap: () {
          setState(() {
            activeField = ActiveField.from;
          });
        },),
        ConvertTextField(textFieldcontroller: totextController,
        onTap: () {
          setState(() {
            activeField = ActiveField.to;
          });
        },),
        SizedBox(
          height: Dimension.heightFactor*24,
        ),
        ConvertBtn(),
         SizedBox(
          height: Dimension.heightFactor*24,
        ),
        Numpad(numpadController: activeField == ActiveField.from?fromtextController:totextController)
      ],
    );
  }
}