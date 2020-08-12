//import 'dart:html';

import 'package:flutter/material.dart';
//import 'package:q_app_new/Tirgul_files/Tirgul/tirgul1.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:q_app_new/Tirgul_files/Tirgul/Btns.dart';



class NextBtn extends StatefulWidget{
  final Widget bbtn;
  final String nextBtn = 'lib/Tirgul_files/Tirgul/__graynext.png';//'lib/Tirgul_files/Tirgul/graynext.svg';

  NextBtn({Key key, @required this.bbtn}) : super(key : key);
  _NextBtn createState() => _NextBtn();
  }
  
 class _NextBtn extends State<NextBtn>{
   @override

   Widget build(BuildContext ctx)
   {
     if(nextBtn.contains("svg"))
     {
     return Stack(
       
       children:[   
       SvgPicture.asset(nextBtn,height: 50,width: 50,),
       Text("someText"),
       widget.bbtn

       ]);
     }
     else
     {
        return Stack(
       
       children:[   
       Image.asset(nextBtn,height: 100,width: MediaQuery.of(context).size.width -50,),
       widget.bbtn

       ]);
     }
 
       
   }
}
