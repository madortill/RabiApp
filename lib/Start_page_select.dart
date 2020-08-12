import 'package:flutter/material.dart';
import 'package:q_app_new/start_page.dart';
import 'package:flutter_svg/flutter_svg.dart';


class SackBTN extends StatefulWidget{
  final Widget bbtn;
  final String sackBTN = 'lib/Start_page_need/selectS.svg';

  SackBTN({Key key, @required this.bbtn}) : super(key : key);
  _SackBTN createState() => _SackBTN();
  }
  
 class _SackBTN extends State<SackBTN>{
   @override

   Widget build(BuildContext ctx)
   {
     return Column(
       children:[   
       SvgPicture.asset(sackBTN,height: 54,width: 54,alignment: Alignment.center,),
       widget.bbtn

       ]);
       
   }
}
