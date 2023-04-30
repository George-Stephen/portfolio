import 'package:flutter/material.dart';
import 'package:my_portfolio/Widget/custom_text.dart';

class About extends StatelessWidget {
  Widget technology(BuildContext context, String text) {
    return Expanded(
        flex: 1,
        child: Row(
          children: [
            Icon(
              Icons.skip_next,
              color: Color(0xff413CFD).withOpacity(0.6),
              size: 14.0,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.01,
            ),
            Text(
              text,
              style: TextStyle(
                color: Color(0xff717C99),
                letterSpacing: 1.75,
              ),
            )
          ],
    ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width:size.width - 100,
      child: Row(
        children: [
          //About me
          Container(
            height: size.height * 0.9,
            width: size.width / 2 - 100,
            child: Column(
              children: [
                //About me title
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomText(
                      text: "01.",
                      textsize: 20.0,
                      color: Color(0xff413CFD),
                      fontWeight: FontWeight.w700,
                      letterSpacing: 3.0,
                    ),
                    SizedBox(
                      width: 12.0,
                    ),
                    CustomText(
                      text: "About Me",
                      textsize: 26.0,
                      color: Color(0xffBEBEC0),
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

                //About me desc
                Wrap(
                  children: [
                    CustomText(
                      text:
                      "Hello! I'm George Stephen W, a Freelancer based in Kikuyu, KE.\n\nI enjoy creating things that thrive on the internet, whether that be websites, mobile applications, or anything in between. My goal is to always grow within the field of Software Engineering and build products that provide"
                          "efficient and perfect solutions.\n\n",
                      textsize: 16.0,
                      color: Color(0xff828DAA),
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.75,
                    ),
                    CustomText(
                      text:
                      "Currently, I am pursuing my Bachelor's degree in Informatics and Computer science at Strathmore University, as well as doing freelancing where I work on a wide variety of interesting and meaningful projects on a daily basis.\n\n",
                      textsize: 16.0,
                      color: Color(0xff828DAA),
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.75,
                    ),
                    CustomText(
                      text:
                      "Here are a few technologies/ I've been acquired since I started:\n\n",
                      textsize: 16.0,
                      color: Color(0xff828DAA),
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.75,
                    ),
                  ],
                ),

                Container(
                  height: size.height * 0.15,
                  width: size.width,
                  child: Wrap(
                    children: [
                      SizedBox(
                        width: size.width * 0.25,
                        height: size.height * 0.15,
                        child: Column(
                          children: [
                            technology(context, "Flutter/Dart"),
                            technology(context, "UI/UX design"),
                            technology(context, "Android/Java"),
                            technology(context, "Adaptive learning"),
                          ],
                        ),
                      ),
                      Container(
                        width: size.width * 0.25,
                        height: size.height * 0.15,
                        child: Column(
                          children: [
                            technology(context, "HTML & CSS"),
                            technology(context, "Python"),
                            technology(context, "Git/Github"),
                            technology(context, "CI/CD"),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),

          //Profile Image
          Expanded(
            child: Container(
              height: size.height / 1.5,
              width: size.width / 2 - 100,
              // color: Colors.white,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    top: size.height * 0.12,
                    left: size.width * 0.120,
                    child: Card(
                      color: Color(0xff413C7D),
                      child: Container(
                        margin: EdgeInsets.all(2.75),
                        height: size.height / 2,
                        width: size.width / 5,
                        color: Color(0xff3B394C),
                      ),
                    ),
                  ),
                  CustomImageAnimation()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomImageAnimation extends StatefulWidget {
  const CustomImageAnimation({super.key});

  @override
  _CustomImageAnimationState createState() => _CustomImageAnimationState();
}

class _CustomImageAnimationState extends State<CustomImageAnimation> {
  Color customImageColor = Color(0xff3B394C).withOpacity(0.5);
  // ignore: unused_field
  int _enterCounter = 0;
  // ignore: unused_field
  int _exitCounter = 0;
  double x = 0.0;
  double y = 0.0;

  void _incrementEnter(PointerEvent details) {
    setState(() {
      _enterCounter++;
    });
  }

  void _incrementExit(PointerEvent details) {
    setState(() {
      customImageColor = Color(0xff3B394C).withOpacity(0.5);
      _exitCounter++;
    });
  }

  void _updateLocation(PointerEvent details) {
    setState(() {
      customImageColor = Colors.transparent;
      x = details.position.dx;
      y = details.position.dy;
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return MouseRegion(
      onEnter: _incrementEnter,
      onHover: _updateLocation,
      onExit: _incrementExit,
      child: Stack(
        children: [
          Container(
            height: size.height / 2,
            width: size.width / 5,
            color: Color(0xff3B394C),
            child: Image.network("https://i.postimg.cc/xTGq0QHc/me.jpg"),
          ),
          Container(
            height: size.height / 2,
            width: size.width / 5,
            color: customImageColor,
          ),
        ],
      ),
    );
  }
}