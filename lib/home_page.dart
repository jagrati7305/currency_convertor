import 'package:currency_convertor/constants/dimension.dart';
import 'package:currency_convertor/widgets/convert_btn.dart';
import 'package:currency_convertor/widgets/convert_text_field.dart';
import 'package:currency_convertor/widgets/numpad.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: Dimension.heightFactor*8,
        ),
        ConvertTextField(),
        ConvertTextField(),
        SizedBox(
          height: Dimension.heightFactor*24,
        ),
        ConvertBtn(),
         SizedBox(
          height: Dimension.heightFactor*24,
        ),
        Numpad()
      ],
    );
  }
}