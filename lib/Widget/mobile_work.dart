import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MobileWork extends StatefulWidget{
  @override
  _mobileWorkState createState() => _mobileWorkState();
}

class _mobileWorkState extends State<MobileWork>{
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return ConstrainedBox(
        constraints: BoxConstraints.tightFor(
          width: size.width,
          height: size.height,
        ),
        child: Column(
          children: [
            SizedBox(
              height: size.height* 0.07,
            ),
             Row(
              children: [
                const Center(
                  child: VerticalDivider(
                    color: Color(0xff64FFDA),
                    thickness: 1.75,
                    width: 10.0,
                    indent: 10.0,
                    endIndent: 10.0,
                  ),
                ),
                Container(
                  child: const Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.pinkAccent,
                          child: FaIcon(
                            FontAwesomeIcons.laptopHouse,
                            color: Colors.white,
                          ),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.redAccent,
                          child: FaIcon(
                            FontAwesomeIcons.freeCodeCamp,
                            color: Colors.white,
                          ),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.brown,
                          child: FaIcon(
                            FontAwesomeIcons.laptopCode,
                            color: Colors.white,
                          ),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.deepOrangeAccent,
                          child: FaIcon(
                            FontAwesomeIcons.coffee,
                            color: Colors.white,
                          ),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.deepPurpleAccent,
                          child: FaIcon(
                            FontAwesomeIcons.dev,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: SizedBox(
                height: size.height * 1.7,
                child: MobileWork(),
              ),
            ),
          ],
        ),
    );
  }
  
}
