import 'package:flutter/material.dart';
import 'package:q_app_new/options_choose.dart';
import 'package:flutter_svg/flutter_svg.dart';


class PopUpBTN extends StatefulWidget{
  final Widget bbtn;
  final String popBTN = 'lib/options_choose_page_need/pop_up_y.svg';

  PopUpBTN({Key key, @required this.bbtn}) : super(key : key);
  _PopUpBTN createState() => _PopUpBTN();
  }
  
 class _PopUpBTN extends State<PopUpBTN>{
   @override

   Widget build(BuildContext ctx)
   {
     return Column(
       children:[

       
       SvgPicture.asset(popBTN,height: 54,width: 54),
       widget.bbtn

       ]);
       
   }
}
