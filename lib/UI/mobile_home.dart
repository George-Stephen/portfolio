import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_portfolio/UI/work_education.dart';
import 'package:my_portfolio/Widget/MobileWorkBox.dart';
import 'package:my_portfolio/Widget/app_bar.dart';
import 'package:my_portfolio/Widget/custom_text.dart';
import 'package:my_portfolio/Widget/main_title.dart';
import 'package:my_portfolio/Widget/mobile_work.dart';
import 'package:my_portfolio/models/contact_methods.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

import '../Widget/mobile_project.dart';
import 'about.dart';

class MobileHome extends StatefulWidget {
  @override
  _MobileHomeState createState() => _MobileHomeState();
}

class _MobileHomeState extends State<MobileHome> {
  Widget technology(BuildContext context, String text) {
    return Row(
      children: [
        Icon(
          Icons.skip_next,
          color: Color(0xff413CFD).withOpacity(0.6),
          size: 14.0,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.04,
        ),
        Text(
          text,
          style: TextStyle(
            color: Color(0xff717C99),
            letterSpacing: 1.75,
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    Method method = Method();
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xff3B394C),
      endDrawer: Drawer(
          elevation: 6.0,
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                  currentAccountPicture: CircleAvatar(
                    child: Icon(Icons.person),
                  ),
                  accountName: Text("George Stephen Wangui"),
                  accountEmail: Text("georgesteve561@gmail.com")),
              ListTile(
                title: Text("Share"),
                leading: Icon(Icons.share),
              ),
              ListTile(
                leading: Icon(Icons.group),
                title: Text("About"),
              ),
              Expanded(
                child: Text("Version 1.0.1"),
              )
            ],
          )),
      appBar: AppBar(
        backgroundColor: Color(0xff3B394C),
        elevation: 0.0,
        title: IconButton(
          icon: Icon(
            Icons.change_history,
            size: 32.0,
            color: Color(0xff413CFD),
          ),
          onPressed: () {},
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: size.height * 0.08,
              ),
              CustomText(
                text: 'Hi! My name is ',
                color: const Color(0xff413CFD),
                textsize: 20.0,
                fontWeight: FontWeight.normal,
                letterSpacing: 3.0,
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              CustomText(
                  text: "George Stephen W.",
                  textsize: 60.0,
                  color: const Color(0xff828DAA),
                  fontWeight: FontWeight.w900,
                  letterSpacing: 3.0),
              SizedBox(
                height: size.height * 0.04,
              ),
              CustomText(
                  text: "I build mobile & Web applications.",
                  textsize: 50.0,
                  color: const Color(0xff828DAA).withOpacity(0.6),
                  fontWeight: FontWeight.w700,
                  letterSpacing: 3.0),
              SizedBox(
                height: size.height * 0.04,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Wrap(
                  children: [
                    Text(
                      "I'm a freelancer based in Kikuyu, Kiambu ,specializing in \nbuilding (and occasionally designing) exceptional websites, \nmobile applications, and everything in between.",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15.0,
                        letterSpacing: 2.75,
                        wordSpacing: 0.75,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: size.height * 0.06,
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.0),
                ),
                color: Color(0xff413CFD),
                child: Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.all(0.75),
                  height: 56.0,
                  width: 160.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4.0),
                    color: Color(0xff3B394C),
                  ),
                  child: MaterialButton(
                    onPressed: () {
                      method.launchEmail();
                    },
                    hoverColor:
                    const Color(0xff413CFD).withOpacity(0.2),
                    child: Text(
                      "Get In Touch",
                      style: TextStyle(
                        color: Color(0xff413CFD),
                        letterSpacing: 2.75,
                        wordSpacing: 1.0,
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.08,
              ),

              //About me
              FittedBox(
                fit: BoxFit.cover,
                child: Container(
                  width: size.width,
                  //color: Colors.purple,
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
                            width: MediaQuery.of(context).size.width * 0.01,
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

                      SizedBox(
                        height: size.height * 0.06,
                      ),

                      Container(
                        width: size.width,
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                technology(context, "Flutter/Dart"),
                                technology(context, "UI/UX design"),
                                technology(context, "Android/Java"),
                                technology(context, "Adaptive learning"),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                technology(context, "HTML & CSS"),
                                technology(context, "Python"),
                                technology(context, "Git/Github"),
                                technology(context, "CI/CD"),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(
                height: size.height * 0.08,
              ),

              //Image
              Center(
                child: Container(
                  height: size.height * 0.6,
                  width: size.width * 0.7,
                  child: Stack(
                    children: [
                      Positioned(
                        top: 50,
                        right: 20,
                        left: 50.0,
                        child: Card(
                          color: Color(0xff413CFD),
                          child: Container(
                            margin: EdgeInsets.all(2.75),
                            height: size.height * 0.45,
                            width: size.width * 0.66,
                            color: Color(0xff3B394C),
                          ),
                        ),
                      ),
                      Container(
                        height: size.height / 0.5,
                        width: size.width / 0.6,
                        color: Color(0xff3B394C),
                        child: Image.network("https://i.postimg.cc/xTGq0QHc/me.jpg"),
                      ),
                      Container(
                        height: size.height * 0.5,
                        width: size.width * 0.6,
                        color: Color(0xff3B394C).withOpacity(0.5),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(
                height: size.height * 0.08,
              ),
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
                    textsize: 24.0,
                    color: Color(0xffCCD6F6),
                    fontWeight: FontWeight.w700,
                    letterSpacing: 2.5,
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
              MobileWork(),

              SizedBox(
                height: size.height * 0.08,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomText(
                    text: "03.",
                    textsize: 20.0,
                    color: Color(0xff413CFD),
                    fontWeight: FontWeight.w700,
                    letterSpacing: 2.0,
                  ),
                  SizedBox(
                    width: 12.0,
                  ),
                  CustomText(
                    text: "Projects I've developed",
                    textsize: 24.0,
                    color: Color(0xffCCD6F6),
                    fontWeight: FontWeight.w700,
                    letterSpacing: 2.5,
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

              FittedBox(
                fit: BoxFit.cover,
                child: Container(
                  width: size.width,
                  alignment: Alignment.center,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomText(
                            text: "04. What's next",
                            textsize: 16.0,
                            color: const Color(0xff413CFD),
                            fontWeight: FontWeight.w500,
                            letterSpacing: 3.0),
                        SizedBox(
                          height: 16.0,
                        ),
                        CustomText(
                            text: "Get in Touch",
                            textsize: 42.0,
                            color: const Color(0xffBAD0D0),
                            fontWeight: FontWeight.w700,
                            letterSpacing: 3.0),
                        Wrap(
                          children: [
                            Text(
                              "While I am currently looking for software developement opportunities, My inbox is \nalways open."
                                  "Whether you have a question or just want to connect, I'll do my \nbest to get back to you.",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: const Color(0xffBAD0D0).withOpacity(0.4),
                                letterSpacing: 0.75,
                                fontSize: 17.0,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 32.0,
                        ),
                        InkWell(
                          onTap: (){
                            method.launchEmail();
                          },
                          child: Card(
                            elevation: 4.0,
                            color: const Color(0xff413CFD),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6.0)
                            ),
                            child: Container(
                              margin: const EdgeInsets.all(0.85),
                              height: size.height * 0.07,
                              width: size.width * 0.20,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Color(0xff3B394C),
                                  borderRadius: BorderRadius.circular(6.0)
                              ),
                              child: const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 8.0),
                                child: Text(
                                  "Say hello",
                                  style: TextStyle(
                                    color: Color(0xffBAD0D0),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ]
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.07,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: (){
                      method.launchURL("https://github.com/George-Stephen");
                    },
                    icon: FaIcon(FontAwesomeIcons.github),
                    color: Color(0xffBAD0D0),
                    iconSize: 18.0,
                  ),
                  IconButton(
                    onPressed: (){
                      method.launchURL("https://www.instagram.com/george_steph05/");
                    },
                    icon: FaIcon(FontAwesomeIcons.instagram),
                    color: Color(0xffBAD0D0),
                    iconSize: 18.0,
                  ),
                  IconButton(
                    onPressed: (){
                      method.launchURL("https://www.linkedin.com/in/george-stephen-wangui/");
                    },
                    icon: FaIcon(FontAwesomeIcons.linkedin),
                    color: Color(0xffBAD0D0),
                    iconSize: 18.0,
                  ),
                  IconButton(
                    onPressed: (){
                      method.launchCaller();
                    },
                    icon: FaIcon(Icons.call),
                    color: Color(0xffBAD0D0),
                    iconSize: 18.0,
                  ),
                  IconButton(
                    onPressed: (){
                      method.launchEmail();
                    },
                    icon: FaIcon(Icons.mail),
                    color: Color(0xffBAD0D0),
                    iconSize: 18.0,
                  ),
                ],
              ),
              Container(
                alignment: Alignment.center,
                height: MediaQuery.of(context).size.height /6,
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "Designed and built by George Stephen W.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color(0xffBAD0D0).withOpacity(0.4),
                      letterSpacing: 1.75,
                      fontSize: 14.0
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}