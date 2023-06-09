import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_portfolio/Widget/custom_text.dart';

import '../Widget/work_box.dart';

class WorkEducation extends StatefulWidget{
  @override
  _WorkState createState() => _WorkState();
}
class _WorkState extends State<WorkEducation> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return ConstrainedBox(
      constraints: BoxConstraints.tightFor(
        width: size.width,
        height: size.height * 1.4,
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomText(
                text: "02.",
                textsize: 20.0,
                color: Color(0xff413CFD),
                fontWeight: FontWeight.w700,
                letterSpacing: 3.0,
              ),
              SizedBox(
                width: 12.0,
              ),
              CustomText(
                text: "Where I've Worked",
                textsize: 26.0,
                color: Color(0xffCCD6F6),
                fontWeight: FontWeight.w700,
                letterSpacing: 3.0,
              ),
              SizedBox(
                width: size.width * 0.01,
              ),
              Container(
                width: size.width / 4,
                height: 1.10,
                color: Color(0xff303C55),
              ),
            ],
          ),
          SizedBox(
            height: size.height * 0.07,
          ),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                    height: size.height * 1.2,
                    //color: Colors.indigo,
                    child: Stack(
                      children: [
                        Center(
                          child: VerticalDivider(
                            color: Color(0xff413CFD),
                            thickness: 1.75,
                            width: 10,
                            indent: 10,
                            endIndent: 10,
                          ),
                        ),
                        Container(
                          child: const Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Color(0xff727074),
                                    child: FaIcon(FontAwesomeIcons.laptopHouse,
                                        color: Colors.white),
                                  ),
                                  CircleAvatar(
                                    backgroundColor: Color(0xff727074),
                                    child: FaIcon(FontAwesomeIcons.freeCodeCamp,
                                        color: Colors.white),
                                  ),

                                  CircleAvatar(
                                    backgroundColor: Color(0xff727074),
                                    child: FaIcon(FontAwesomeIcons.coffee,
                                        color: Colors.white),
                                  ),
                                  CircleAvatar(
                                    backgroundColor: Color(0xff727074),
                                    child: FaIcon(FontAwesomeIcons.laptopCode,
                                        color: Colors.white),
                                  ),
                                  CircleAvatar(
                                    backgroundColor: Color(0xff727074),
                                    child: FaIcon(FontAwesomeIcons.graduationCap,
                                        color: Colors.white),
                                  ),
                                  CircleAvatar(
                                    backgroundColor: Color(0xff727074),
                                    child: FaIcon(FontAwesomeIcons.dev,
                                        color: Colors.white),
                                  ),
                                ],
                              )),
                        )
                      ],
                    )),
              ),
              Expanded(
                  flex: 4,
                  child: Container(
                    height: size.height * 1.2,
                    child: const WorkBox(),
                  ))
            ],
          )
        ],
      ),
    );
  }
}