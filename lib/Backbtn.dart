import 'package:flutter/material.dart';
import 'package:q_app_new/start_page.dart';
import 'package:flutter_svg/flutter_svg.dart';


class BackBTN extends StatefulWidget{
  final Widget bbtn;
  final String backBTN = 'lib/Start_page_need/Back_btn.svg';

  BackBTN({Key key, @required this.bbtn}) : super(key : key);
  _BackBTN createState() => _BackBTN();
  }
  
 class _BackBTN extends State<BackBTN>{
   @override

   Widget build(BuildContext ctx)
   {
     return Column(
       children:[   
       SvgPicture.asset(backBTN,height: 54,width: 54),
       widget.bbtn

       ]);
       
   }
}
