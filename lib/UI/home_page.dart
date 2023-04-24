import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_portfolio/UI/work_education.dart';
import 'package:my_portfolio/Widget/app_bar.dart';
import 'package:my_portfolio/Widget/custom_text.dart';
import 'package:my_portfolio/models/contact_methods.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

import 'about.dart';

class HomePage extends StatefulWidget{
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<HomePage>{
  Method method = Method();
  late AutoScrollController _autoScrollController;
   final scrollDirection = Axis.vertical;

  bool isExpanded = true;

  bool get _isAppBarExpanded {
    return _autoScrollController.hasClients && _autoScrollController.offset > (160 - kToolbarHeight);
  }

  @override
  void initState(){
    _autoScrollController = AutoScrollController(
      viewportBoundaryGetter: () => Rect.fromLTRB(0,0,0, MediaQuery.of(context).padding.bottom),
      axis: scrollDirection)..addListener(
          () => _isAppBarExpanded
          ? isExpanded != false
          ? setState(
            () {
          isExpanded = false;
          if (kDebugMode) {
            print('setState is called');
          }
        },
      )
          : {}
          : isExpanded != true
          ? setState(() {
        if (kDebugMode) {
          print('setState is called');
        }
        isExpanded = true;
      })
          : {},
    );
    super.initState();
  }

  Future _scrollToIndex(int index) async{
    await _autoScrollController.scrollToIndex(index, preferPosition: AutoScrollPosition.begin);
    _autoScrollController.highlight(index);
  }

  Widget _wrapScrolling (int index,Widget child){
    return AutoScrollTag(
      key: ValueKey(index),
      controller: _autoScrollController,
      index: index,
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xff3B394C),
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        primary: true,
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              width: size.width,
              height: size.height * 0.14,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: [
                    IconButton(
                        onPressed: (){},
                        icon: const Icon(
                          Icons.change_history,
                          size: 32.0,
                          color: Color(0xff413CFD),
                        )
                    ),
                    Spacer(),
                     Expanded(
                        child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0),
                            child: DefaultTabController(
                                length: 4,
                                child: TabBar(
                                    indicatorColor: Colors.transparent,
                                    tabs: [
                                      Tab(
                                          child: App_Bar(
                                            text: "About",
                                          ),
                                        ),
                                      Tab(
                                        child: App_Bar(
                                          text: "Exploits",
                                        ),
                                      ),
                                      Tab(
                                        child: App_Bar(
                                          text: "Projects",
                                        ),
                                      ),
                                      Tab(
                                        child: App_Bar(
                                          text: "Contact",
                                        ),
                                      ),

                                    ],
                                    onTap: (index) async{
                                      _scrollToIndex(index);
                                    },
                                ),
                            ),
                        ),
                    ),
                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
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
                            child: TextButton(
                              onPressed: (){
                                method.launchURL("");
                              },
                              child: const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                                  child: Text(
                                    "Resume",
                                    style: TextStyle(
                                      color: Color(0xffBAD0D0),
                                    ),
                                  ),
                              ),
                            ),
                          ),
                        ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              children: [
                Container(
                  width: size.width * 0.09,
                  height: size.height - 83,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
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
                      Padding(
                          padding: const EdgeInsets.only(top: 16.0),
                          child: Container(
                            height: size.height *0.20,
                            width: 2,
                            color : Colors.grey.withOpacity(0.4),
                          ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                    child: Container(
                      height: size.height -82,
                      child: Padding(
                        padding:
                        const EdgeInsets.symmetric(horizontal: 16.0),
                        child: CustomScrollView(
                          controller: _autoScrollController,
                          slivers:  <Widget>[
                            SliverList(
                                  delegate: SliverChildListDelegate([
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: size.height * 0.06,
                                        ),
                                        CustomText(
                                          text: 'Hi! My name is ',
                                          color: const Color(0xff413CFD),
                                          textsize: 16.0,
                                          fontWeight: FontWeight.normal,
                                          letterSpacing: 3.0,
                                        ),
                                        SizedBox(
                                          height: 6.0,
                                        ),
                                        CustomText(
                                            text: "George Stephen W.",
                                            textsize: 68.0,
                                            color: const Color(0xff828DAA),
                                            fontWeight: FontWeight.w900,
                                            letterSpacing: 3.0),
                                        SizedBox(
                                          height: 4.0,
                                        ),
                                        CustomText(
                                            text: "I build mobile & Web applications.",
                                            textsize: 56.0,
                                            color: const Color(0xff828DAA).withOpacity(0.6),
                                            fontWeight: FontWeight.w700,
                                            letterSpacing: 3.0),
                                        SizedBox(
                                          height: size.height * 0.04,
                                        ),
                                        const Wrap(
                                          children: [
                                            Text(
                                              "I'm a freelancer based in Kikuyu, Kiambu ,specializing in \nbuilding (and occasionally designing) exceptional websites, \nmobile applications, and everything in between.",
                                              style: TextStyle(
                                                color: Color(0xff828DAA),
                                                fontSize: 16.0,
                                                letterSpacing: 2.75,
                                                wordSpacing: 0.75,
                                              ),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: size.height *.12,
                                        ),
                                        InkWell(
                                          onTap: () {
                                            method.launchEmail();
                                          },
                                          hoverColor:
                                          const Color(0xff413CFD).withOpacity(0.2),
                                          borderRadius: BorderRadius.circular(4.0),
                                          child: Container(
                                            alignment: Alignment.center,
                                            height: size.height * 0.09,
                                            width: size.width * 0.14,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: Color(0xff413CFD),
                                              ),
                                              borderRadius:
                                              BorderRadius.circular(4.0),
                                            ),
                                            child: const Text(
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
                                        SizedBox(
                                          height: size.height * 0.20,
                                        ),
                                      ],
                                    ),
                                    _wrapScrolling(0, About()),
                                    SizedBox(
                                      height: size.height * 0.02,
                                    ),
                                    _wrapScrolling(0, WorkEducation()),
                                  ]
                                ),
                            ),
                          ],
                        ),
                      ),
                    ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}