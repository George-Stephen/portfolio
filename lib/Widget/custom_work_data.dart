import 'package:flutter/material.dart';

class CustomWorkData extends StatelessWidget{
  final String title;
  final String subTitle;
  final String duration;

  const CustomWorkData({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.duration
  }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget> [
        Text(
            title,
            style: const TextStyle(
              fontSize: 22,
              color: Color(0xffCCD6F6),
              fontWeight: FontWeight.w700,
            ),
        ),
        const SizedBox(
          height: 6.0,
        ),
        Text(
            subTitle,
            style: TextStyle(
              fontSize: 14,
              color: const Color(0xffCCD6F6).withOpacity(0.5),
              fontWeight: FontWeight.w600,
            ),
        ),
        const SizedBox(
          height: 6.0,
        ),
        Text(
            duration,
            style: TextStyle(
              fontSize: 12,
              color: const Color(0xffCCD6F6).withOpacity(0.5),
              fontWeight: FontWeight.w700,
            ),
        ),
      ],
    );
  }
}