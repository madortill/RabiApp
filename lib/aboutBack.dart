import 'package:flutter/material.dart';
import 'package:q_app_new/About.dart';
import 'package:flutter_svg/flutter_svg.dart';


class AboutBackBTN extends StatefulWidget{
  final Widget bbtn;
  final String backBTN = 'lib/About_page_need/back_btn_about.svg';

  AboutBackBTN({Key key, @required this.bbtn}) : super(key : key);
  _AboutBackBTN createState() => _AboutBackBTN();
  }
  
 class _AboutBackBTN extends State<AboutBackBTN>{
   @override

   Widget build(BuildContext ctx)
   {
     return Column(
       children:[

       SizedBox(height: 17,),
       SvgPicture.asset(backBTN,height: 50,width: 50),
       widget.bbtn

       ]);
       
   }
}
