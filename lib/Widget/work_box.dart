import 'package:flutter/material.dart';
import 'package:my_portfolio/Widget/custom_work_data.dart';

class WorkBox extends StatelessWidget{
  const WorkBox({super.key});

  @override
  Widget build(BuildContext context){
    return const Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        CustomWorkData(
            title: "Murang'a High School - Student" ,
            subTitle: "I acquired my national High school certificate from Murang'a High school, where i pursued a course of "
                "Computer Science along with the sciences and languages. That was what sparked my interest in Software Engineering.",
            duration: "2016-2019"),
        CustomWorkData(
            title: "Moringa School- Student" ,
            subTitle: "I completed a full Software engineering course from Moringa School, covering the basic and fundamental"
                " concepts of mobile and web programming",
            duration: "February 2020 - July 2020"),
        CustomWorkData(
            title: "AmonAfrique Services Limited - Computer Technician" ,
            subTitle: "I volunteered there right after I completed my course at Moringa School.I was hired as an intern "
                "where I was able to learn the fundamental concepts of Computer hardware technicians",
            duration: "July 2020 - November 2020"),
        CustomWorkData(
            title: "Technote Limited - Junior Software Engineer" ,
            subTitle: "Working at Technote Limited was my debut into the field of Software Engineering.I worked there for six months"
                "where I was able to utilize and grow management and programming skills, becoming an asset to the organization",
            duration: "November 2020 - April 2021"),
        CustomWorkData(
            title: "Strathmore University - Student" ,
            subTitle: "I am currently pursuing a Bachelor's degree in Informatics and Computer Science at "
                "Strathmore University",
            duration: "2021- Present"),
        CustomWorkData(
            title: "Freelancer - Flutter/Android mobile app developer | UI/UX Designer" ,
            subTitle: "Android/Flutter developer and an experienced programmer who yearns to grow in the field of"
                " Software Engineering with an extensive history of management and developing efficient solutions."
                "I am skilled in Google's Flutter/Dart, Database management and Web development on a grand scale. If you are"
                "seeking someone that you can work with hand in hand to design and develop your application on time and "
                "with an affordable budget,then please contact me. I have been developing software for 2+ years and take pride in what I do.",
            duration: "November 2021 - Present"),
      ],
    );
  }
}

