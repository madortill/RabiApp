import 'package:flutter/material.dart';
//import 'package:q_app_new/Tirgul_files/Tirgul/tirgul1.dart';
//import 'package:q_app_new/Tirgul_files/Tirgul/tirgul2.dart';
//import 'package:q_app_new/Tirgul_files/Tirgul/tirgul3.dart';

import 'package:q_app_new/Tirgul_files/Tirgul/Btns.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:video_player/video_player.dart';


class SackBTN_b2 extends StatefulWidget{
  final Widget bbtn;
  final String sackBTN_b2 = 'lib/Tirgul_files/Tirgul/Select_btn_black.svg';

  SackBTN_b2({Key key, @required this.bbtn}) : super(key : key);
  _SackBTN_b createState() => _SackBTN_b();
  }
  
 class _SackBTN_b extends State<SackBTN_b2>{
   @override

   Widget build(BuildContext ctx)
   {
     if(sackBTN_b2.contains("svg"))
         {
        return Column(
          children:[   
            Align(
              alignment: Alignment.centerLeft,
          child: SvgPicture.asset(sackBTN_b2,height: 30,width: 30),
            ),
          widget.bbtn

          ]);
         }
      else
      {
              return Column(
          children:[   
            Align(
              alignment: Alignment.centerLeft,
          child: Image.asset(sackBTN_b2,height: 30,width: 30),
            ),
          widget.bbtn

          ]);
      }
       
   }
}
// class VideoP extends StatefulWidget
// {
  
//   VideoState createState() => VideoState();
// }
// class VideoState extends State<VideoP>
// {
//   VideoPlayerController playerController;
//   VoidCallback listener;
//   @override
//   Widget build(BuildContext ctx)
//   {
//     return Scaffold(

//     );
//   }
// }
