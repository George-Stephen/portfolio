import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_portfolio/Widget/MobileWorkBox.dart';
import 'package:my_portfolio/Widget/custom_text.dart';

class MobileWork extends StatefulWidget {
  @override
  _MobileWorkState createState() => _MobileWorkState();
}

class _MobileWorkState extends State<MobileWork> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return ConstrainedBox(
        constraints: BoxConstraints.tightFor(
          width: size.width * 2.0,
          height: size.height * 2.0,
        ),
        child: Column(
          children: [
            Expanded(
                child: Row(
                  children: [
                    SizedBox(
                      height: size.height * 0.07,
                    ),
                    Expanded(
                        flex: 1,
                        child: SizedBox(
                          height: size.height * 1.2,
                            child: Stack(
                              children: [
                                const Center(
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
                                      )
                                  ),
                                )
                              ],
                            ),
                        )
                    ),
                    Expanded(
                        flex: 2,
                        child: Container(
                          height: size.height * 2.0,
                          child: const MobileWorkBox(),
                        )
                    )
                  ],
                )
            ),
          ],
        ),
    );
  }
}