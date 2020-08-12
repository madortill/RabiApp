import 'dart:convert';
// import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'Backbtn.dart';
import 'Start_page_select.dart';
import 'signalDraw.dart';
//pgs
import 'options_choose.dart' as letsfun;
import 'Lilmod.dart' as test;
import 'Globals.dart' as jsonLoader;
import 'main.dart' as main_page;

var _userData =  jsonLoader.Globals.loadAsset();  

//BTN TO GO BACK
final String backBTN = 'lib/Start_page_need/Back_btn.svg';
//BTN TO SELECT
final String sackBTN = 'lib/Start_page_need/selectS.svg';
//signal Draw
final String signalD = 'lib/Start_page_need/signal.svg';
//load all data from json

class SecondRoute extends StatelessWidget {
  @override
  
  Widget build(BuildContext context)  {     
    return FutureBuilder<dynamic>(
      future: jsonLoader.Globals.loadAsset(),
      builder: (BuildContext context, AsyncSnapshot<dynamic> userData) {  // AsyncSnapshot<Your object type>
      //  btnPressLilmod(context);
        if( userData.connectionState == ConnectionState.done){
          
             for(var a in userData.data["StartGamePage"] )
             {
              if(a["topic-1"] != null && !jsonLoader.Globals.GetTopic1Loadbool() && !jsonLoader.Globals.GetTopic1Loadbool())
                  {
                    jsonLoader.Globals.SetTopic1Name(a["name"]);
                      for(var b in a["topic-1"])
                      {
                        if(jsonLoader.Globals.GetSubTopic1_1Options().isEmpty && jsonLoader.Globals.GetSubTopic1Name1() == null)
                        {
                          jsonLoader.Globals.SetSubTopic1Name1(b["name"]);
                          jsonLoader.Globals.SetSubTopic1_1Options(b["sub-topic"]);
                          jsonLoader.Globals.SetTopic1Len();
                          continue;
                        }
                        else if(jsonLoader.Globals.GetSubTopic1_2Options().isEmpty && jsonLoader.Globals.GetSubTopic1Name2() == null)
                        {
                          jsonLoader.Globals.SetTopic1Len();
                          jsonLoader.Globals.SetSubTopic1Name2(b["name"]);
                          jsonLoader.Globals.SetSubTopic1_2Options(b["sub-topic"]);
                          continue;
                        }
                        else if(jsonLoader.Globals.GetSubTopic1_3Options().isEmpty && jsonLoader.Globals.GetSubTopic1Name3() == null)
                        {
                          jsonLoader.Globals.SetTopic1Len();
                          jsonLoader.Globals.SetSubTopic1Name3(b["name"]);
                          jsonLoader.Globals.SetSubTopic1_3Options(b["sub-topic"]);
                          continue;
                        }
                       else  if(jsonLoader.Globals.GetSubTopic1_4Options().isEmpty && jsonLoader.Globals.GetSubTopic1Name4() == null)
                        {
                          jsonLoader.Globals.SetTopic1Len();
                          jsonLoader.Globals.SetSubTopic1Name4(b["name"]);
                          jsonLoader.Globals.SetSubTopic1_4Options(b["sub-topic"]);
                          continue;
                        }
                        else if(jsonLoader.Globals.GetSubTopic1_5Options().isEmpty && jsonLoader.Globals.GetSubTopic1Name5() == null)
                        {
                          jsonLoader.Globals.SetTopic1Len();
                          jsonLoader.Globals.SetSubTopic1Name5(b["name"]);
                          jsonLoader.Globals.SetSubTopic1_5Options(b["sub-topic"]);
                          continue;
                        }
                        else if(jsonLoader.Globals.GetSubTopic1_6Options().isEmpty && jsonLoader.Globals.GetSubTopic1Name6() == null)
                        {
                          jsonLoader.Globals.SetTopic1Len();
                          jsonLoader.Globals.SetSubTopic1Name6(b["name"]);
                          jsonLoader.Globals.SetSubTopic1_6Options(b["sub-topic"]);
                          continue;
                        }
                        else if(jsonLoader.Globals.GetSubTopic1_7Options().isEmpty && jsonLoader.Globals.GetSubTopic1Name7() == null)
                        {
                          jsonLoader.Globals.SetTopic1Len();
                          jsonLoader.Globals.SetSubTopic1Name7(b["name"]);
                          jsonLoader.Globals.SetSubTopic1_7Options(b["sub-topic"]);
                          continue;
                        }
                        else if(jsonLoader.Globals.GetSubTopic1_8Options().isEmpty && jsonLoader.Globals.GetSubTopic1Name8() == null)
                        {
                          jsonLoader.Globals.SetTopic1Len();
                          jsonLoader.Globals.SetSubTopic1Name8(b["name"]);
                          jsonLoader.Globals.SetSubTopic1_8Options(b["sub-topic"]);
                          continue;
                        }
                        else if(jsonLoader.Globals.GetSubTopic1_9Options().isEmpty && jsonLoader.Globals.GetSubTopic1Name9() == null)
                        {
                          jsonLoader.Globals.SetTopic1Len();
                          jsonLoader.Globals.SetSubTopic1Name9(b["name"]);
                          jsonLoader.Globals.SetSubTopic1_9Options(b["sub-topic"]);
                          continue;
                        }
                        else if(jsonLoader.Globals.GetSubTopic1_10Options().isEmpty && jsonLoader.Globals.GetSubTopic1Name10() == null)
                        {
                          jsonLoader.Globals.SetTopic1Len();
                          jsonLoader.Globals.SetSubTopic1Name10(b["name"]);
                          jsonLoader.Globals.SetSubTopic1_10Options(b["sub-topic"]);
                          continue;
                        }
                      }
                      jsonLoader.Globals.SetTopic1Loadbool(true);
                  }
             
                 // print(jsonLoader.Globals.GetSubTopic1_1Options());
                  //load data from topic2
                  if(a["topic-2"] != null && !jsonLoader.Globals.GetTopic2Loadbool() && !jsonLoader.Globals.GetTopic2Loadbool())
                  {
                    jsonLoader.Globals.SetTopic2Name(a["name"]);
                      for(var b in a["topic-2"])
                    {
                      //                        if(jsonLoader.Globals.GetSubTopic1_1Options().isEmpty && jsonLoader.Globals.GetSubTopic1Name1() == null)
                       if(jsonLoader.Globals.GetSubTopic2_1Options().isEmpty && jsonLoader.Globals.GetSubTopic2Name1() == null)
                        {
                          jsonLoader.Globals.SetTopic2Len();
                          jsonLoader.Globals.SetSubTopic2Name1(b["name"]);
                          jsonLoader.Globals.SetSubTopic2_1Options(b["sub-topic"]);
                          continue;
                        }
                        else if(jsonLoader.Globals.GetSubTopic2_2Options().isEmpty && jsonLoader.Globals.GetSubTopic2Name2() == null)
                        {
                          jsonLoader.Globals.SetTopic2Len();
                          jsonLoader.Globals.SetSubTopic2Name2(b["name"]);
                          jsonLoader.Globals.SetSubTopic2_2Options(b["sub-topic"]);
                          continue;
                        }
                        else if(jsonLoader.Globals.GetSubTopic2_3Options().isEmpty && jsonLoader.Globals.GetsubTopic2Name3() == null)
                        {
                          jsonLoader.Globals.SetTopic2Len();
                          jsonLoader.Globals.SetSubTopic2Name3(b["name"]);
                          jsonLoader.Globals.SetSubTopic2_3Options(b["sub-topic"]);
                          continue;
                        }
                        else if(jsonLoader.Globals.GetSubTopic2_4Options().isEmpty && jsonLoader.Globals.GetsubTopic2Name4() == null)
                        {
                          jsonLoader.Globals.SetTopic2Len();
                          jsonLoader.Globals.SetSubTopic2Name4(b["name"]);
                          jsonLoader.Globals.SetSubTopic2_4Options(b["sub-topic"]);
                          continue;
                        }
                        else if(jsonLoader.Globals.GetSubTopic2_5Options().isEmpty && jsonLoader.Globals.GetsubTopic2Name5() == null)
                        {
                          jsonLoader.Globals.SetTopic2Len();
                          jsonLoader.Globals.SetSubTopic2Name5(b["name"]);
                          jsonLoader.Globals.SetSubTopic2_5Options(b["sub-topic"]);
                          continue;
                        }
                        else if(jsonLoader.Globals.GetSubTopic2_6Options().isEmpty && jsonLoader.Globals.GetsubTopic2Name6() == null)
                        {
                          jsonLoader.Globals.SetTopic2Len();
                          jsonLoader.Globals.SetSubTopic2Name6(b["name"]);
                          jsonLoader.Globals.SetSubTopic2_6Options(b["sub-topic"]);
                          continue;
                        }
                        else if(jsonLoader.Globals.GetSubTopic2_7Options().isEmpty && jsonLoader.Globals.GetsubTopic2Name7() == null)
                        {
                          jsonLoader.Globals.SetTopic2Len();
                          jsonLoader.Globals.SetSubTopic2Name7(b["name"]);
                          jsonLoader.Globals.SetSubTopic2_7Options(b["sub-topic"]);
                          continue;
                        }
                        else if(jsonLoader.Globals.GetSubTopic2_8Options().isEmpty && jsonLoader.Globals.GetsubTopic2Name8() == null)
                        {
                          jsonLoader.Globals.SetTopic2Len();
                          jsonLoader.Globals.SetSubTopic2Name8(b["name"]);
                          jsonLoader.Globals.SetSubTopic2_8Options(b["sub-topic"]);
                          continue;
                        }
                        else if(jsonLoader.Globals.GetSubTopic2_9Options().isEmpty && jsonLoader.Globals.GetsubTopic2Name9() == null)
                        {
                          jsonLoader.Globals.SetTopic2Len();
                          jsonLoader.Globals.SetSubTopic2Name9(b["name"]);
                          jsonLoader.Globals.SetSubTopic2_9Options(b["sub-topic"]);
                          continue;
                        }
                        else if(jsonLoader.Globals.GetSubTopic2_10Options().isEmpty && jsonLoader.Globals.GetsubTopic2Name10() == null)
                        {
                          jsonLoader.Globals.SetTopic2Len();
                          jsonLoader.Globals.SetSubTopic2Name10(b["name"]);
                          jsonLoader.Globals.SetSubTopic2_10Options(b["sub-topic"]);
                          continue;
                        }
                    }
                    jsonLoader.Globals.SetTopic2Loadbool(true);
                  }
                  //load data from topic3
                  if(a["topic-3"] != null && !jsonLoader.Globals.GetTopic3Loadbool() && !jsonLoader.Globals.GetTopic3Loadbool())
                  {
                    jsonLoader.Globals.SetTopic3Name(a["name"]);
                        for(var b in a["topic-3"])
                      {
                        
                       if(jsonLoader.Globals.GetSubTopic3_1Options().isEmpty && jsonLoader.Globals.GetSubTopic3Name1() == null)
                        {
                          jsonLoader.Globals.SetTopic3Len();
                          jsonLoader.Globals.SetSubTopic3Name1(b["name"]);
                          jsonLoader.Globals.SetSubTopic3_1Options(b["sub-topic"]);
                          continue;
                        }
                        else if(jsonLoader.Globals.GetSubTopic3_2Options().isEmpty && jsonLoader.Globals.GetSubTopic3Name2() == null)
                        {
                          jsonLoader.Globals.SetTopic3Len();
                          jsonLoader.Globals.SetSubTopic3Name2(b["name"]);
                          jsonLoader.Globals.SetSubTopic3_2Options(b["sub-topic"]);
                          continue;
                        }
                        else if(jsonLoader.Globals.GetSubTopic3_3Options().isEmpty && jsonLoader.Globals.GetsubTopic3Name3() == null)
                        {
                          jsonLoader.Globals.SetTopic3Len();
                          jsonLoader.Globals.SetSubTopic3Name3(b["name"]);
                          jsonLoader.Globals.SetSubTopic3_3Options(b["sub-topic"]);
                          continue;
                        }
                        else if(jsonLoader.Globals.GetSubTopic3_4Options().isEmpty && jsonLoader.Globals.GetsubTopic3Name4() == null)
                        {
                          jsonLoader.Globals.SetTopic3Len();
                          jsonLoader.Globals.SetSubTopic3Name4(b["name"]);
                          jsonLoader.Globals.SetSubTopic3_4Options(b["sub-topic"]);
                          continue;
                        }
                        else if(jsonLoader.Globals.GetSubTopic3_5Options().isEmpty && jsonLoader.Globals.GetsubTopic3Name5() == null)
                        {
                          jsonLoader.Globals.SetTopic3Len();
                          jsonLoader.Globals.SetSubTopic3Name5(b["name"]);
                          jsonLoader.Globals.SetSubTopic3_5Options(b["sub-topic"]);
                          continue;
                        }
                        else if(jsonLoader.Globals.GetSubTopic3_6Options().isEmpty && jsonLoader.Globals.GetsubTopic3Name6() == null)
                        {
                          jsonLoader.Globals.SetTopic3Len();
                          jsonLoader.Globals.SetSubTopic3Name6(b["name"]);
                          jsonLoader.Globals.SetSubTopic3_6Options(b["sub-topic"]);
                          continue;
                        }
                        else if(jsonLoader.Globals.GetSubTopic3_7Options().isEmpty && jsonLoader.Globals.GetsubTopic3Name7() == null)
                        {
                          jsonLoader.Globals.SetTopic3Len();
                          jsonLoader.Globals.SetSubTopic3Name7(b["name"]);
                          jsonLoader.Globals.SetSubTopic3_7Options(b["sub-topic"]);
                          continue;
                        }
                        else if(jsonLoader.Globals.GetSubTopic3_8Options().isEmpty && jsonLoader.Globals.GetsubTopic3Name8() == null)
                        {
                          jsonLoader.Globals.SetTopic3Len();
                          jsonLoader.Globals.SetSubTopic3Name8(b["name"]);
                          jsonLoader.Globals.SetSubTopic3_8Options(b["sub-topic"]);
                          continue;
                        }
                        else if(jsonLoader.Globals.GetSubTopic3_9Options().isEmpty && jsonLoader.Globals.GetsubTopic3Name9() == null)
                        {
                          jsonLoader.Globals.SetTopic3Len();
                          jsonLoader.Globals.SetSubTopic3Name9(b["name"]);
                          jsonLoader.Globals.SetSubTopic3_9Options(b["sub-topic"]);
                          continue;
                        }
                        else if(jsonLoader.Globals.GetSubTopic3_10Options().isEmpty && jsonLoader.Globals.GetsubTopic3Name10() == null)
                        {
                          jsonLoader.Globals.SetTopic3Len();
                          jsonLoader.Globals.SetSubTopic3Name10(b["name"]);
                          jsonLoader.Globals.SetSubTopic3_10Options(b["sub-topic"]);
                          continue;
                        }
                      }
                      jsonLoader.Globals.SetTopic3Loadbool(true);
                  }
                  //load data from topic4
                  if(a["topic-4"] != null && !jsonLoader.Globals.GetTopic4Loadbool() && !jsonLoader.Globals.GetTopic4Loadbool())
                  {
                    jsonLoader.Globals.SetTopic4Name(a["name"]);
                        for(var b in a["topic-4"])
                      {
                        if(jsonLoader.Globals.GetSubTopic4_1Options().isEmpty && jsonLoader.Globals.GetSubTopic4Name1() == null)
                        {
                          jsonLoader.Globals.SetTopic4Len();
                          jsonLoader.Globals.SetSubTopic4Name1(b["name"]);
                          jsonLoader.Globals.SetSubTopic4_1Options(b["sub-topic"]);
                          continue;
                        }
                        else if(jsonLoader.Globals.GetSubTopic4_2Options().isEmpty && jsonLoader.Globals.GetSubTopic4Name2() == null)
                        {
                          jsonLoader.Globals.SetTopic4Len();
                          jsonLoader.Globals.SetSubTopic4Name2(b["name"]);
                          jsonLoader.Globals.SetSubTopic4_2Options(b["sub-topic"]);
                          continue;
                        }
                        else if(jsonLoader.Globals.GetSubTopic4_3Options().isEmpty && jsonLoader.Globals.GetsubTopic4Name3() == null)
                        {
                          jsonLoader.Globals.SetTopic4Len();
                          jsonLoader.Globals.SetSubTopic4Name3(b["name"]);
                          jsonLoader.Globals.SetSubTopic4_3Options(b["sub-topic"]);
                          continue;
                        }
                        else if(jsonLoader.Globals.GetSubTopic4_4Options().isEmpty && jsonLoader.Globals.GetsubTopic4Name4() == null)
                        {
                          jsonLoader.Globals.SetTopic4Len();
                          jsonLoader.Globals.SetSubTopic4Name4(b["name"]);
                          jsonLoader.Globals.SetSubTopic4_4Options(b["sub-topic"]);
                          continue;
                        }
                        else if(jsonLoader.Globals.GetSubTopic4_5Options().isEmpty && jsonLoader.Globals.GetsubTopic4Name5() == null)
                        {
                          jsonLoader.Globals.SetTopic4Len();
                          jsonLoader.Globals.SetSubTopic4Name5(b["name"]);
                          jsonLoader.Globals.SetSubTopic4_5Options(b["sub-topic"]);
                          continue;
                        }
                        else if(jsonLoader.Globals.GetSubTopic4_6Options().isEmpty && jsonLoader.Globals.GetsubTopic4Name6() == null)
                        {
                          jsonLoader.Globals.SetTopic4Len();
                          jsonLoader.Globals.SetSubTopic4Name6(b["name"]);
                          jsonLoader.Globals.SetSubTopic4_6Options(b["sub-topic"]);
                          continue;
                        }
                        else if(jsonLoader.Globals.GetSubTopic4_7Options().isEmpty && jsonLoader.Globals.GetsubTopic4Name7() == null)
                        {
                          jsonLoader.Globals.SetTopic4Len();
                          jsonLoader.Globals.SetSubTopic4Name7(b["name"]);
                          jsonLoader.Globals.SetSubTopic4_7Options(b["sub-topic"]);
                          continue;
                        }
                        else if(jsonLoader.Globals.GetSubTopic4_8Options().isEmpty && jsonLoader.Globals.GetsubTopic4Name8() == null)
                        {
                          jsonLoader.Globals.SetTopic4Len();
                          jsonLoader.Globals.SetSubTopic4Name8(b["name"]);
                          jsonLoader.Globals.SetSubTopic4_8Options(b["sub-topic"]);
                          continue;
                        }
                        else if(jsonLoader.Globals.GetSubTopic4_9Options().isEmpty && jsonLoader.Globals.GetsubTopic4Name9() == null)
                        {
                          jsonLoader.Globals.SetTopic4Len();
                          jsonLoader.Globals.SetSubTopic4Name9(b["name"]);
                          jsonLoader.Globals.SetSubTopic4_9Options(b["sub-topic"]);
                          continue;
                        }
                        else if(jsonLoader.Globals.GetSubTopic4_10Options().isEmpty && jsonLoader.Globals.GetsubTopic4Name10() == null)
                        {
                          jsonLoader.Globals.SetTopic4Len();
                          jsonLoader.Globals.SetSubTopic4Name10(b["name"]);
                          jsonLoader.Globals.SetSubTopic4_10Options(b["sub-topic"]);
                          continue;
                        }
                      }
                      jsonLoader.Globals.SetTopic4Loadbool(true);
                  }
                  
             }
             jsonLoader.Globals.SetTopic2Loadbool(true);
             jsonLoader.Globals.SetTopic3Loadbool(true);
             jsonLoader.Globals.SetTopic4Loadbool(true);
             
        
      return Scaffold(
          
      body: Stack(
        
        children: <Widget>[
          Container(
            
              decoration: BoxDecoration(image: DecorationImage(
                //topic choose pic
                //image: AssetImage('lib/Start_page_need/Start_background.png'),fit: BoxFit.fill)),
                image: AssetImage('assets/BlueBack.png'),fit: BoxFit.fill)),
            ),
            Column(
              
              children: <Widget>[
                
                //move whole page down
                SizedBox(height: 19,),
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                     Spacer(flex:3),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Text("?מה באתם ללמוד" ,style: TextStyle(fontSize: 30,color: Colors.white) ,textAlign: TextAlign.center,),
                    ),
                    Spacer(flex:2),
                    Align(
                    alignment: Alignment.center,
                        child: GestureDetector
                        (
                          onTap: () {
                           // Navigator.pop(context); fhgdgdfgfdgdfgdfgd
                            Navigator.push(context,MaterialPageRoute(builder: (context) => main_page.MyHomePage()),);
                            },
                            //  svg as btn
                             child: Container
                             (
                               child: Align
                               (
                                 //btn back
                                 alignment: Alignment.topRight,
                                 child: BackBTN
                                 (
                                   bbtn: Row
                                   (
                                     children: <Widget>
                                     [
                                       Align(
                                         alignment: Alignment.topCenter,
                                         ),
                                      ],
                                    )
                                  ),
                              )
                            ),
                        ),
                    )
                ],
                    ),
                    
                
               //RAW First Option
                   new Row(
                     
                     mainAxisAlignment: MainAxisAlignment.end,
                     children: <Widget>[
                       Spacer(flex: 5),
                       //BTN SELECT
                       Align(
                         
                        child: GestureDetector
                        (
                          
                          onTap: () {
                           // Navigator.pop(context);
                              if(jsonLoader.Globals.GetTopic1Name() != null)
                              {
                                  jsonLoader.Globals.SetTopicNum(1);
                                  btnPressLilmod(context);
                              }  
                            },
                            //  svg as btn
                             child: Container
                             (
                            //    if(jsonLoader.Globals.GetTopic1Name() != null)
                            //  {

                            //  },
                            
                               //height: MediaQuery.of(context).size.height/12,
                               height: 54,//MediaQuery.of(context).size.height/5
                          //    color:  Colors.pink,
                                child: Align
                               (
                                 alignment: Alignment.center,
                                 
                                 child: SackBTN
                                 (
                                   
                                   bbtn: Row
                                   (
                                    
                                     children: <Widget>
                                     [
                                       Align(
                                         alignment: Alignment.centerLeft,
                                         ),
                                      ],
                                    )
                                  ),
                              )
                            ),
                        ),
                    ),
                   // Spacer(flex:110,),
                       ///Text of topic
                       ///create empty box for space
                      // SizedBox(width: MediaQuery.of(context).size.width/20 ),
                        Align(
                        alignment: Alignment.centerRight,
                        // child: Container(
                          
                        //   width: MediaQuery.of(context).size.width - MediaQuery.of(context).size.width/5,//84,
                        //  constraints: new BoxConstraints(
                        //     maxWidth: MediaQuery.of(context).size.width - MediaQuery.of(context).size.width/5),//84),
                          //child:  Text(allans[1].toString(),textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 24,color: Color(int.parse("#414141".substring(1, 7), radix: 16) + 0xFF000000)),),
                        child: GestureDetector
                        (
                          onTap: () {
                                  jsonLoader.Globals.SetTopicNum(1);
                                  btnPressLilmod(context);
                            },
                            //  svg as btn
                             
                             child: Container(
                               color: Color(int.parse("#f5f5f5".substring(1, 7), radix: 16) + 0xFF000000),
                             //   color: Colors.yellow,
                          //space between
                          width: MediaQuery.of(context).size.width - MediaQuery.of(context).size.width/5,//MediaQuery.of(context).size.width - 84,
                        //  color: Colors.green,
                         // height: MediaQuery.of(context).size.height/4,
                         constraints: new BoxConstraints(
                              
                              maxWidth: MediaQuery.of(context).size.width - MediaQuery.of(context).size.width/5),//84),
                             child: Container
                             (
                               
                               child: Align
                               (
                                 alignment: Alignment.centerRight,
                                 
                                child: Text(jsonLoader.Globals.GetTopic1Name().toString(),style: TextStyle(fontWeight: FontWeight.w700,fontSize: 26,color: Color(int.parse("#1089ff".substring(1, 7), radix: 16) + 0xFF000000)),),
                               )
                             )
                             ),
                        ),
                        
                        //--------
                   //     )
                       ),
                          //---
                      //    child: Text(jsonLoader.Globals.GetTopic1Name().toString(),style: TextStyle(fontWeight: FontWeight.w700,fontSize: 26,color: Color(int.parse("#1089ff".substring(1, 7), radix: 16) + 0xFF000000)),),

                     //   ),
                       //),
                       
                        Spacer(flex: 12,)
                     ], 
                
                   ),
                  
                  // //RAW Second option
                  //  new Row(
                  //    mainAxisAlignment: MainAxisAlignment.end,
                  //    children: <Widget>[
                  //      Spacer(flex: 10),
                  //      //BTN SELECT
                  //      Align(
                         
                  //       child: GestureDetector
                  //       (
                  //         onTap: () {
                  //         //  Navigator.pop(context);
                  //         if(jsonLoader.Globals.GetTopic2Name() != null)
                  //             {
                  //               jsonLoader.Globals.SetTopicNum(2);
                  //               btnPressLilmod(context);
                  //             }
                  //           },
                  //           //  svg as btn
                             
                  //            child: Container
                  //            (
                  //              height: MediaQuery.of(context).size.height/12,
                               
                  //              child: Align
                  //              (
                  //                alignment: Alignment.center,
                                 
                  //                child: SackBTN
                  //                (
                                   
                  //                  bbtn: Row
                  //                  (
                                    
                  //                    children: <Widget>
                  //                    [
                  //                      Align(
                  //                        alignment: Alignment.center,
                  //                        ),
                  //                     ],
                  //                   )
                  //                 ),
                  //             )
                  //           ),
                  //       ),
                  //   ),
                  //    SizedBox(width: MediaQuery.of(context).size.width/4 ),
                  //      Align(
                         
                  // //      alignment: Alignment.centerRight,
                  //       child: Container(
                  //         alignment: Alignment.centerRight,
                  //         width: MediaQuery.of(context).size.width/2,
                  //         height: MediaQuery.of(context).size.height/12,
                          
                  //         child: Text(jsonLoader.Globals.GetTopic2Name().toString(),style: TextStyle(fontWeight: FontWeight.w700,fontSize: 26,color: Color(int.parse("#1089ff".substring(1, 7), radix: 16) + 0xFF000000)),),

                  //       )
                  //      ),
                       
                  //       Spacer(flex: 12,)
                  //    ],
                  //  ),


                  //  //RAW third Option
                   
                   
                  //  new Row(
                  //    mainAxisAlignment: MainAxisAlignment.end,
                  //    children: <Widget>[
                  //      Spacer(flex: 10),
                  //      Align(
                         
                  //       child: GestureDetector
                  //       (
                  //         onTap: () {
                  //           if(jsonLoader.Globals.GetTopic3Name() != null)
                  //             {
                  //               jsonLoader.Globals.SetTopicNum(3);
                  //               btnPressLilmod(context);
                  //             }
                           
                  //           },
                  //           //  svg as btn
                             
                  //            child: Container
                  //            (
                  //              height: MediaQuery.of(context).size.height/12,
                               
                  //              child: Align
                  //              (
                  //                alignment: Alignment.center,
                                 
                  //                child: SackBTN
                  //                (
                                   
                  //                  bbtn: Row
                  //                  (
                                    
                  //                    children: <Widget>
                  //                    [
                  //                      Align(
                  //                        alignment: Alignment.center,
                  //                        ),
                  //                     ],
                  //                   )
                  //                 ),
                  //             )
                  //           ),
                  //       ),
                  //   ),
                  //    SizedBox(width: MediaQuery.of(context).size.width/4 ),
                  //      Align(
                         
                  // //      alignment: Alignment.centerRight,
                  //       child: Container(
                  //         alignment: Alignment.centerRight,
                  //         width: MediaQuery.of(context).size.width/2,
                  //         height: MediaQuery.of(context).size.height/12,
                          
                  //         child: Text(jsonLoader.Globals.GetTopic3Name().toString(),style: TextStyle(fontWeight: FontWeight.w700,fontSize: 26,color: Color(int.parse("#1089ff".substring(1, 7), radix: 16) + 0xFF000000)),),

                  //       )
                  //      ),
                       
                  //       Spacer(flex: 12,)
                  //    ],

                  //  ),


                  //  //RAW 
                  //  new Row(
                  //    mainAxisAlignment: MainAxisAlignment.end,
                  //    children: <Widget>[
                  //      Spacer(flex: 10),
                  //      //BTN SELECT
                  //      Align(
                         
                  //       child: GestureDetector
                  //       (
                  //         onTap: () {
                  //             if(jsonLoader.Globals.GetTopic4Name() != null)
                  //               {
                  //                 jsonLoader.Globals.SetTopicNum(4);
                  //                 btnPressLilmod(context);
                  //               }
                  //           },
                  //           //  svg as btn
                             
                  //            child: Container
                  //            (
                  //              height: MediaQuery.of(context).size.height/12,
                               
                  //              child: Align
                  //              (
                  //                alignment: Alignment.center,
                                 
                  //                child: SackBTN
                  //                (
                                   
                  //                  bbtn: Row
                  //                  (
                                    
                  //                    children: <Widget>
                  //                    [
                  //                      Align(
                  //                        alignment: Alignment.center,
                  //                        ),
                  //                     ],
                  //                   )
                  //                 ),
                  //             )
                  //           ),
                  //       ),
                  //   ),
                  //    SizedBox(width: MediaQuery.of(context).size.width/4 ),
                  //      Align(
                         
                  // //      alignment: Alignment.centerRight,
                  //       child: Container(
                  //         alignment: Alignment.centerRight,
                  //         width: MediaQuery.of(context).size.width/2,
                  //         height: MediaQuery.of(context).size.height/12,
                          
                  //         child: Text(jsonLoader.Globals.GetTopic4Name().toString(),style: TextStyle(fontWeight: FontWeight.w700,fontSize: 26,color: Color(int.parse("#1089ff".substring(1, 7), radix: 16) + 0xFF000000)),),

                  //       )
                  //      ),
                       
                  //       Spacer(flex: 12,)
                        
                  //    ],
                  //  ),
                ]   
                
            )
            
              ]
              
            ),
            
     );
     
     
            }
        //    return Text("DONE");
        return Container();
      }
      
    );
  
  }
   void btnPressLilmod(BuildContext ctx)
   {
     jsonLoader.Globals.SetTopicNum(1);
     Future.microtask(() => Navigator.push(ctx, MaterialPageRoute(builder: (context) => letsfun.Routes())));
      //  Navigator.push(ctx,MaterialPageRoute(builder: (context) => letsfun.Routes()),);
   }
}
