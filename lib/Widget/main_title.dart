import 'package:flutter/material.dart';
import 'package:my_portfolio/Widget/custom_text.dart';

class MainTitle extends StatelessWidget{
  final String number,text;
  const MainTitle({super.key, required this.number,required this.text});
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomText(
            text: number,
            textsize: 20.0,
            color: const Color(0xff413CFD),
            fontWeight: FontWeight.w700,
            letterSpacing: 3.0,),
          const SizedBox(
            height: 12.0,
          ),
          CustomText(
            text: text,
            textsize: 26.0,
            color: const Color(0xffCCD6F6),
            fontWeight: FontWeight.w700,
            letterSpacing: 3.0,
          ),
        const SizedBox(
          height: 26.0,
        ),
        Container(
          width: MediaQuery.of(context).size.width /4,
          height: 0.75,
          color: const Color(0xff303C55),
        ),
      ],
    );
  }}