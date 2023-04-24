import 'package:flutter/widgets.dart';
import 'package:my_portfolio/UI/home_page.dart';
import 'package:my_portfolio/UI/mobile_home.dart';

class Home extends StatefulWidget{
  @override
  _HomeState createState() => _HomeState();
}
class _HomeState extends State<Home>{
  @override
  Widget build(BuildContext context){
    return LayoutBuilder(
        builder: (Context,constraints){
          if(constraints.maxWidth >=1000){
            return HomePage();
          }else{
            return MobileHome();
          }
        });
  }
}