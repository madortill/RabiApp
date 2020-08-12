import 'package:flutter/material.dart';
import 'package:q_app_new/start_page.dart';
import 'package:flutter_svg/flutter_svg.dart';


class SignalD extends StatefulWidget{
  final Widget bbtn;
  final String signalD = 'lib/Start_page_need/signal.svg';

  SignalD({Key key, @required this.bbtn}) : super(key : key);
  _SignalD createState() => _SignalD();
  }
  
 class _SignalD extends State<SignalD>{
   @override

   Widget build(BuildContext ctx)
   {
     return Column(
       children:[   
       SvgPicture.asset(signalD,height: 54,width: 54),
       widget.bbtn

       ]);
       
   }
}
