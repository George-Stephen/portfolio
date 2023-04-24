import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_portfolio/Widget/custom_text.dart';

class FeatureProject extends StatelessWidget{
  final String imagePath,projectTitle,projectDesc,tech1,tech2,tech3;
  final Function ontab;

  FeatureProject({
    required this.imagePath,
    required this.projectTitle,
    required this.projectDesc,
    required this.tech1,
    required this.tech2,
    required this.tech3,
    required this.ontab
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height/0.999,
      width: size.width -100,
      child: Column(
        children: [
          Container(
            height: size.height - 100,
            width: size.width - 84,
            child: Stack(
              children: [
                Positioned(
                  top: size.height * 0.02,
                  left: 20.0,
                  child: Container(
                    height: size.height * 0.20,
                    width: size.width * 0.5,
                    child: Image(
                      fit: BoxFit.contain,
                      image: AssetImage(imagePath),
                    ),
                  ),
                ),
                Positioned(
                  top: 16.0,
                  right: 10.0,
                  child: Container(
                    height: size.height * 0.10,
                    width: size.width * 0.25,
                    color: const Color(0xff172A45),
                    child: Wrap(
                      alignment: WrapAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: CustomText(
                            text: projectDesc,
                            textsize: 16.0,
                            color: Colors.white.withOpacity(0.4),
                            letterSpacing: 0.75,
                            fontWeight: FontWeight.w700,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 16.0,
                  right: 10.0,
                  child: Container(
                    height: size.height * 0.10,
                    width: size.width * 0.25,
                    color: const Color(0xff172A45),
                    child: Wrap(
                      alignment: WrapAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: CustomText(
                            text: projectTitle,
                            textsize: 27.0,
                            color: Colors.grey,
                            letterSpacing: 1.75,
                            fontWeight: FontWeight.w700,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: size.height * 0.42,
                  right: 10.0,
                  child: SizedBox(
                    height: size.height * 0.08,
                    width: size.width * 0.25,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        CustomText(
                            text: tech1 ?? "",
                            textsize: 14,
                            color: Colors.grey,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1.75),
                        const SizedBox(
                          width: 16.0,
                        ),
                        CustomText(
                            text: tech2 ?? "",
                            textsize: 14,
                            color: Colors.grey,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1.75),
                        const SizedBox(
                          width: 16.0,
                        ),
                        CustomText(
                            text: tech3 ?? "" ,
                            textsize: 14,
                            color: Colors.grey,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1.75),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: size.height * 0.42,
                  right: 10.0,
                  child: Container(
                    height: size.height * 0.08,
                    width: size.width * 0.25,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                            onPressed: ontab(),
                            icon: const FaIcon(FontAwesomeIcons.github),
                            color: Colors.white.withOpacity(0.3),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

}