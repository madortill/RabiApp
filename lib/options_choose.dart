//import 'dart:js';
import 'dart:convert';
import 'package:flutter/scheduler.dart';
import 'dart:ffi';
//import 'dart:js';
//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:io' as Io;
import 'package:q_app_new/Globals.dart' as jsondata;
import 'package:q_app_new/Tirgul_files/Tirgul/Btns.dart';
import 'package:q_app_new/main.dart';
import 'package:positioned_tap_detector/positioned_tap_detector.dart';
import 'popUp.dart';
import 'Globals.dart' as jsonLoader;

import 'main.dart' as main_page;
import 'package:q_app_new/Lilmod.dart' as lilmod_page;
import 'Tirgul_files/Tirgul/main.dart' as main_tirgul_page;

import 'start_page.dart' as startPage;
const home_btn_svg = "lib/options_choose_page_need/Home_Btn.svg";
const pop_btn_svg = "lib/options_choose_page_need/pop_up_y.svg";

//const _startTirgul = "assets/play.svg";

double posX = 100.0;
double posY = 100.0;
final String popBTN = 'lib/options_choose_page_need/pop_up_y.svg';
String finalJson = "";


int _screenWidth  = 0;
int _screenHeight = 0;
class Routes extends StatefulWidget{
  Route createState()=> Route();
}
class Route extends State<Routes>{//extends StatelessWidget{
  @override
  
 // SelectedChoice();

  Widget build(BuildContext context) {
   _screenWidth = MediaQuery.of(context).size.width.toInt();
   _screenHeight = MediaQuery.of(context).size.height.toInt();
     final fJson = LoadJson(context);
     fJson.then((h) => finalJson = h);
    return MaterialApp(
      home: DefaultTabController(
        length: jsondata.Globals.Get_lenCurrTopic(),
        child: Scaffold( //
          backgroundColor: Color(int.parse("#f5f5f5".substring(1, 7), radix: 16) + 0xFF000000),
                
              appBar: AppBar(backgroundColor: Color(int.parse("#1089ff".substring(1, 7), radix: 16) + 0xFF000000),
                bottom: TabBar(isScrollable: true,
                      tabs: [
                        if(jsondata.Globals.GetcurrSubTopicName1() != null)
                          Tab(child: Text(jsondata.Globals.GetcurrSubTopicName1(), style: TextStyle(fontSize: 20),)),//: Container(),
                        
                        if(jsondata.Globals.GetcurrSubTopicName2() != null)
                          Tab(child: Text(jsondata.Globals.GetcurrSubTopicName2(), style: TextStyle(fontSize: 20),)),// : Container(),
                        
                        if(jsondata.Globals.GetcurrSubTopicName3() != null)
                          Tab(child: Text(jsondata.Globals.GetcurrSubTopicName3(), style: TextStyle(fontSize: 20),)),// : Container(),
                        
                        if(jsondata.Globals.GetcurrSubTopicName4() != null)
                          Tab(child: Text(jsondata.Globals.GetcurrSubTopicName4(), style: TextStyle(fontSize: 20),)),// : Container(),
                        
                        if(jsondata.Globals.GetcurrSubTopicName5() != null)
                          Tab(child: Text(jsondata.Globals.GetcurrSubTopicName5(), style: TextStyle(fontSize: 20),)),// : Container(),
                        
                        if(jsondata.Globals.GetcurrSubTopicName6() != null)
                          Tab(child: Text(jsondata.Globals.GetcurrSubTopicName6(), style: TextStyle(fontSize: 20),)),// : Container(),
                        
                        if(jsondata.Globals.GetcurrSubTopicName7() != null)
                          Tab(child: Text(jsondata.Globals.GetcurrSubTopicName7(), style: TextStyle(fontSize: 20),)),// : Container(),
                        
                        if(jsondata.Globals.GetcurrSubTopicName8() != null)
                          Tab(child: Text(jsondata.Globals.GetcurrSubTopicName8(), style: TextStyle(fontSize: 20),)),// : Container(),
                        
                        if(jsondata.Globals.GetcurrSubTopicName9() != null)
                          Tab(child: Text(jsondata.Globals.GetcurrSubTopicName9(), style: TextStyle(fontSize: 20),)),// : Container(),
                        
                        if(jsondata.Globals.GetcurrSubTopicName10() != null)
                          Tab(child: Text(jsondata.Globals.GetcurrSubTopicName10(), style: TextStyle(fontSize: 20),)),// : Container(),
                      
                      ],
                    ),
                  
                  automaticallyImplyLeading: false,
                  actions: <Widget>[
                    GestureDetector(
                onTap: ()
                {
                  BackHomeBtn(context);
                },
                child: SvgPicture.asset(home_btn_svg,height: 80,width: 80,),
              ),
                    Spacer(),
                    Container(padding: const EdgeInsets.all(10), child: Text(jsondata.Globals.GetcurrTopicName(),textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 28,color: Color(int.parse("#add5fb".substring(1, 7), radix: 16) + 0xFF000000)),),),

                  ],

              ),
              body: TabBarView(
                
              children: <Widget>[
                
//FOR FIRST OPTION  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
          if(jsondata.Globals.GetcurrSubTopicName1() != null)
       //     ListView(
        
            Column(

              children: <Widget>[
                
                Expanded(
                child: ListView(//ListView(
                     shrinkWrap: true,
                      padding: EdgeInsets.all(5.0),
             children: <Widget>[
                //spacer to move from top
              //  Spacer(flex: 10),
            //Row 1----------------------------
            new Row(
              children: <Widget>[
                //spacer to move first from side
              Spacer(flex: 1),  

              //First icon
             
                  GestureDetector(
                onTap: ()
                {
                  try {
                    
                  
  
                   if(jsondata.Globals.GetCurrSubTopic_1Options()[0] != null && jsondata.Globals.GetCurrSubTopic_1Options()[0] != "" && jsondata.Globals.GetCurrSubTopic_1Options()[0] 
                    != "icon1.jpg" && jsondata.Globals.GetCurrSubTopic_1Options()[0] != "icon2.jpg") 
                  {
                     if(!finalJson.contains(method(jsondata.Globals.GetCurrSubTopic_1Options()[0])))
                            {
                             jsondata.Globals.SetCurrSubSelected(method(jsondata.Globals.GetCurrSubTopic_1Options()[0])); App_Start_Lemida(context);
 }
                  else
                            { 
                                showDialog(context: context,
                  builder: (BuildContext context)
                  {
                  
                  try {
                    
                  
                  
                    return getDialog(jsondata.Globals.GetCurrSubTopic_1Options()[0], context) ;
                    } catch (e) {
                  }

                  }
                  );
                            }
                  }
                  }
                  catch(e){}
                },
                onTapDown: (TapDownDetails details) => _onTapDown(details),
                child: Column(
                  children: <Widget>[
                   Container(
                  
                      width: MediaQuery.of(context).size.width/3,
                      height: MediaQuery.of(context).size.width/3,
                      
                    //  if(jsondata.Globals.GetCurrSubTopic_1Options()[0] != null) {}
                      child: Material(
                      child: getWidget(jsondata.Globals.GetCurrSubTopic_1Options()[0]), 
                        shape: CircleBorder(
                          
                        ),
                       
                          

                        
                          color: Colors.white,
                        
                      ),

                    ),
                    Text(GetName(jsondata.Globals.GetCurrSubTopic_1Options()[0]),textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 13))
                  ],
              //       child: Text(GetName("path"),textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20))
              )
              ),
                  //space to move first icon from second
                  Spacer(flex: 3,),
              //second icon
                  GestureDetector(
                onTap: ()
                {
                  try {
                  
                  
                    if(jsondata.Globals.GetCurrSubTopic_1Options()[1] != null && jsondata.Globals.GetCurrSubTopic_1Options()[1] != "" && jsondata.Globals.GetCurrSubTopic_1Options()[1] 
                      != "icon1.jpg" && jsondata.Globals.GetCurrSubTopic_1Options()[1] != "icon2.jpg") 
                    {
                       if(!finalJson.contains(method(jsondata.Globals. GetCurrSubTopic_1Options()[1])))
                              {
                            //jsondata.Globals.SetCurrSubSelected(method(jsondata.Globals.GetCurrSubTopic_1Options()[1])); App_Start_Lemida(context);;
                               jsondata.Globals.SetCurrSubSelected(method(jsondata.Globals.GetCurrSubTopic_1Options()[1])); App_Start_Lemida(context);
 }
                    else
                            { 
                                showDialog(context: context,
                    builder: (BuildContext context)
                    {
                    //  return  Transform(transform: Matrix4.translationValues(posX-250, posY-300, 0.0), 
                        
                    //   child: getDialog(jsondata.Globals.GetCurrSubTopic_1Options()[1],context)  
                    //   );
                    try {
                      
                     
                  
                    } catch (e) {
                    }
                      return getDialog(jsondata.Globals.GetCurrSubTopic_1Options()[1],context);  
                    }
                    );
                            }
                    }
                  }
                  catch (e) {
                  }
                },
                onTapDown: (TapDownDetails details) => _onTapDown(details),
                child: Column(
                  children: <Widget>[
                   Container(
                  
                      width: MediaQuery.of(context).size.width/3,
                      height: MediaQuery.of(context).size.width/3,
                      child: Material(
                      child: getWidget(jsondata.Globals.GetCurrSubTopic_1Options()[1]), 
                        shape: CircleBorder(
                          
                        ),
                        color: Colors.white,
                      ),

                    ),
                    Text(GetName(jsondata.Globals.GetCurrSubTopic_1Options()[1]),textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 13))
                  ],
              //       child: Text(GetName("path"),textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20))
              )
              ),
                  // spacer to move scond icon from side
                  Spacer(flex: 2),
              ]
              
            ),
            //need be space between each row
         //   Spacer(flex: 10,),
         SizedBox(height: _screenHeight/30),
            //ROW 2----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
              new Row(
              children: <Widget>[
                //spacer to move first from side
              Spacer(flex: 1),  

              //First icon
                  GestureDetector(
                onTap: ()
                {
                  try {
                    
                  
                  print("hello");
                   if(jsondata.Globals.GetCurrSubTopic_1Options()[2] != null && jsondata.Globals.GetCurrSubTopic_1Options()[2] != "" && jsondata.Globals.GetCurrSubTopic_1Options()[2] 
                    != "icon1.jpg" && jsondata.Globals.GetCurrSubTopic_1Options()[2] != "icon2.jpg") 
                  {
                    if(!finalJson.contains(method(jsondata.Globals.GetCurrSubTopic_1Options()[2])))
                            {
                            // jsondata.Globals.SetCurrSubSelected(method(jsondata.Globals.GetCurrSubTopic_1Options()[2] )); App_Start_Lemida(context);;
                              jsondata.Globals.SetCurrSubSelected(method(jsondata.Globals.GetCurrSubTopic_1Options()[2] ));
                              App_Start_Lemida(context);
                            }
                            else
                            { 
                             
                                showDialog(context: context,
                                builder: (BuildContext context)
                                {
                                //  return  Transform(transform: Matrix4.translationValues(posX-250, posY-300, 0.0), 
                                    
                                //   child: getDialog(jsondata.Globals.GetCurrSubTopic_1Options()[2],context) 
                      
                                getDialog(jsondata.Globals.GetCurrSubTopic_1Options()[2],context)  ;
                                }
                                          
                                );
                            }
                  }
                  }
                   catch (e) {
                  }
                },onTapDown: (TapDownDetails details) => _onTapDown(details),
               child: Column(
                  children: <Widget>[
                   Container(
                  
                      width: MediaQuery.of(context).size.width/3,
                      height: MediaQuery.of(context).size.width/3,
                      child: Material(
                      child: getWidget(jsondata.Globals.GetCurrSubTopic_1Options()[2]), 
                        shape: CircleBorder(
                          
                        ),
                        color: Colors.white,
                      ),

                    ),
                    Text(GetName(jsondata.Globals.GetCurrSubTopic_1Options()[2]),textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 13))
                  ],
              //       child: Text(GetName("path"),textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20))
              )
              ),
                  //space to move first icon from second
                  Spacer(flex: 3,),
              //second icon
                  GestureDetector(
                onTap: ()
                {
                  try {
                    
                 
                  print("pink hello");
                   if(jsondata.Globals.GetCurrSubTopic_1Options()[3] != null && jsondata.Globals.GetCurrSubTopic_1Options()[3] != "" && jsondata.Globals.GetCurrSubTopic_1Options()[3] 
                    != "icon1.jpg" && jsondata.Globals.GetCurrSubTopic_1Options()[3] != "icon2.jpg") 
                  {
                     if(!finalJson.contains(method(jsondata.Globals.GetCurrSubTopic_1Options()[3])))
                            {
                           //jsondata.Globals.SetCurrSubSelected(method(jsondata.Globals.GetCurrSubTopic_1Options()[3])); App_Start_Lemida(context);;
                              jsondata.Globals.SetCurrSubSelected(method(jsondata.Globals.GetCurrSubTopic_1Options()[3])); App_Start_Lemida(context);
 }
                  else
                            { 
                                showDialog(context: context,
                  builder: (BuildContext context)
                  {
                  //  return  Transform(transform: Matrix4.translationValues(posX-250, posY-300, 0.0), 
                      
                  //   child: getDialog(jsondata.Globals.GetCurrSubTopic_1Options()[3],context)  
                  //   );
                
                  return getDialog(jsondata.Globals.GetCurrSubTopic_1Options()[3],context) ;
                  }
                  );
                            }
                  }
                   } catch (e) {
                  }
                },
                onTapDown: (TapDownDetails details) => _onTapDown(details),
                child: Column(
                  children: <Widget>[
                   Container(
                  
                      width: MediaQuery.of(context).size.width/3,
                      height: MediaQuery.of(context).size.width/3,
                      child: Material(
                      child: getWidget(jsondata.Globals.GetCurrSubTopic_1Options()[3]), 
                        shape: CircleBorder(
                          
                        ),
                        color: Colors.white,
                      ),

                    ),
                    Text(GetName(jsondata.Globals.GetCurrSubTopic_1Options()[3]),textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 13))
                  ],
              //       child: Text(GetName("path"),textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20))
              )
              ),
                  // spacer to move scond icon from side
                  Spacer(flex: 1),
              ]
              
            ),
            //spacer to move icon up
          // mm  Spacer(flex:10),
          SizedBox(height: _screenHeight/30),
            //ROW 3------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

            new Row(
              children: <Widget>[
                //spacer to move first from side
              Spacer(flex: 1),  

              //First icon
                  GestureDetector(
                onTap: ()
                {
                  try {
                    
                 
                  print("hello");
                    if(jsondata.Globals.GetCurrSubTopic_1Options()[4] != null && jsondata.Globals.GetCurrSubTopic_1Options()[4] != "" && jsondata.Globals.GetCurrSubTopic_1Options()[4] 
                    != "icon1.jpg" && jsondata.Globals.GetCurrSubTopic_1Options()[4] != "icon2.jpg") 
                  {
                    if(!finalJson.contains(method(jsondata.Globals.GetCurrSubTopic_1Options()[4])))
                            {
                           jsondata.Globals.SetCurrSubSelected(method(jsondata.Globals.GetCurrSubTopic_1Options()[4])); App_Start_Lemida(context);;
                             jsondata.Globals.SetCurrSubSelected(method(jsondata.Globals.GetCurrSubTopic_1Options()[4])); App_Start_Lemida(context);
                            }
                  else
                            { 
                                showDialog(context: context,
                  builder: (BuildContext context)
                  {
                  //  return  Transform(transform: Matrix4.translationValues(posX-250, posY-300, 0.0), 
                      
                  //   child: getDialog(jsondata.Globals.GetCurrSubTopic_1Options()[4],context) 
                  //   );
                 
                  return getDialog(jsondata.Globals.GetCurrSubTopic_1Options()[4],context) ;
                  }
                  );
                            }
                  }
                   } catch (e) {
                  }
                },onTapDown: (TapDownDetails details) => _onTapDown(details),
                child: Column(
                  children: <Widget>[
                   Container(
                  
                      width: MediaQuery.of(context).size.width/3,
                      height: MediaQuery.of(context).size.width/3,
                      child: Material(
                      child: getWidget(jsondata.Globals.GetCurrSubTopic_1Options()[4]), 
                        shape: CircleBorder(
                          
                        ),
                      //  color: Colors.white,
                      ),

                    ),
                    Text(GetName(jsondata.Globals.GetCurrSubTopic_1Options()[4]),textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 10))
                  ],
              //       child: Text(GetName("path"),textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20))
              )
              ),
                  //space to move first icon from second
                  Spacer(flex: 4,),
              //second icon
                  GestureDetector(
                onTap: ()
                {
                  try {
                    
                  
                  print("pink hello");
                    if(jsondata.Globals.GetCurrSubTopic_1Options()[5] != null && jsondata.Globals.GetCurrSubTopic_1Options()[5] != "" && jsondata.Globals.GetCurrSubTopic_1Options()[5] != "icon1.jpg" && jsondata.Globals.GetCurrSubTopic_1Options()[5] != "icon2.jpg") //jsondata.Globals.GetCurrSubTopic_1Options()[5])
                  {

                    if(!finalJson.contains(method(jsondata.Globals.GetCurrSubTopic_1Options()[5])))
                 {
                            
                     //      jsondata.Globals.SetCurrSubSelected(method(jsondata.Globals.GetCurrSubTopic_1Options()[5])); App_Start_Lemida(context);;
                      jsondata.Globals.SetCurrSubSelected(method(jsondata.Globals.GetCurrSubTopic_1Options()[5])); App_Start_Lemida(context);
                 }
                  else
                            { 
                                showDialog(context: context,
                  builder: (BuildContext context)
                  {
                  //  return  Transform(transform: Matrix4.translationValues(posX-250, posY-300, 0.0), 
                      
                  //   child: getDialog(jsondata.Globals.GetCurrSubTopic_1Options()[5],context) 
                  //   );
                 
                  return getDialog(jsondata.Globals.GetCurrSubTopic_1Options()[5],context);
                  }
                  );
                            }
                }
                } catch (e) {
                  }
                },
                onTapDown: (TapDownDetails details) => _onTapDown(details),
                child: Column(
                  children: <Widget>[
                   Container(
                  
                      width: MediaQuery.of(context).size.width/3,
                      height: MediaQuery.of(context).size.width/3,
                      child: Material(
                      child: getWidget(jsondata.Globals.GetCurrSubTopic_1Options()[5]), 
                        shape: CircleBorder(
                          
                        ),
                     //   color: Colors.white,
                      ),

                    ),
                    Text(GetName(jsondata.Globals.GetCurrSubTopic_1Options()[5]),textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20))
                  ],
              //       child: Text(GetName("path"),textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20))
              )
              ),
                  // spacer to move scond icon from side
                  Spacer(flex: 2),
              ]
              
            ),
            //spacer to move icon up
        //mm    Spacer(flex:30),
             ]
            ),
     
            ),
              ]
            ),

////Second Options
          if(jsondata.Globals.GetcurrSubTopicName2() != null)
            Column(

              children: <Widget>[
                
                Expanded(
                child: ListView(//ListView(
                     shrinkWrap: true,
                      padding: EdgeInsets.all(5.0),
             children: <Widget>[
                //spacer to move from top
               SizedBox(height: _screenHeight/30),
               // Spacer(flex: 10),
            //Row 1---------------------------------------------------------------------------------------------------------------------------------------
            new Row(
              children: <Widget>[
                //spacer to move first from side
              Spacer(flex: 3),  

              //First icon
                  GestureDetector(
                onTap: ()
                {
                  print("hello");
                   if(jsondata.Globals.GetCurrSubTopic_2Options()[0] != null && jsondata.Globals.GetCurrSubTopic_2Options()[0] != "" && jsondata.Globals.GetCurrSubTopic_2Options()[0] 
                    != "icon1.jpg" && jsondata.Globals.GetCurrSubTopic_2Options()[0] != "icon2.jpg") 
                  {
                    if(!finalJson.contains(method(jsondata.Globals.GetCurrSubTopic_2Options()[0])))
                            {
                           jsondata.Globals.SetCurrSubSelected(method( jsondata.Globals.GetCurrSubTopic_2Options()[0])); App_Start_Lemida(context);;
 }
                  else
                            { 
                                showDialog(context: context,
                  builder: (BuildContext context)
                  {
                  //  return  Transform(transform: Matrix4.translationValues(posX-250, posY-300, 0.0), 
                      
                  //   child: getDialog(jsondata.Globals.GetCurrSubTopic_2Options()[0],context) 
                  //   );
                 
                  return getDialog(jsondata.Globals.GetCurrSubTopic_2Options()[0],context) ;
                  }
                  );
                            }
                  }
                },onTapDown: (TapDownDetails details) => _onTapDown(details),
                child: Column(
                  children: <Widget>[
                   Container(
                  
                      width: MediaQuery.of(context).size.width/3,
                      height: MediaQuery.of(context).size.width/3,
                      child: Material(
                      child: getWidget(jsondata.Globals.GetCurrSubTopic_2Options()[0]), 
                        shape: CircleBorder(
                          
                        ),
                        color: Colors.white,
                      ),

                    ),
                    Text(GetName(jsondata.Globals.GetCurrSubTopic_2Options()[0]),textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20))
                  ],
              //       child: Text(GetName("path"),textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20))
              )
                  
              ),
                  //space to move first icon from second
                  Spacer(flex: 3,),
              //second icon
                  GestureDetector(
                onTap: ()
                {

                  print("pink hello");
                   if(jsondata.Globals.GetCurrSubTopic_2Options()[1] != null && jsondata.Globals.GetCurrSubTopic_2Options()[1] != "" && jsondata.Globals.GetCurrSubTopic_2Options()[1] 
                    != "icon1.jpg" && jsondata.Globals.GetCurrSubTopic_2Options()[1] != "icon2.jpg") //jsondata.Globals.GetCurrSubTopic_1Options()[5])
                  {
                     if(!finalJson.contains(method(jsondata.Globals.GetCurrSubTopic_2Options()[1])))
                            {
                         //  jsondata.Globals.SetCurrSubSelected(method(jsondata.Globals.GetCurrSubTopic_2Options()[1])); App_Start_Lemida(context);;
                            jsondata.Globals.SetCurrSubSelected(method(jsondata.Globals.GetCurrSubTopic_2Options()[1])); App_Start_Lemida(context);  
                              
                              }
                  else
                            { 
                                showDialog(context: context,
                  builder: (BuildContext context)
                  {
                  //  return  Transform(transform: Matrix4.translationValues(posX-250, posY-300, 0.0), 
                      
                  //   child: getDialog(jsondata.Globals.GetCurrSubTopic_2Options()[1],context)  
                  //   );
                
                  return getDialog(jsondata.Globals.GetCurrSubTopic_2Options()[1],context) ;
                  }
                  );
                            }
                  }
                },
                onTapDown: (TapDownDetails details) => _onTapDown(details),
                 child: Column(
                  children: <Widget>[
                   Container(
                  
                      width: MediaQuery.of(context).size.width/3,
                      height: MediaQuery.of(context).size.width/3,
                      child: Material(
                      child: getWidget(jsondata.Globals.GetCurrSubTopic_2Options()[1]), 
                        shape: CircleBorder(
                          
                        ),
                        color: Colors.white,
                      ),

                    ),
                    Text(GetName(jsondata.Globals.GetCurrSubTopic_2Options()[1]),textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20))
                  ],
              //       child: Text(GetName("path"),textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20))
              )
              ),
                  // spacer to move scond icon from side
                  Spacer(flex: 1),
              ]
              
            ),
            //need be space between each row
           SizedBox(height: _screenHeight/30),
           // Spacer(flex: 10,),
            //ROW 2------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
              new Row(
              children: <Widget>[
                //spacer to move first from side
              Spacer(flex: 2),  

              //First icon
                  GestureDetector(
                onTap: ()
                {
                  print("hello");
                   if(jsondata.Globals.GetCurrSubTopic_2Options()[2] != null && jsondata.Globals.GetCurrSubTopic_2Options()[2] != "" && jsondata.Globals.GetCurrSubTopic_2Options()[2] 
                    != "icon1.jpg" && jsondata.Globals.GetCurrSubTopic_2Options()[2] != "icon2.jpg")
                  {
                     if(!finalJson.contains(method(jsondata.Globals.GetCurrSubTopic_2Options()[2])))
                            {
                          // jsondata.Globals.SetCurrSubSelected(method(jsondata.Globals.GetCurrSubTopic_2Options()[2])); App_Start_Lemida(context);;
                           jsondata.Globals.SetCurrSubSelected(method(jsondata.Globals.GetCurrSubTopic_2Options()[2])); App_Start_Lemida(context);
                          }
                  else
                            { 
                                showDialog(context: context,
                  builder: (BuildContext context)
                  {
                  //  return  Transform(transform: Matrix4.translationValues(posX-250, posY-300, 0.0), 
                      
                  //   child: getDialog(jsondata.Globals.GetCurrSubTopic_2Options()[2], context)  
                  //   );
                
                  return getDialog(jsondata.Globals.GetCurrSubTopic_2Options()[2], context)  ;
                  }
                  );
                            }
                  }
                },onTapDown: (TapDownDetails details) => _onTapDown(details),
                 child: Column(
                  children: <Widget>[
                   Container(
                  
                      width: MediaQuery.of(context).size.width/3,
                      height: MediaQuery.of(context).size.width/3,
                      child: Material(
                      child: getWidget(jsondata.Globals.GetCurrSubTopic_2Options()[2]), 
                        shape: CircleBorder(
                          
                        ),
                   //     color: Colors.white,
                      ),

                    ),
                    Text(GetName(jsondata.Globals.GetCurrSubTopic_2Options()[2]),textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20))
                  ],
              //       child: Text(GetName("path"),textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20))
              )
              ),
                  //space to move first icon from second
                  Spacer(flex: 3,),
              //second icon
                  GestureDetector(
                onTap: ()
                {

                  print("pink hello");
                   if(jsondata.Globals.GetCurrSubTopic_2Options()[3] != null && jsondata.Globals.GetCurrSubTopic_2Options()[3] != "" && jsondata.Globals.GetCurrSubTopic_2Options()[3] 
                    != "icon1.jpg" && jsondata.Globals.GetCurrSubTopic_2Options()[3] != "icon2.jpg") 
                  {
                    if(!finalJson.contains(method(jsondata.Globals.GetCurrSubTopic_2Options()[3])))
                            {
                         //  jsondata.Globals.SetCurrSubSelected(method(jsondata.Globals.GetCurrSubTopic_2Options()[3])); App_Start_Lemida(context);;
                              jsondata.Globals.SetCurrSubSelected(method(jsondata.Globals.GetCurrSubTopic_2Options()[3])); App_Start_Lemida(context);
                              }
                  else
                            { 
                                showDialog(context: context,
                  builder: (BuildContext context)
                  {

                  //  return  Transform(transform: Matrix4.translationValues(posX-250, posY-300, 0.0), 
                      
                  //   child: getDialog(jsondata.Globals.GetCurrSubTopic_2Options()[3],context)  
                  //   );
                 
                  return getDialog(jsondata.Globals.GetCurrSubTopic_2Options()[3],context);
                  }
                  );
                            }
                  }
                },
                onTapDown: (TapDownDetails details) => _onTapDown(details),
                 child: Column(
                  children: <Widget>[
                   Container(
                  
                      width: MediaQuery.of(context).size.width/3,
                      height: MediaQuery.of(context).size.width/3,
                      child: Material(
                      child: getWidget(jsondata.Globals.GetCurrSubTopic_2Options()[3]), 
                        shape: CircleBorder(
                          
                        ),
                //        color: Colors.white,
                      ),

                    ),
                    Text(GetName(jsondata.Globals.GetCurrSubTopic_2Options()[3]),textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20))
                  ],
              //       child: Text(GetName("path"),textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20))
              )
              ),
                  // spacer to move scond icon from side
                  Spacer(flex: 2),
              ]
              
            ),
            //spacer to move icon up
            SizedBox(height: _screenHeight/30),
            //ROW 3------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

            new Row(
              children: <Widget>[
                //spacer to move first from side
              Spacer(flex: 2),  

              //First icon
                  GestureDetector(
                onTap: ()
                {
                  print("hello");
                    if(jsondata.Globals.GetCurrSubTopic_2Options()[4] != null && jsondata.Globals.GetCurrSubTopic_2Options()[4] != "" && jsondata.Globals.GetCurrSubTopic_2Options()[4] 
                    != "icon1.jpg" && jsondata.Globals.GetCurrSubTopic_2Options()[4] != "icon2.jpg") 
                  {
                     if(!finalJson.contains(method(jsondata.Globals.GetCurrSubTopic_2Options()[4])))
                            {
                           jsondata.Globals.SetCurrSubSelected(method(jsondata.Globals.GetCurrSubTopic_2Options()[4])); App_Start_Lemida(context);;
                              jsondata.Globals.SetCurrSubSelected(method(jsondata.Globals.GetCurrSubTopic_2Options()[4])); App_Start_Lemida(context);
 
                              }
                  else
                            { 
                                showDialog(context: context,
                  //barrierDismissible: null,
                  builder: (BuildContext context)
                  {
                  //  return  Transform(transform: Matrix4.translationValues(posX-250, posY-300, 0.0), 
                      
                  //   child: getDialog(jsondata.Globals.GetCurrSubTopic_2Options()[4],context) 
                  //   );
                
                  return getDialog(jsondata.Globals.GetCurrSubTopic_2Options()[4],context) ;
                  }
                  );
                            }
                  }
                },onTapDown: (TapDownDetails details) => _onTapDown(details),
                 child: Column(
                  children: <Widget>[
                   Container(
                  
                      width: MediaQuery.of(context).size.width/3,
                      height: MediaQuery.of(context).size.width/3,
                      child: Material(
                      child: getWidget(jsondata.Globals.GetCurrSubTopic_2Options()[4]), 
                        shape: CircleBorder(
                          
                        ),
                    //    color: Colors.white,
                      ),

                    ),
                    Text(GetName(jsondata.Globals.GetCurrSubTopic_2Options()[4]),textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20))
                  ],
              //       child: Text(GetName("path"),textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20))
              )
              ),
                  //space to move first icon from second
                  Spacer(flex: 3,),
              //second icon
                  GestureDetector(
                onTap: ()
                {

                  print("pink hello");
                    if(jsondata.Globals.GetCurrSubTopic_2Options()[5] != null && jsondata.Globals.GetCurrSubTopic_2Options()[5] != "" && jsondata.Globals.GetCurrSubTopic_2Options()[5] != "icon1.jpg" && jsondata.Globals.GetCurrSubTopic_2Options()[5] != "icon2.jpg") //jsondata.Globals.GetCurrSubTopic_1Options()[5])
                  {
if(!finalJson.contains(method(jsondata.Globals.GetCurrSubTopic_2Options()[5])))
                            {
                   //        jsondata.Globals.SetCurrSubSelected(method(jsondata.Globals.GetCurrSubTopic_2Options()[5])); App_Start_Lemida(context);;
                              jsondata.Globals.SetCurrSubSelected(method(jsondata.Globals.GetCurrSubTopic_2Options()[5])); App_Start_Lemida(context);
                              }
                    
                  else
                            { 
                                showDialog(context: context,
                  builder: (BuildContext context)
                  {
                  //  return  Transform(transform: Matrix4.translationValues(posX-250, posY-300, 0.0), 
                  //   child: getDialog(jsondata.Globals.GetCurrSubTopic_2Options()[5],context) 
                  //   );
                 
                  return getDialog(jsondata.Globals.GetCurrSubTopic_2Options()[5],context) ;
                  }
                  );
                            }
                }
                },
                onTapDown: (TapDownDetails details) => _onTapDown(details),
                 child: Column(
                  children: <Widget>[
                   Container(
                  
                      width: MediaQuery.of(context).size.width/3,
                      height: MediaQuery.of(context).size.width/3,
                      child: Material(
                      child: getWidget(jsondata.Globals.GetCurrSubTopic_2Options()[5]), 
                        shape: CircleBorder(
                          
                        ),
                    //    color: Colors.white,
                      ),

                    ),
                    Text(GetName(jsondata.Globals.GetCurrSubTopic_2Options()[5]),textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20))
                  ],
              //       child: Text(GetName("path"),textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20))
              )
              ),
                  // spacer to move scond icon from side
                  Spacer(flex: 2),
              ]
              
            ),
            //spacer to move icon up
          SizedBox(height: _screenHeight/30),
          //  Spacer(flex:30),
             ]
                 )
                  )
              ]
            ),
//option3
            if(!jsonLoader.Globals.GetCurrSubTopic_3Options().isEmpty) //{
                Column(

              children: <Widget>[
                
                Expanded(
                child: ListView(//ListView(
                     shrinkWrap: true,
                      padding: EdgeInsets.all(5.0),
             children: <Widget>[
                  //spacer to move from top
               SizedBox(height: _screenHeight/30),
               //   Spacer(flex: 10),
              //Row 1
              new Row(
                children: <Widget>[
                  //spacer to move first from side
                Spacer(flex: 2),  

                //First icon
                    GestureDetector(
                  onTap: ()
                  {
                    print("hello");
                    if(jsondata.Globals.GetCurrSubTopic_3Options()[0] != null && jsondata.Globals.GetCurrSubTopic_3Options()[0] != "" && jsondata.Globals.GetCurrSubTopic_3Options()[0] 
                      != "icon1.jpg" && jsondata.Globals.GetCurrSubTopic_3Options()[0] != "icon2.jpg") 
                    {
                      if(!finalJson.contains(method(jsondata.Globals.GetCurrSubTopic_3Options()[0])))
                            {
                         //  jsondata.Globals.SetCurrSubSelected(method(jsondata.Globals.GetCurrSubTopic_3Options()[0])); App_Start_Lemida(context);;
                           jsondata.Globals.SetCurrSubSelected(method(jsondata.Globals.GetCurrSubTopic_3Options()[0])); App_Start_Lemida(context); 
                            
                            }
                    else
                            { 
                                showDialog(context: context,
                    builder: (BuildContext context)
                    {
                    //  return  Transform(transform: Matrix4.translationValues(posX-250, posY-300, 0.0), 
                        
                    //   child: getDialog(jsondata.Globals.GetCurrSubTopic_3Options()[0], context) 
                    //   );
                   
                      return getDialog(jsondata.Globals.GetCurrSubTopic_3Options()[0], context) ;
                    }
                    );
                            }
                    }
                  },
                  onTapDown: (TapDownDetails details) => _onTapDown(details),
                 child: Column(
                  children: <Widget>[
                   Container(
                    
                        width: MediaQuery.of(context).size.width/3,
                        height: MediaQuery.of(context).size.width/3,
                        child: Material(
                        child: getWidget(jsondata.Globals.GetCurrSubTopic_3Options()[0]), 
                          shape: CircleBorder(
                            
                          ),
                          color: Colors.white,
                        ),
                  
                      ),
                      Text(GetName(jsondata.Globals.GetCurrSubTopic_3Options()[0]),textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20))
                  ]
                )
                ),
                    //space to move first icon from second
                    Spacer(flex: 3,),
                //second icon
                    GestureDetector(
                  onTap: ()
                  {

                    print("pink hello");
                    if(jsondata.Globals.GetCurrSubTopic_3Options()[1] != null && jsondata.Globals.GetCurrSubTopic_3Options()[1] != "" && jsondata.Globals.GetCurrSubTopic_3Options()[1] 
                      != "icon1.jpg" && jsondata.Globals.GetCurrSubTopic_3Options()[1] != "icon2.jpg") 
                    {
                      if(!finalJson.contains(method(jsondata.Globals.GetCurrSubTopic_3Options()[1])))
                            {
                           jsondata.Globals.SetCurrSubSelected(method(jsondata.Globals.GetCurrSubTopic_3Options()[1])); App_Start_Lemida(context);;
                            jsondata.Globals.SetCurrSubSelected(method(jsondata.Globals.GetCurrSubTopic_3Options()[1])); App_Start_Lemida(context);
                            }
                    else
                            { 
                                showDialog(context: context,
                    builder: (BuildContext context)
                    {
                    //  return  Transform(transform: Matrix4.translationValues(posX-250, posY-300, 0.0), 
                        
                    //   child: getDialog(jsondata.Globals.GetCurrSubTopic_3Options()[1],context)  
                    //   );
                   
                    return getDialog(jsondata.Globals.GetCurrSubTopic_3Options()[1],context)  ;
                    }
                    );
                            }
                    }
                  },
                  onTapDown: (TapDownDetails details) => _onTapDown(details),
                  child: Column(
                  children: <Widget>[
                   Container(
                    
                        width: MediaQuery.of(context).size.width/3,
                        height: MediaQuery.of(context).size.width/3,
                        child: Material(
                          child: getWidget(jsondata.Globals.GetCurrSubTopic_3Options()[1]),
                          shape: CircleBorder(
                            
                          ),
                          color: Colors.white,
                        ),

                      ),
                     Text(GetName(jsondata.Globals.GetCurrSubTopic_3Options()[1]),textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20))
                  ]
                  )
                ),
                    // spacer to move scond icon from side
                    Spacer(flex: 2),
                ]
                
              ),
              //need be space between each row
            SizedBox(height: _screenHeight/30),
            //  Spacer(flex: 10,),
              //ROW 2
                new Row(
                children: <Widget>[
                  //spacer to move first from side
                Spacer(flex: 2),  

                //First icon
                    GestureDetector(
                  onTap: ()
                  {
                    print("hello");
                    if(jsondata.Globals.GetCurrSubTopic_3Options()[2] != null && jsondata.Globals.GetCurrSubTopic_3Options()[2] != "" && jsondata.Globals.GetCurrSubTopic_3Options()[2] 
                      != "icon1.jpg" && jsondata.Globals.GetCurrSubTopic_3Options()[2] != "icon2.jpg") 
                    {
                      if(!finalJson.contains(method(jsondata.Globals.GetCurrSubTopic_3Options()[2])))
                            {
                           jsondata.Globals.SetCurrSubSelected(method( jsondata.Globals.GetCurrSubTopic_3Options()[2])); App_Start_Lemida(context);;
                              jsondata.Globals.SetCurrSubSelected(method( jsondata.Globals.GetCurrSubTopic_3Options()[2])); App_Start_Lemida(context);
                              }  
                    else
                            { 
                                showDialog(context: context,
                    builder: (BuildContext context)
                    {
                    //  return  Transform(transform: Matrix4.translationValues(posX-250, posY-300, 0.0), 
                        
                    //   child: getDialog(jsondata.Globals.GetCurrSubTopic_3Options()[2],context)
                   
                    return getDialog(jsondata.Globals.GetCurrSubTopic_3Options()[2],context)  ;
                    //   );
                    }
                    );
                            }
                    }
                  },onTapDown: (TapDownDetails details) => _onTapDown(details),
                   child: Column(
                  children: <Widget>[
                   Container(
                    
                        width: MediaQuery.of(context).size.width/3,
                        height: MediaQuery.of(context).size.width/3,
                        child: Material(
                        child: getWidget(jsondata.Globals.GetCurrSubTopic_3Options()[2]), 
                          shape: CircleBorder(
                            
                          ),
                          color: Colors.white,
                        ),

                      ),
                      Text(GetName(jsondata.Globals.GetCurrSubTopic_3Options()[2]),textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20))
                  ]
                   )
                ),
                    //space to move first icon from second
                    Spacer(flex: 3,),
                //second icon
                    GestureDetector(
                  onTap: ()
                  {

                    print("pink hello");
                    if(jsondata.Globals.GetCurrSubTopic_3Options()[3] != null && jsondata.Globals.GetCurrSubTopic_3Options()[3] != "" && jsondata.Globals.GetCurrSubTopic_3Options()[3] 
                      != "icon1.jpg" && jsondata.Globals.GetCurrSubTopic_3Options()[3] != "icon2.jpg") 
                    {
                       if(!finalJson.contains(method(jsondata.Globals.GetCurrSubTopic_3Options()[3])))
                            {
                        //   jsondata.Globals.SetCurrSubSelected(method(jsondata.Globals.GetCurrSubTopic_3Options()[3])); App_Start_Lemida(context);;
                            jsondata.Globals.SetCurrSubSelected(method(jsondata.Globals.GetCurrSubTopic_3Options()[3])); App_Start_Lemida(context);
                            }
                    else
                            { 
                                showDialog(context: context,
                    builder: (BuildContext context)
                    {
                    //  return  Transform(transform: Matrix4.translationValues(posX-250, posY-300, 0.0), 
                        
                    //   child: getDialog(jsondata.Globals.GetCurrSubTopic_3Options()[3],context)  
                    //   );
                  
                    return getDialog(jsondata.Globals.GetCurrSubTopic_3Options()[3],context) ;
                    }
                    );
                            }
                    }
                  },
                  onTapDown: (TapDownDetails details) => _onTapDown(details),
                  child: Column(
                  children: <Widget>[
                   Container(
                    
                        width: MediaQuery.of(context).size.width/3,
                        height: MediaQuery.of(context).size.width/3,
                        child: Material(
                          child: getWidget(jsondata.Globals.GetCurrSubTopic_3Options()[3]),
                          shape: CircleBorder(
                            
                          ),
                          color: Colors.white,
                        ),

                      ),
                      Text(GetName(jsondata.Globals.GetCurrSubTopic_3Options()[3]),textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20))
                  ]
                  )
                ),
                    // spacer to move scond icon from side
                    Spacer(flex: 2),
                ]
                
              ),
              //spacer to move icon up
              SizedBox(height: _screenHeight/30),
              //ROW 3

              new Row(
                children: <Widget>[
                  //spacer to move first from side
                Spacer(flex: 2),  

                //First icon
                    GestureDetector(
                  onTap: ()
                  {
                    print("hello");
                      if(jsondata.Globals.GetCurrSubTopic_3Options()[4] != null && jsondata.Globals.GetCurrSubTopic_3Options()[4] != "" && jsondata.Globals.GetCurrSubTopic_3Options()[4] 
                      != "icon1.jpg" && jsondata.Globals.GetCurrSubTopic_3Options()[4] != "icon2.jpg") 
                    {
                      if(!finalJson.contains(method(jsondata.Globals.GetCurrSubTopic_3Options()[4])))
                            {
                        //   jsondata.Globals.SetCurrSubSelected(method(jsondata.Globals.GetCurrSubTopic_3Options()[4])); App_Start_Lemida(context);;
                               jsondata.Globals.SetCurrSubSelected(method(jsondata.Globals.GetCurrSubTopic_3Options()[4])); App_Start_Lemida(context);
                              }
                    else
                            { 
                                showDialog(context: context,
                    builder: (BuildContext context)
                    {
                    //  return  Transform(transform: Matrix4.translationValues(posX-250, posY-300, 0.0), 
                        
                    //   child: getDialog(jsondata.Globals.GetCurrSubTopic_3Options()[4],context) 
                    //   );
                   
                    return getDialog(jsondata.Globals.GetCurrSubTopic_3Options()[4],context) ;
                    }
                    );
                            }
                    }
                  },onTapDown: (TapDownDetails details) => _onTapDown(details),
                  child: Column(
                  children: <Widget>[
                   Container(
                    
                        width: MediaQuery.of(context).size.width/3,
                        height: MediaQuery.of(context).size.width/3,
                        child: Material(
                          child: getWidget(jsondata.Globals.GetCurrSubTopic_3Options()[4]),
                          shape: CircleBorder(
                            
                          ),
                    //      color: Colors.white,
                        ),

                      ),
                      Text(GetName(jsondata.Globals.GetCurrSubTopic_3Options()[4]),textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20))
                  ]
)
                ),
                    //space to move first icon from second
                    Spacer(flex: 3,),
                //second icon
                    GestureDetector(
                  onTap: ()
                  {

                    print("pink hello");
                      if(jsondata.Globals.GetCurrSubTopic_3Options()[5] != null && jsondata.Globals.GetCurrSubTopic_3Options()[5] != "" && jsondata.Globals.GetCurrSubTopic_3Options()[5] != "icon1.jpg" && jsondata.Globals.GetCurrSubTopic_3Options()[5] != "icon2.jpg") //jsondata.Globals.GetCurrSubTopic_3Options()[5])
                    {

                      if(!finalJson.contains(method(jsondata.Globals.GetCurrSubTopic_3Options()[5])))
                            {
                           //jsondata.Globals.SetCurrSubSelected(method(jsondata.Globals.GetCurrSubTopic_3Options()[5])); App_Start_Lemida(context);;
                            jsondata.Globals.SetCurrSubSelected(method(jsondata.Globals.GetCurrSubTopic_3Options()[5])); App_Start_Lemida(context);
                            }
                    else
                            { 
                                showDialog(context: context,
                    builder: (BuildContext context)
                    {
                    //  return  Transform(transform: Matrix4.translationValues(posX-250, posY-300, 0.0), 
                        
                    //   child: getDialog(jsondata.Globals.GetCurrSubTopic_3Options()[5],context) 
                    //   );
                   
                    return getDialog(jsondata.Globals.GetCurrSubTopic_3Options()[5],context);
                    }
                    );
                            }
                  }
                  },
                  onTapDown: (TapDownDetails details) => _onTapDown(details),
                  child: Column(
                  children: <Widget>[
                   Container(
                    
                        width: MediaQuery.of(context).size.width/3,
                        height: MediaQuery.of(context).size.width/3,
                        child: Material(
                          child: getWidget(jsondata.Globals.GetCurrSubTopic_3Options()[5]),
                          shape: CircleBorder(
                            
                          ),
                  //        color: Colors.white,
                        ),

                      ),
                      Text(GetName(jsondata.Globals.GetCurrSubTopic_3Options()[5]),textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20))
                  ]
)
                ),
                    // spacer to move scond icon from side
                    Spacer(flex: 2),
                ]
                
              ),
              //spacer to move icon up
            SizedBox(height: _screenHeight/30),
            //  Spacer(flex:30),
             ]
             )
                )
                ]
              ),// : Container(),
        //    }






//end3
///option4
              if(!jsonLoader.Globals.GetCurrSubTopic_4Options().isEmpty) //{
                Column(

              children: <Widget>[
                
                Expanded(
                child: ListView(//ListView(
                     shrinkWrap: true,
                      padding: EdgeInsets.all(5.0),
             children: <Widget>[
                  //spacer to move from top
              SizedBox(height: _screenHeight/30),
              //    Spacer(flex: 10),
              //Row 1
              new Row(
                children: <Widget>[
                  //spacer to move first from side
                Spacer(flex: 1),  

                //First icon
                    GestureDetector(
                  onTap: ()
                  {
                    print("hello");
                    if(jsondata.Globals.GetCurrSubTopic_4Options()[0] != null && jsondata.Globals.GetCurrSubTopic_4Options()[0] != "" && jsondata.Globals.GetCurrSubTopic_4Options()[0] 
                      != "icon1.jpg" && jsondata.Globals.GetCurrSubTopic_4Options()[0] != "icon2.jpg") 
                    {
                      if(!finalJson.contains(method(jsondata.Globals.GetCurrSubTopic_4Options()[0])))
                            {
                         //   SSchedulerBinding.instance.addPostFrameCallback((_) => setState(() { jsondata.Globals.SetCurrSubSelected(method(jsondata.Globals.GetCurrSubTopic_4Options()[0])); App_Start_Lemida(context);;
                                jsondata.Globals.SetCurrSubSelected(method(jsondata.Globals.GetCurrSubTopic_4Options()[0])); App_Start_Lemida(context); 
                                }
                    else
                            { 
                                showDialog(context: context,
                    builder: (BuildContext context)
                    {
                    //  return  Transform(transform: Matrix4.translationValues(posX-250, posY-300, 0.0), 
                        
                    //   child: getDialog(jsondata.Globals.GetCurrSubTopic_4Options()[0], context) 
                    //   );
                   
                      return getDialog(jsondata.Globals.GetCurrSubTopic_4Options()[0], context) ;
                    }
                    );
                            }
                    }
                  },
                  onTapDown: (TapDownDetails details) => _onTapDown(details),
                  child: Column(
                  children: <Widget>[
                   Container(
                    
                        width: MediaQuery.of(context).size.width/3,
                        height: MediaQuery.of(context).size.width/3,
                        child: Material(
                          child: getWidget(jsondata.Globals.GetCurrSubTopic_4Options()[0]),
                          shape: CircleBorder(
                            
                          ),
                          color: Colors.white,
                        ),

                      ),
                      Text(GetName(jsondata.Globals.GetCurrSubTopic_4Options()[0]),textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 13))
                  ]
)
                ),
                    //space to move first icon from second
                    Spacer(flex: 3,),
                //second icon
                    GestureDetector(
                  onTap: ()
                  {

                    print("pink hello");
                    if(jsondata.Globals.GetCurrSubTopic_4Options()[1] != null && jsondata.Globals.GetCurrSubTopic_4Options()[1] != "" && jsondata.Globals.GetCurrSubTopic_4Options()[1] 
                      != "icon1.jpg" && jsondata.Globals.GetCurrSubTopic_4Options()[1] != "icon2.jpg") 
                    {
                       if(!finalJson.contains(method(jsondata.Globals.GetCurrSubTopic_4Options()[1])))
                            {
                          //  DSchedulerBinding.instance.addPostFrameCallback((_) => setState(() { jsondata.Globals.SetCurrSubSelected(method(jsondata.Globals.GetCurrSubTopic_4Options()[1])); App_Start_Lemida(context);;
                              jsondata.Globals.SetCurrSubSelected(method(jsondata.Globals.GetCurrSubTopic_4Options()[1])); App_Start_Lemida(context);
                              }
                    else
                            { 
                                showDialog(context: context,
                    builder: (BuildContext context)
                    {
                    //  return  Transform(transform: Matrix4.translationValues(posX-250, posY-300, 0.0), 
                        
                    //   child: getDialog(jsondata.Globals.GetCurrSubTopic_4Options()[1],context)  
                    //   );
                  
                    return getDialog(jsondata.Globals.GetCurrSubTopic_4Options()[1],context)  ;
                    }
                    );
                            }
                    }
                  },
                  onTapDown: (TapDownDetails details) => _onTapDown(details),
                  child: Column(
                  children: <Widget>[
                   Container(
                    
                        width: MediaQuery.of(context).size.width/3,
                        height: MediaQuery.of(context).size.width/3,
                        child: Material(
                          child: getWidget(jsondata.Globals.GetCurrSubTopic_4Options()[1]),
                          shape: CircleBorder(
                            
                          ),
                          color: Colors.white,
                        ),

                      ),
                      Text(GetName(jsondata.Globals.GetCurrSubTopic_4Options()[1]),textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 13))
                  ]
)
                ),
                    // spacer to move scond icon from side
                    Spacer(flex: 2),
                ]
                
              ),
              //need be space between each row
           SizedBox(height: _screenHeight/30),
           //   Spacer(flex: 10,),
              //ROW 2
                new Row(
                children: <Widget>[
                  //spacer to move first from side
                Spacer(flex: 2),  

                //First icon
                    GestureDetector(
                  onTap: ()
                  {
                    print("hello");
                    if(jsondata.Globals.GetCurrSubTopic_4Options()[2] != null && jsondata.Globals.GetCurrSubTopic_4Options()[2] != "" && jsondata.Globals.GetCurrSubTopic_4Options()[2] 
                      != "icon1.jpg" && jsondata.Globals.GetCurrSubTopic_4Options()[2] != "icon2.jpg") 
                    {
                      if(!finalJson.contains(method(jsondata.Globals.GetCurrSubTopic_4Options()[2])))
                            {
                           jsondata.Globals.SetCurrSubSelected(method(jsondata.Globals.GetCurrSubTopic_4Options()[2])); App_Start_Lemida(context);
 } 
                    else
                            { 
                                showDialog(context: context,
                    builder: (BuildContext context)
                    {
                    //  return  Transform(transform: Matrix4.translationValues(posX-250, posY-300, 0.0), 
                        
                    //   child: getDialog(jsondata.Globals.GetCurrSubTopic_4Options()[2],context) 
                   
                    return getDialog(jsondata.Globals.GetCurrSubTopic_4Options()[2],context)  ;
                    //   );
                    }
                    );
                            }
                    }
                  },onTapDown: (TapDownDetails details) => _onTapDown(details),
                  child: Column(
                  children: <Widget>[
                   Container(
                    
                        width: MediaQuery.of(context).size.width/3,
                        height: MediaQuery.of(context).size.width/3,
                        child: Material(
                          child: getWidget(jsondata.Globals.GetCurrSubTopic_4Options()[2]),
                          shape: CircleBorder(
                            
                          ),
                      //    color: Colors.white,
                        ),

                      ),
                      Text(GetName(jsondata.Globals.GetCurrSubTopic_4Options()[2]),textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20))
                  ]
)
                ),
                    //space to move first icon from second
                    Spacer(flex: 3,),
                //second icon
                    GestureDetector(
                  onTap: ()
                  {

                    print("pink hello");
                    if(jsondata.Globals.GetCurrSubTopic_4Options()[3] != null && jsondata.Globals.GetCurrSubTopic_4Options()[3] != "" && jsondata.Globals.GetCurrSubTopic_4Options()[3] 
                      != "icon1.jpg" && jsondata.Globals.GetCurrSubTopic_4Options()[3] != "icon2.jpg") 
                    {
                      if(!finalJson.contains(method(jsondata.Globals.GetCurrSubTopic_4Options()[3])))
                            {
                           jsondata.Globals.SetCurrSubSelected(method(jsondata.Globals.GetCurrSubTopic_4Options()[3])); App_Start_Lemida(context);;
 }
                    else
                            { 
                                showDialog(context: context,
                    builder: (BuildContext context)
                    {
                    //  return  Transform(transform: Matrix4.translationValues(posX-250, posY-300, 0.0), 
                        
                    //   child: getDialog(jsondata.Globals.GetCurrSubTopic_4Options()[3],context)  
                    //   );
                   
                    return getDialog(jsondata.Globals.GetCurrSubTopic_4Options()[3],context) ;
                    }
                    );
                            }
                    }
                  },
                  onTapDown: (TapDownDetails details) => _onTapDown(details),
                  child: Column(
                  children: <Widget>[
                   Container(
                    
                        width: MediaQuery.of(context).size.width/3,
                        height: MediaQuery.of(context).size.width/3,
                        child: Material(
                          child: getWidget(jsondata.Globals.GetCurrSubTopic_4Options()[3]),
                          shape: CircleBorder(
                            
                          ),
                   //       color: Colors.white,
                        ),

                      ),
                      Text(GetName(jsondata.Globals.GetCurrSubTopic_4Options()[3]),textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20))
                  ]
)
                ),
                    // spacer to move scond icon from side
                    Spacer(flex: 2),
                ]
                
              ),
              //spacer to move icon up
              SizedBox(height: _screenHeight/30),
              //ROW 3

              new Row(
                children: <Widget>[
                  //spacer to move first from side
                Spacer(flex: 2),  

                //First icon
                    GestureDetector(
                  onTap: ()
                  {
                    print("hello");
                      if(jsondata.Globals.GetCurrSubTopic_4Options()[4] != null && jsondata.Globals.GetCurrSubTopic_4Options()[4] != "" && jsondata.Globals.GetCurrSubTopic_4Options()[4] 
                      != "icon1.jpg" && jsondata.Globals.GetCurrSubTopic_4Options()[4] != "icon2.jpg") 
                    {
                      if(!finalJson.contains(method(jsondata.Globals.GetCurrSubTopic_4Options()[4])))
                            {
                           jsondata.Globals.SetCurrSubSelected(method(jsondata.Globals.GetCurrSubTopic_4Options()[4])); App_Start_Lemida(context);;
 }
                    else
                            { 
                                showDialog(context: context,
                    builder: (BuildContext context)
                    {
                    //  return  Transform(transform: Matrix4.translationValues(posX-250, posY-300, 0.0), 
                        
                    //   child: getDialog(jsondata.Globals.GetCurrSubTopic_4Options()[4],context) 
                    //   );
                   
                    return getDialog(jsondata.Globals.GetCurrSubTopic_4Options()[4],context) ;
                    }
                    );
                            }
                    }
                  },onTapDown: (TapDownDetails details) => _onTapDown(details),
                  child: Column(
                  children: <Widget>[
                   Container(
                    
                        width: MediaQuery.of(context).size.width/3,
                        height: MediaQuery.of(context).size.width/3,
                        child: Material(
                          child: getWidget(jsondata.Globals.GetCurrSubTopic_4Options()[4]),
                          shape: CircleBorder(
                            
                          ),
                  //        color: Colors.white,
                        ),

                      ),
                      Text(GetName(jsondata.Globals.GetCurrSubTopic_4Options()[4]),textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20))
                  ]
)
                ),
                    //space to move first icon from second
                    Spacer(flex: 3,),
                //second icon
                    GestureDetector(
                  onTap: ()
                  {

                    print("pink hello");
                      if(jsondata.Globals.GetCurrSubTopic_4Options()[5] != null && jsondata.Globals.GetCurrSubTopic_4Options()[5] != "" && jsondata.Globals.GetCurrSubTopic_4Options()[5] != "icon1.jpg" && jsondata.Globals.GetCurrSubTopic_4Options()[5] != "icon2.jpg") //jsondata.Globals.GetCurrSubTopic_4Options()[5])
                    {
if(!finalJson.contains(method(jsondata.Globals.GetCurrSubTopic_4Options()[5])))
                            {
                           jsondata.Globals.SetCurrSubSelected(method(jsondata.Globals.GetCurrSubTopic_4Options()[5])); App_Start_Lemida(context);;
 }
                      
                    else
                            { 
                                showDialog(context: context,
                    builder: (BuildContext context)
                    {
                    //  return  Transform(transform: Matrix4.translationValues(posX-250, posY-300, 0.0), 
                        
                    //   child: getDialog(jsondata.Globals.GetCurrSubTopic_4Options()[5],context) 
                    //   );
                   
                    return getDialog(jsondata.Globals.GetCurrSubTopic_4Options()[5],context);
                    }
                    );
                            }
                  }
                  },
                  onTapDown: (TapDownDetails details) => _onTapDown(details),
                  child: Column(
                  children: <Widget>[
                   Container(
                    
                        width: MediaQuery.of(context).size.width/3,
                        height: MediaQuery.of(context).size.width/3,
                        child: Material(
                          child: getWidget(jsondata.Globals.GetCurrSubTopic_4Options()[5]),
                          shape: CircleBorder(
                            
                          ),
                  //        color: Colors.white,
                        ),

                      ),
                      Text(GetName(jsondata.Globals.GetCurrSubTopic_4Options()[5]),textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20))
                  ]
)
                ),
                    // spacer to move scond icon from side
                    Spacer(flex: 2),
                ]
                
              ),
              //spacer to move icon up
            SizedBox(height: _screenHeight/30),
            //  Spacer(flex:30),
             ]
                )
                )
                ]
              ),// : Container(),
        //    }







///end4
///5
              if(!jsonLoader.Globals.GetCurrSubTopic_5Options().isEmpty) //{
                Column(

              children: <Widget>[
                
                Expanded(
                child: ListView(//ListView(
                     shrinkWrap: true,
                      padding: EdgeInsets.all(5.0),
             children: <Widget>[
                  //spacer to move from top
               SizedBox(height: _screenHeight/30),
               //   Spacer(flex: 10),
              //Row 1
              new Row(
                children: <Widget>[
                  //spacer to move first from side
                Spacer(flex: 2),  

                //First icon
                    GestureDetector(
                  onTap: ()
                  {
                    print("hello");
                    if(jsondata.Globals.GetCurrSubTopic_5Options()[0] != null && jsondata.Globals.GetCurrSubTopic_5Options()[0] != "" && jsondata.Globals.GetCurrSubTopic_5Options()[0] 
                      != "icon1.jpg" && jsondata.Globals.GetCurrSubTopic_5Options()[0] != "icon2.jpg") 
                    {
                       if(!finalJson.contains(method(jsondata.Globals.GetCurrSubTopic_5Options()[0])))
                            {
                           jsondata.Globals.SetCurrSubSelected(method(jsondata.Globals.GetCurrSubTopic_5Options()[0])); App_Start_Lemida(context);
 }
                    else
                            { 
                                showDialog(context: context,
                    builder: (BuildContext context)
                    {
                    //  return  Transform(transform: Matrix4.translationValues(posX-250, posY-300, 0.0), 
                        
                    //   child: getDialog(jsondata.Globals.GetCurrSubTopic_5Options()[0], context) 
                    //   );
                  
                      return getDialog(jsondata.Globals.GetCurrSubTopic_5Options()[0], context) ;
                    }
                    );
                            }
                    }
                  },
                  onTapDown: (TapDownDetails details) => _onTapDown(details),
                  child: Column(
                  children: <Widget>[
                   Container(
                    
                        width: MediaQuery.of(context).size.width/3,
                        height: MediaQuery.of(context).size.width/3,
                        child: Material(
                          child: getWidget(jsondata.Globals.GetCurrSubTopic_5Options()[0]),
                          shape: CircleBorder(
                            
                          ),
                          color: Colors.white,
                        ),

                      ),
                      Text(GetName(jsondata.Globals.GetCurrSubTopic_5Options()[0]),textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20))
                  ]
)
                ),
                    //space to move first icon from second
                    Spacer(flex: 3,),
                //second icon
                    GestureDetector(
                  onTap: ()
                  {

                    print("pink hello");
                    if(jsondata.Globals.GetCurrSubTopic_5Options()[1] != null && jsondata.Globals.GetCurrSubTopic_5Options()[1] != "" && jsondata.Globals.GetCurrSubTopic_5Options()[1] 
                      != "icon1.jpg" && jsondata.Globals.GetCurrSubTopic_5Options()[1] != "icon2.jpg") 
                    {
                      if(!finalJson.contains(method(jsondata.Globals.GetCurrSubTopic_5Options()[1])))
                            {
                           jsondata.Globals.SetCurrSubSelected(method(jsondata.Globals.GetCurrSubTopic_5Options()[1])); App_Start_Lemida(context);
 }
                    else
                            { 
                                showDialog(context: context,
                    builder: (BuildContext context)
                    {
                    //  return  Transform(transform: Matrix4.translationValues(posX-250, posY-300, 0.0), 
                        
                    //   child: getDialog(jsondata.Globals.GetCurrSubTopic_5Options()[1],context)  
                    //   );
                   
                    return getDialog(jsondata.Globals.GetCurrSubTopic_5Options()[1],context)  ;
                    }
                    );}
                    }
                  },
                  onTapDown: (TapDownDetails details) => _onTapDown(details),
                  child: Column(
                  children: <Widget>[
                   Container(
                    
                        width: MediaQuery.of(context).size.width/3,
                        height: MediaQuery.of(context).size.width/3,
                        child: Material(
                          child: getWidget(jsondata.Globals.GetCurrSubTopic_5Options()[1]),
                          shape: CircleBorder(
                            
                          ),
                      //    color: Colors.white,
                        ),

                      ),
                      Text(GetName(jsondata.Globals.GetCurrSubTopic_5Options()[1]),textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 13))
                  ]
)
                ),
                    // spacer to move scond icon from side
                    Spacer(flex: 2),
                ]
                
              ),
              //need be space between each row
             SizedBox(height: _screenHeight/30),
             // Spacer(flex: 10,),
              //ROW 2
                new Row(
                children: <Widget>[
                  //spacer to move first from side
                Spacer(flex: 2),  

                //First icon
                    GestureDetector(
                  onTap: ()
                  {
                    print("hello");
                    if(jsondata.Globals.GetCurrSubTopic_5Options()[2] != null && jsondata.Globals.GetCurrSubTopic_5Options()[2] != "" && jsondata.Globals.GetCurrSubTopic_5Options()[2] 
                      != "icon1.jpg" && jsondata.Globals.GetCurrSubTopic_5Options()[2] != "icon2.jpg") 
                    {
                      if(!finalJson.contains(method(jsondata.Globals.GetCurrSubTopic_5Options()[2])))
                            {
                           jsondata.Globals.SetCurrSubSelected(method(jsondata.Globals.GetCurrSubTopic_5Options()[2])); App_Start_Lemida(context);;
 }
                    else
                            { 
                                showDialog(context: context,
                    builder: (BuildContext context)
                    {
                    //  return  Transform(transform: Matrix4.translationValues(posX-250, posY-300, 0.0), 
                        
                    //   child: getDialog(jsondata.Globals.GetCurrSubTopic_5Options()[2],context)  
                   
                    return getDialog(jsondata.Globals.GetCurrSubTopic_5Options()[2],context)  ;
                    //   );
                    }
                    );}
                    }
                  },onTapDown: (TapDownDetails details) => _onTapDown(details),
                  child: Column(
                  children: <Widget>[
                   Container(
                    
                        width: MediaQuery.of(context).size.width/3,
                        height: MediaQuery.of(context).size.width/3,
                        child: Material(
                          child: getWidget(jsondata.Globals.GetCurrSubTopic_5Options()[2]),
                          shape: CircleBorder(
                            
                          ),
                    //      color: Colors.white,
                        ),

                      ),
                      Text(GetName(jsondata.Globals.GetCurrSubTopic_5Options()[2]),textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 13))
                  ]
)
                ),
                    //space to move first icon from second
                    Spacer(flex: 3,),
                //second icon
                    GestureDetector(
                  onTap: ()
                  {

                    print("pink hello");
                    if(jsondata.Globals.GetCurrSubTopic_5Options()[3] != null && jsondata.Globals.GetCurrSubTopic_5Options()[3] != "" && jsondata.Globals.GetCurrSubTopic_5Options()[3] 
                      != "icon1.jpg" && jsondata.Globals.GetCurrSubTopic_5Options()[3] != "icon2.jpg") 
                    {
                      if(!finalJson.contains(method(jsondata.Globals.GetCurrSubTopic_5Options()[3])))
                            {
                           jsondata.Globals.SetCurrSubSelected(method(jsondata.Globals.GetCurrSubTopic_5Options()[3])); App_Start_Lemida(context);;
 }
                    else
                            { 
                                showDialog(context: context,
                    builder: (BuildContext context)
                    {
                    //  return  Transform(transform: Matrix4.translationValues(posX-250, posY-300, 0.0), 
                        
                    //   child: getDialog(jsondata.Globals.GetCurrSubTopic_5Options()[3],context)  
                    //   );
                   
                    return getDialog(jsondata.Globals.GetCurrSubTopic_5Options()[3],context) ;
                    }
                    );}
                    }
                  },
                  onTapDown: (TapDownDetails details) => _onTapDown(details),
                  child: Column(
                  children: <Widget>[
                   Container(
                    
                        width: MediaQuery.of(context).size.width/3,
                        height: MediaQuery.of(context).size.width/3,
                        child: Material(
                          child: getWidget(jsondata.Globals.GetCurrSubTopic_5Options()[3]),
                          shape: CircleBorder(
                            
                          ),
                   //       color: Colors.white,
                        ),

                      ),
                      Text(GetName(jsondata.Globals.GetCurrSubTopic_5Options()[3]),textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 13))
                  ]
)
                ),
                    // spacer to move scond icon from side
                    Spacer(flex: 2),
                ]
                
              ),
              //spacer to move icon up
           SizedBox(height: _screenHeight/30),
           //   Spacer(flex:10),
              //ROW 3

              new Row(
                children: <Widget>[
                  //spacer to move first from side
                Spacer(flex: 2),  

                //First icon
                    GestureDetector(
                  onTap: ()
                  {
                    print("hello");
                      if(jsondata.Globals.GetCurrSubTopic_5Options()[4] != null && jsondata.Globals.GetCurrSubTopic_5Options()[4] != "" && jsondata.Globals.GetCurrSubTopic_5Options()[4] 
                      != "icon1.jpg" && jsondata.Globals.GetCurrSubTopic_5Options()[4] != "icon2.jpg") 
                    {
                      if(!finalJson.contains(method(jsondata.Globals.GetCurrSubTopic_5Options()[4])))
                            {
                           jsondata.Globals.SetCurrSubSelected(method(jsondata.Globals.GetCurrSubTopic_5Options()[4])); App_Start_Lemida(context);;
 }
                    else
                            { 
                                showDialog(context: context,
                    builder: (BuildContext context)
                    {
                    //  return  Transform(transform: Matrix4.translationValues(posX-250, posY-300, 0.0), 
                        
                    //   child: getDialog(jsondata.Globals.GetCurrSubTopic_5Options()[4],context) 
                    //   );
                   
                    return getDialog(jsondata.Globals.GetCurrSubTopic_5Options()[4],context) ;
                    }
                    );}
                    }
                  },onTapDown: (TapDownDetails details) => _onTapDown(details),
                  child: Column(
                  children: <Widget>[
                   Container(
                    
                        width: MediaQuery.of(context).size.width/3,
                        height: MediaQuery.of(context).size.width/3,
                        child: Material(
                          child: getWidget(jsondata.Globals.GetCurrSubTopic_5Options()[4]),
                          shape: CircleBorder(
                            
                          ),
                   //       color: Colors.white,
                        ),

                      ),
                      Text(GetName(jsondata.Globals.GetCurrSubTopic_5Options()[4]),textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 13))
                  ]
)
                ),
                    //space to move first icon from second
                    Spacer(flex: 3,),
                //second icon
                    GestureDetector(
                  onTap: ()
                  {

                    print("pink hello");
                      if(jsondata.Globals.GetCurrSubTopic_5Options()[5] != null && jsondata.Globals.GetCurrSubTopic_5Options()[5] != "" && jsondata.Globals.GetCurrSubTopic_5Options()[5] != "icon1.jpg" && jsondata.Globals.GetCurrSubTopic_5Options()[5] != "icon2.jpg") //jsondata.Globals.GetCurrSubTopic_5Options()[5])
                    {
if(!finalJson.contains(method(jsondata.Globals.GetCurrSubTopic_5Options()[5])))
                            {
                           jsondata.Globals.SetCurrSubSelected(method(jsondata.Globals.GetCurrSubTopic_5Options()[5])); App_Start_Lemida(context);;
 }
                      
                    else
                            { 
                                showDialog(context: context,
                    builder: (BuildContext context)
                    {
                    //  return  Transform(transform: Matrix4.translationValues(posX-250, posY-300, 0.0), 
                        
                    //   child: getDialog(jsondata.Globals.GetCurrSubTopic_5Options()[5],context) 
                    //   );
                   
                    return getDialog(jsondata.Globals.GetCurrSubTopic_5Options()[5],context);
                    }
                    );
                            }
                  }
                  },
                  onTapDown: (TapDownDetails details) => _onTapDown(details),
                  child: Column(
                  children: <Widget>[
                   Container(
                    
                        width: MediaQuery.of(context).size.width/3,
                        height: MediaQuery.of(context).size.width/3,
                        child: Material(
                          child: getWidget(jsondata.Globals.GetCurrSubTopic_5Options()[5]),
                          shape: CircleBorder(
                            
                          ),
              //            color: Colors.white,
                        ),

                      ),
                      Text(GetName(jsondata.Globals.GetCurrSubTopic_5Options()[5]),textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 13))
                  ]
)
                ),
                    // spacer to move scond icon from side
                    Spacer(flex: 2),
                ]
                
              ),
              //spacer to move icon up
            SizedBox(height: _screenHeight/30),
            //  Spacer(flex:30),
             ]
                )
                )
                ]
              ),// : Container(),
        //    }
///end5
///
///6
              if(!jsonLoader.Globals.GetCurrSubTopic_6Options().isEmpty) //{
               Column(

              children: <Widget>[
                
                Expanded(
                child: ListView(//ListView(
                     shrinkWrap: true,
                      padding: EdgeInsets.all(5.0),
             children: <Widget>[
                  //spacer to move from top
               SizedBox(height: _screenHeight/30),
               //   Spacer(flex: 10),
              //Row 1
              new Row(
                children: <Widget>[
                  //spacer to move first from side
                Spacer(flex: 2),  

                //First icon
                    GestureDetector(
                  onTap: ()
                  {
                    print("hello");
                    if(jsondata.Globals.GetCurrSubTopic_6Options()[0] != null && jsondata.Globals.GetCurrSubTopic_6Options()[0] != "" && jsondata.Globals.GetCurrSubTopic_6Options()[0] 
                      != "icon1.jpg" && jsondata.Globals.GetCurrSubTopic_6Options()[0] != "icon2.jpg") 
                    {
                       if(!finalJson.contains(method(jsondata.Globals.GetCurrSubTopic_6Options()[0])))
                            {
                           jsondata.Globals.SetCurrSubSelected(method(jsondata.Globals.GetCurrSubTopic_6Options()[0])); App_Start_Lemida(context);;
 }
                    else
                            { 
                                showDialog(context: context,
                    builder: (BuildContext context)
                    {
                    //  return  Transform(transform: Matrix4.translationValues(posX-250, posY-300, 0.0), 
                        
                    //   child: getDialog(jsondata.Globals.GetCurrSubTopic_6Options()[0], context) 
                    //   );
                  
                      return getDialog(jsondata.Globals.GetCurrSubTopic_6Options()[0], context) ;
                    }
                    );}
                    }
                  },
                  onTapDown: (TapDownDetails details) => _onTapDown(details),
                  child: Column(
                  children: <Widget>[
                   Container(
                    
                        width: MediaQuery.of(context).size.width/3,
                        height: MediaQuery.of(context).size.width/3,
                        child: Material(
                          child: getWidget(jsondata.Globals.GetCurrSubTopic_6Options()[0]),
                          shape: CircleBorder(
                            
                          ),
                          color: Colors.white,
                        ),

                      ),
                      Text(GetName(jsondata.Globals.GetCurrSubTopic_6Options()[0]),textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20))
                  ]
)
                ),
                    //space to move first icon from second
                    Spacer(flex: 3,),
                //second icon
                    GestureDetector(
                  onTap: ()
                  {

                    print("pink hello");
                    if(jsondata.Globals.GetCurrSubTopic_6Options()[1] != null && jsondata.Globals.GetCurrSubTopic_6Options()[1] != "" && jsondata.Globals.GetCurrSubTopic_6Options()[1] 
                      != "icon1.jpg" && jsondata.Globals.GetCurrSubTopic_6Options()[1] != "icon2.jpg") 
                    {
                      if(!finalJson.contains(method(jsondata.Globals.GetCurrSubTopic_6Options()[1])))
                            {
                           jsondata.Globals.SetCurrSubSelected(method(jsondata.Globals.GetCurrSubTopic_6Options()[1])); App_Start_Lemida(context);;
 }
                    else
                            { 
                                showDialog(context: context,
                    builder: (BuildContext context)
                    {
                    //  return  Transform(transform: Matrix4.translationValues(posX-250, posY-300, 0.0), 
                        
                    //   child: getDialog(jsondata.Globals.GetCurrSubTopic_6Options()[1],context)  
                    //   );
                   
                    return getDialog(jsondata.Globals.GetCurrSubTopic_6Options()[1],context)  ;
                    }
                    );}
                    }
                  },
                  onTapDown: (TapDownDetails details) => _onTapDown(details),
                  child: Column(
                  children: <Widget>[
                   Container(
                    
                        width: MediaQuery.of(context).size.width/3,
                        height: MediaQuery.of(context).size.width/3,
                        child: Material(
                          child: getWidget(jsondata.Globals.GetCurrSubTopic_6Options()[1]),
                          shape: CircleBorder(
                            
                          ),
                          color: Colors.white,
                        ),

                      ),
                      Text(GetName(jsondata.Globals.GetCurrSubTopic_6Options()[1]),textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20))
                  ]
)
                ),
                    // spacer to move scond icon from side
                    Spacer(flex: 2),
                ]
                
              ),
              //need be space between each row
             SizedBox(height: _screenHeight/30),
             // Spacer(flex: 10,),
              //ROW 2
                new Row(
                children: <Widget>[
                  //spacer to move first from side
                Spacer(flex: 2),  

                //First icon
                    GestureDetector(
                  onTap: ()
                  {
                    print("hello");
                    if(jsondata.Globals.GetCurrSubTopic_6Options()[2] != null && jsondata.Globals.GetCurrSubTopic_6Options()[2] != "" && jsondata.Globals.GetCurrSubTopic_6Options()[2] 
                      != "icon1.jpg" && jsondata.Globals.GetCurrSubTopic_6Options()[2] != "icon2.jpg") 
                    {

                      if(!finalJson.contains(method(jsondata.Globals.GetCurrSubTopic_6Options()[2])))
                            {
                           jsondata.Globals.SetCurrSubSelected(method(jsondata.Globals.GetCurrSubTopic_6Options()[2])); App_Start_Lemida(context);;
 } 
                    else
                            { 
                                showDialog(context: context,
                    builder: (BuildContext context)
                    {
                    //  return  Transform(transform: Matrix4.translationValues(posX-250, posY-300, 0.0), 
                        
                    //   child: getDialog(jsondata.Globals.GetCurrSubTopic_6Options()[2],context) 
                   
                    return getDialog(jsondata.Globals.GetCurrSubTopic_6Options()[2],context)  ;
                    //   );
                    }
                    );}
                    }
                  },onTapDown: (TapDownDetails details) => _onTapDown(details),
                  child: Column(
                  children: <Widget>[
                   Container(
                    
                        width: MediaQuery.of(context).size.width/3,
                        height: MediaQuery.of(context).size.width/3,
                        child: Material(
                          child: getWidget(jsondata.Globals.GetCurrSubTopic_6Options()[2]),
                          shape: CircleBorder(
                            
                          ),
                    //      color: Colors.white,
                        ),

                      ),
                      Text(GetName(jsondata.Globals.GetCurrSubTopic_6Options()[2]),textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20))
                  ]
)
                ),
                    //space to move first icon from second
                    Spacer(flex: 3,),
                //second icon
                    GestureDetector(
                  onTap: ()
                  {

                    print("pink hello");
                    if(jsondata.Globals.GetCurrSubTopic_6Options()[3] != null && jsondata.Globals.GetCurrSubTopic_6Options()[3] != "" && jsondata.Globals.GetCurrSubTopic_6Options()[3] 
                      != "icon1.jpg" && jsondata.Globals.GetCurrSubTopic_6Options()[3] != "icon2.jpg") 
                    {
                       if(!finalJson.contains(method(jsondata.Globals.GetCurrSubTopic_6Options()[3])))
                            {
                           jsondata.Globals.SetCurrSubSelected(method(jsondata.Globals.GetCurrSubTopic_6Options()[3])); App_Start_Lemida(context);;
 }
                    else
                            { 
                                showDialog(context: context,
                    builder: (BuildContext context)
                    {
                    //  return  Transform(transform: Matrix4.translationValues(posX-250, posY-300, 0.0), 
                        
                    //   child: getDialog(jsondata.Globals.GetCurrSubTopic_6Options()[3],context)  
                    //   );
                   
                   
                    return getDialog(jsondata.Globals.GetCurrSubTopic_6Options()[3],context) ;
                    }
                    );}
                    }
                  },
                  onTapDown: (TapDownDetails details) => _onTapDown(details),
                  child: Column(
                  children: <Widget>[
                   Container(
                    
                        width: MediaQuery.of(context).size.width/3,
                        height: MediaQuery.of(context).size.width/3,
                        child: Material(
                          child: getWidget(jsondata.Globals.GetCurrSubTopic_6Options()[3]),
                          shape: CircleBorder(
                            
                          ),
                  //        color: Colors.white,
                        ),

                      ),
                      Text(GetName(jsondata.Globals.GetCurrSubTopic_6Options()[3]),textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20))
                  ]
)
                ),
                    // spacer to move scond icon from side
                    Spacer(flex: 2),
                ]
                
              ),
              //spacer to move icon up
            SizedBox(height: _screenHeight/30),
            //  Spacer(flex:10),
              //ROW 3

              new Row(
                children: <Widget>[
                  //spacer to move first from side
                Spacer(flex: 2),  

                //First icon
                    GestureDetector(
                  onTap: ()
                  {
                    print("hello");
                      if(jsondata.Globals.GetCurrSubTopic_6Options()[4] != null && jsondata.Globals.GetCurrSubTopic_6Options()[4] != "" && jsondata.Globals.GetCurrSubTopic_6Options()[4] 
                      != "icon1.jpg" && jsondata.Globals.GetCurrSubTopic_6Options()[4] != "icon2.jpg") 
                    {

                       if(!finalJson.contains(method(jsondata.Globals.GetCurrSubTopic_6Options()[4])))
                            {
                           jsondata.Globals.SetCurrSubSelected(method(jsondata.Globals.GetCurrSubTopic_6Options()[4])); App_Start_Lemida(context);;
 }
                    else
                            { 
                                showDialog(context: context,
                    builder: (BuildContext context)
                    {
                    //  return  Transform(transform: Matrix4.translationValues(posX-250, posY-300, 0.0), 
                        
                    //   child: getDialog(jsondata.Globals.GetCurrSubTopic_6Options()[4],context) 
                    //   );
                  
                    return getDialog(jsondata.Globals.GetCurrSubTopic_6Options()[4],context) ;
                    }
                    );}
                    }
                  },onTapDown: (TapDownDetails details) => _onTapDown(details),
                  child: Column(
                  children: <Widget>[
                   Container(
                    
                        width: MediaQuery.of(context).size.width/3,
                        height: MediaQuery.of(context).size.width/3,
                        child: Material(
                          child: getWidget(jsondata.Globals.GetCurrSubTopic_6Options()[4]),
                          shape: CircleBorder(
                            
                          ),
                //          color: Colors.white,
                        ),

                      ),
                      Text(GetName(jsondata.Globals.GetCurrSubTopic_6Options()[4]),textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20))
                  ]
)
                ),
                    //space to move first icon from second
                    Spacer(flex: 3,),
                //second icon
                    GestureDetector(
                  onTap: ()
                  {

                    print("pink hello");
                      if(jsondata.Globals.GetCurrSubTopic_6Options()[5] != null && jsondata.Globals.GetCurrSubTopic_6Options()[5] != "" && jsondata.Globals.GetCurrSubTopic_6Options()[5] != "icon1.jpg" && jsondata.Globals.GetCurrSubTopic_6Options()[5] != "icon2.jpg") //jsondata.Globals.GetCurrSubTopic_6Options()[5])
                    {

                      if(!finalJson.contains(method(jsondata.Globals.GetCurrSubTopic_6Options()[5])))
                            {
                           jsondata.Globals.SetCurrSubSelected(method(jsondata.Globals.GetCurrSubTopic_6Options()[5])); App_Start_Lemida(context);;
 }
                    else
                            { 
                                showDialog(context: context,
                    builder: (BuildContext context)
                    {
                    //  return  Transform(transform: Matrix4.translationValues(posX-250, posY-300, 0.0), 
                        
                    //   child: getDialog(jsondata.Globals.GetCurrSubTopic_6Options()[5],context) 
                    //   );
                   
                    return getDialog(jsondata.Globals.GetCurrSubTopic_6Options()[5],context);
                    }
                    );
                            }
                  }
                  },
                  onTapDown: (TapDownDetails details) => _onTapDown(details),
                  child: Column(
                  children: <Widget>[
                   Container(
                    
                        width: MediaQuery.of(context).size.width/3,
                        height: MediaQuery.of(context).size.width/3,
                        child: Material(
                          child: getWidget(jsondata.Globals.GetCurrSubTopic_6Options()[5]),
                          shape: CircleBorder(
                            
                          ),
                   //       color: Colors.white,
                        ),

                      ),
                      Text(GetName(jsondata.Globals.GetCurrSubTopic_6Options()[5]),textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20))
                  ]
)
                ),
                    // spacer to move scond icon from side
                    Spacer(flex: 2),
                ]
                
              ),
              //spacer to move icon up
            SizedBox(height: _screenHeight/30),
            //  Spacer(flex:30),
             ]
             )
)
                ]
              ),// : Container(),
        //    }






///end6

///7
              if(!jsonLoader.Globals.GetCurrSubTopic_7Options().isEmpty) //{
                Column(

              children: <Widget>[
                
                Expanded(
                child: ListView(//ListView(
                     shrinkWrap: true,
                      padding: EdgeInsets.all(5.0),
             children: <Widget>[
                  //spacer to move from top
                 SizedBox(height: _screenHeight/30),
                 // Spacer(flex: 10),
              //Row 1
              new Row(
                children: <Widget>[
                  //spacer to move first from side
                Spacer(flex: 2),  

                //First icon
                    GestureDetector(
                  onTap: ()
                  {
                    print("hello");
                    if(jsondata.Globals.GetCurrSubTopic_7Options()[0] != null && jsondata.Globals.GetCurrSubTopic_7Options()[0] != "" && jsondata.Globals.GetCurrSubTopic_7Options()[0] 
                      != "icon1.jpg" && jsondata.Globals.GetCurrSubTopic_7Options()[0] != "icon2.jpg") 
                    {
                       if(!finalJson.contains(method(jsondata.Globals.GetCurrSubTopic_7Options()[0])))
                            {
                           jsondata.Globals.SetCurrSubSelected(method(jsondata.Globals.GetCurrSubTopic_7Options()[0])); App_Start_Lemida(context);;
 }
                    else
                            { 
                                showDialog(context: context,
                    builder: (BuildContext context)
                    {
                    //  return  Transform(transform: Matrix4.translationValues(posX-250, posY-300, 0.0), 
                        
                    //   child: getDialog(jsondata.Globals.GetCurrSubTopic_7Options()[0], context) 
                    //   );
                  
                      return getDialog(jsondata.Globals.GetCurrSubTopic_7Options()[0], context) ;
                    }
                    );}
                    }
                  },
                  onTapDown: (TapDownDetails details) => _onTapDown(details),
                 child: Column(
                  children: <Widget>[
                   Container(
                    
                        width: MediaQuery.of(context).size.width/3,
                        height: MediaQuery.of(context).size.width/3,
                        child: Material(
                          child: getWidget(jsondata.Globals.GetCurrSubTopic_7Options()[0]),
                          shape: CircleBorder(
                            
                          ),
                          color: Colors.white,
                        ),

                      ),
                      Text(GetName(jsondata.Globals.GetCurrSubTopic_7Options()[0]),textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20))
                  ]
)
                ),
                    //space to move first icon from second
                    Spacer(flex: 3,),
                //second icon
                    GestureDetector(
                  onTap: ()
                  {

                    print("pink hello");
                    if(jsondata.Globals.GetCurrSubTopic_7Options()[1] != null && jsondata.Globals.GetCurrSubTopic_7Options()[1] != "" && jsondata.Globals.GetCurrSubTopic_7Options()[1] 
                      != "icon1.jpg" && jsondata.Globals.GetCurrSubTopic_7Options()[1] != "icon2.jpg") 
                    {

                      if(!finalJson.contains(method(jsondata.Globals.GetCurrSubTopic_7Options()[1])))
                            {
                           jsondata.Globals.SetCurrSubSelected(method(jsondata.Globals.GetCurrSubTopic_7Options()[1])); App_Start_Lemida(context);;
 }
                    else
                            { 
                                showDialog(context: context,
                    builder: (BuildContext context)
                    {
                    //  return  Transform(transform: Matrix4.translationValues(posX-250, posY-300, 0.0), 
                        
                    //   child: getDialog(jsondata.Globals.GetCurrSubTopic_7Options()[1],context)  
                    //   );
                   
                    return getDialog(jsondata.Globals.GetCurrSubTopic_7Options()[1],context)  ;
                    }
                    );}
                    }
                  },
                  onTapDown: (TapDownDetails details) => _onTapDown(details),
                  child: Column(
                  children: <Widget>[
                   Container(
                    
                        width: MediaQuery.of(context).size.width/3,
                        height: MediaQuery.of(context).size.width/3,
                        child: Material(
                          child: getWidget(jsondata.Globals.GetCurrSubTopic_7Options()[1]),
                          shape: CircleBorder(
                            
                          ),
                //          color: Colors.white,
                        ),

                      ),
                      Text(GetName(jsondata.Globals.GetCurrSubTopic_7Options()[1]),textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20))
                  ]
)
                ),
                    // spacer to move scond icon from side
                    Spacer(flex: 2),
                ]
                
              ),
              //need be space between each row
             SizedBox(height: _screenHeight/30),
             // Spacer(flex: 10,),
              //ROW 2
                new Row(
                children: <Widget>[
                  //spacer to move first from side
                Spacer(flex: 2),  

                //First icon
                    GestureDetector(
                  onTap: ()
                  {
                    print("hello");
                    if(jsondata.Globals.GetCurrSubTopic_7Options()[2] != null && jsondata.Globals.GetCurrSubTopic_7Options()[2] != "" && jsondata.Globals.GetCurrSubTopic_7Options()[2] 
                      != "icon1.jpg" && jsondata.Globals.GetCurrSubTopic_7Options()[2] != "icon2.jpg") 
                    {

                       if(!finalJson.contains(method(jsondata.Globals.GetCurrSubTopic_7Options()[2])))
                            {
                           jsondata.Globals.SetCurrSubSelected(method(jsondata.Globals.GetCurrSubTopic_7Options()[2])); App_Start_Lemida(context);;
 }
                    else
                            { 
                                showDialog(context: context,
                    builder: (BuildContext context)
                    {
                    //  return  Transform(transform: Matrix4.translationValues(posX-250, posY-300, 0.0), 
                        
                    //   child: getDialog(jsondata.Globals.GetCurrSubTopic_7Options()[2],context)  
                  
                    return getDialog(jsondata.Globals.GetCurrSubTopic_7Options()[2],context)  ;
                    //   );
                    }
                    );}
                    }
                  },onTapDown: (TapDownDetails details) => _onTapDown(details),
                  child: Column(
                  children: <Widget>[
                   Container(
                    
                        width: MediaQuery.of(context).size.width/3,
                        height: MediaQuery.of(context).size.width/3,
                        child: Material(
                          child: getWidget(jsondata.Globals.GetCurrSubTopic_7Options()[2]),
                          shape: CircleBorder(
                            
                          ),
              //            color: Colors.white,
                        ),

                      ),
                      Text(GetName(jsondata.Globals.GetCurrSubTopic_7Options()[2]),textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20))
                  ]
)
                ),
                    //space to move first icon from second
                    Spacer(flex: 3,),
                //second icon
                    GestureDetector(
                  onTap: ()
                  {

                    print("pink hello");
                    if(jsondata.Globals.GetCurrSubTopic_7Options()[3] != null && jsondata.Globals.GetCurrSubTopic_7Options()[3] != "" && jsondata.Globals.GetCurrSubTopic_7Options()[3] 
                      != "icon1.jpg" && jsondata.Globals.GetCurrSubTopic_7Options()[3] != "icon2.jpg") 
                    {
                       if(!finalJson.contains(method(jsondata.Globals.GetCurrSubTopic_7Options()[3])))
                            {
                           jsondata.Globals.SetCurrSubSelected(method(jsondata.Globals.GetCurrSubTopic_7Options()[3])); App_Start_Lemida(context);;
 }
                    else
                            { 
                                showDialog(context: context,
                    builder: (BuildContext context)
                    {
                    //  return  Transform(transform: Matrix4.translationValues(posX-250, posY-300, 0.0), 
                        
                    //   child: getDialog(jsondata.Globals.GetCurrSubTopic_7Options()[3],context)  
                    //   );
                  
                    return getDialog(jsondata.Globals.GetCurrSubTopic_7Options()[3],context) ;
                    }
                    );}
                    }
                  },
                  onTapDown: (TapDownDetails details) => _onTapDown(details),
                  child: Column(
                  children: <Widget>[
                   Container(
                    
                        width: MediaQuery.of(context).size.width/3,
                        height: MediaQuery.of(context).size.width/3,
                        child: Material(
                          child: getWidget(jsondata.Globals.GetCurrSubTopic_7Options()[3]),
                          shape: CircleBorder(
                            
                          ),
               //           color: Colors.white,
                        ),

                      ),
                      Text(GetName(jsondata.Globals.GetCurrSubTopic_7Options()[3]),textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20))
                  ]
)
                ),
                    // spacer to move scond icon from side
                    Spacer(flex: 2),
                ]
                
              ),
              //spacer to move icon up
             SizedBox(height: _screenHeight/30),
             // Spacer(flex:10),
              //ROW 3

              new Row(
                children: <Widget>[
                  //spacer to move first from side
                Spacer(flex: 2),  

                //First icon
                    GestureDetector(
                  onTap: ()
                  {
                    print("hello");
                      if(jsondata.Globals.GetCurrSubTopic_7Options()[4] != null && jsondata.Globals.GetCurrSubTopic_7Options()[4] != "" && jsondata.Globals.GetCurrSubTopic_7Options()[4] 
                      != "icon1.jpg" && jsondata.Globals.GetCurrSubTopic_7Options()[4] != "icon2.jpg") 
                    {
                      if(!finalJson.contains(method(jsondata.Globals.GetCurrSubTopic_7Options()[4])))
                            {
                           jsondata.Globals.SetCurrSubSelected(method( jsondata.Globals.GetCurrSubTopic_7Options()[4] )); App_Start_Lemida(context);;
 }
                    else
                            { 
                                showDialog(context: context,
                    builder: (BuildContext context)
                    {
                    //  return  Transform(transform: Matrix4.translationValues(posX-250, posY-300, 0.0), 
                        
                    //   child: getDialog(jsondata.Globals.GetCurrSubTopic_7Options()[4],context) 
                    //   );
                   
                    return getDialog(jsondata.Globals.GetCurrSubTopic_7Options()[4],context) ;
                    }
                    );}
                    }
                  },onTapDown: (TapDownDetails details) => _onTapDown(details),
                  child: Column(
                  children: <Widget>[
                   Container(
                    
                        width: MediaQuery.of(context).size.width/3,
                        height: MediaQuery.of(context).size.width/3,
                        child: Material(
                          child: getWidget(jsondata.Globals.GetCurrSubTopic_7Options()[4]),
                          shape: CircleBorder(
                            
                          ),
                 //         color: Colors.white,
                        ),

                      ),
                      Text(GetName(jsondata.Globals.GetCurrSubTopic_7Options()[4]),textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20))
                  ]
)
                ),
                    //space to move first icon from second
                    Spacer(flex: 3,),
                //second icon
                    GestureDetector(
                  onTap: ()
                  {

                    print("pink hello");
                      if(jsondata.Globals.GetCurrSubTopic_7Options()[5] != null && jsondata.Globals.GetCurrSubTopic_7Options()[5] != "" && jsondata.Globals.GetCurrSubTopic_7Options()[5] != "icon1.jpg" && jsondata.Globals.GetCurrSubTopic_7Options()[5] != "icon2.jpg") //jsondata.Globals.GetCurrSubTopic_7Options()[5])
                    {

                      if(!finalJson.contains(method(jsondata.Globals.GetCurrSubTopic_7Options()[5])))
                            {
                           jsondata.Globals.SetCurrSubSelected(method(jsondata.Globals.GetCurrSubTopic_7Options()[5])); App_Start_Lemida(context);;
 }
                    else
                            { 
                                showDialog(context: context,
                    builder: (BuildContext context)
                    {
                    //  return  Transform(transform: Matrix4.translationValues(posX-250, posY-300, 0.0), 
                        
                    //   child: getDialog(jsondata.Globals.GetCurrSubTopic_7Options()[5],context) 
                    //   );
                   
                    return getDialog(jsondata.Globals.GetCurrSubTopic_7Options()[5],context);
                     }
                    );}
                    }
                  },
                  onTapDown: (TapDownDetails details) => _onTapDown(details),
                  child: Column(
                  children: <Widget>[
                   Container(
                    
                        width: MediaQuery.of(context).size.width/3,
                        height: MediaQuery.of(context).size.width/3,
                        child: Material(
                          child: getWidget(jsondata.Globals.GetCurrSubTopic_7Options()[5]),
                          shape: CircleBorder(
                            
                          ),
                   //       color: Colors.white,
                        ),

                      ),
                      Text(GetName(jsondata.Globals.GetCurrSubTopic_7Options()[5]),textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20))
                  ]
)
                ),
                    // spacer to move scond icon from side
                    Spacer(flex: 2),
                ]
                
              ),
              //spacer to move icon up
         SizedBox(height: _screenHeight/30),
         //     Spacer(flex:30),
             ]
                )
                )
                ]
              ),// : Container(),
        //    }
///end7


///option8
              if(!jsonLoader.Globals.GetCurrSubTopic_8Options().isEmpty) //{
                Column(

              children: <Widget>[
                
                Expanded(
                child: ListView(//ListView(
                     shrinkWrap: true,
                      padding: EdgeInsets.all(5.0),
             children: <Widget>[
                  //spacer to move from top
            SizedBox(height: _screenHeight/30),
            //      Spacer(flex: 10),
              //Row 1
              new Row(
                children: <Widget>[
                  //spacer to move first from side
                Spacer(flex: 2),  

                //First icon
                    GestureDetector(
                  onTap: ()
                  {
                    print("hello");
                    if(jsondata.Globals.GetCurrSubTopic_8Options()[0] != null && jsondata.Globals.GetCurrSubTopic_8Options()[0] != "" && jsondata.Globals.GetCurrSubTopic_8Options()[0] 
                      != "icon1.jpg" && jsondata.Globals.GetCurrSubTopic_8Options()[0] != "icon2.jpg") 
                    {
                       if(!finalJson.contains(method(jsondata.Globals.GetCurrSubTopic_8Options()[0])))
                            {
                           jsondata.Globals.SetCurrSubSelected(method(jsondata.Globals.GetCurrSubTopic_8Options()[0])); App_Start_Lemida(context);;
 }
                    else
                            { 
                                showDialog(context: context,
                    builder: (BuildContext context)
                    {
                    //  return  Transform(transform: Matrix4.translationValues(posX-250, posY-300, 0.0), 
                        
                    //   child: getDialog(jsondata.Globals.GetCurrSubTopic_8Options()[0], context) 
                    //   );
                  
                      return getDialog(jsondata.Globals.GetCurrSubTopic_8Options()[0], context) ;
                    }
                    );}
                    }
                  },
                  onTapDown: (TapDownDetails details) => _onTapDown(details),
                  child: Column(
                  children: <Widget>[
                   Container(
                    
                        width: MediaQuery.of(context).size.width/3,
                        height: MediaQuery.of(context).size.width/3,
                        child: Material(
                          child: getWidget(jsondata.Globals.GetCurrSubTopic_8Options()[0]),
                          shape: CircleBorder(
                            
                          ),
                          color: Colors.white,
                        ),

                      ),
                      Text(GetName(jsondata.Globals.GetCurrSubTopic_8Options()[0]),textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20))
                  ]
)
                ),
                    //space to move first icon from second
                    Spacer(flex: 3,),
                //second icon
                    GestureDetector(
                  onTap: ()
                  {

                    print("pink hello");
                    if(jsondata.Globals.GetCurrSubTopic_8Options()[1] != null && jsondata.Globals.GetCurrSubTopic_8Options()[1] != "" && jsondata.Globals.GetCurrSubTopic_8Options()[1] 
                      != "icon1.jpg" && jsondata.Globals.GetCurrSubTopic_8Options()[1] != "icon2.jpg") 
                    {

                      if(!finalJson.contains(method(jsondata.Globals.GetCurrSubTopic_8Options()[1])))
                            {
                           jsondata.Globals.SetCurrSubSelected(method(jsondata.Globals.GetCurrSubTopic_8Options()[1])); App_Start_Lemida(context);;
 }
                    else
                            { 
                                showDialog(context: context,
                    builder: (BuildContext context)
                    {
                    //  return  Transform(transform: Matrix4.translationValues(posX-250, posY-300, 0.0), 
                        
                    //   child: getDialog(jsondata.Globals.GetCurrSubTopic_8Options()[1],context)  
                    //   );
                   
                    return getDialog(jsondata.Globals.GetCurrSubTopic_8Options()[1],context)  ;
                    }
                    );}
                    }
                  },
                  onTapDown: (TapDownDetails details) => _onTapDown(details),
                  child: Column(
                  children: <Widget>[
                   Container(
                    
                        width: MediaQuery.of(context).size.width/3,
                        height: MediaQuery.of(context).size.width/3,
                        child: Material(
                          child: getWidget(jsondata.Globals.GetCurrSubTopic_8Options()[1]),
                          shape: CircleBorder(
                            
                          ),
                          color: Colors.white,
                        ),

                      ),
                      Text(GetName(jsondata.Globals.GetCurrSubTopic_8Options()[1]),textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20))
                  ]
)
                ),
                    // spacer to move scond icon from side
                    Spacer(flex: 2),
                ]
                
              ),
              //need be space between each row
            SizedBox(height: _screenHeight/30),
            //  Spacer(flex: 10,),
              //ROW 2
                new Row(
                children: <Widget>[
                  //spacer to move first from side
                Spacer(flex: 2),  

                //First icon
                    GestureDetector(
                  onTap: ()
                  {
                    print("hello");
                    if(jsondata.Globals.GetCurrSubTopic_8Options()[2] != null && jsondata.Globals.GetCurrSubTopic_8Options()[2] != "" && jsondata.Globals.GetCurrSubTopic_8Options()[2] 
                      != "icon1.jpg" && jsondata.Globals.GetCurrSubTopic_8Options()[2] != "icon2.jpg") 
                    {

                      if(!finalJson.contains(method(jsondata.Globals.GetCurrSubTopic_8Options()[2])))
                            {
                           jsondata.Globals.SetCurrSubSelected(method(jsondata.Globals.GetCurrSubTopic_8Options()[2])); App_Start_Lemida(context);;
 } 
                    else
                            { 
                                showDialog(context: context,
                    builder: (BuildContext context)
                    {
                    //  return  Transform(transform: Matrix4.translationValues(posX-250, posY-300, 0.0), 
                        
                    //   child: getDialog(jsondata.Globals.GetCurrSubTopic_8Options()[2],context) 
                   
                    return getDialog(jsondata.Globals.GetCurrSubTopic_8Options()[2],context)  ;
                    //   );
                    }
                    );}
                    }
                  },onTapDown: (TapDownDetails details) => _onTapDown(details),
                  child: Column(
                  children: <Widget>[
                   Container(
                    
                        width: MediaQuery.of(context).size.width/3,
                        height: MediaQuery.of(context).size.width/3,
                        child: Material(
                          child: getWidget(jsondata.Globals.GetCurrSubTopic_8Options()[2]),
                          shape: CircleBorder(
                            
                          ),
                          color: Colors.white,
                        ),

                      ),
                      Text(GetName(jsondata.Globals.GetCurrSubTopic_8Options()[2]),textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20))
                  ]
)
                ),
                    //space to move first icon from second
                    Spacer(flex: 3,),
                //second icon
                    GestureDetector(
                  onTap: ()
                  {

                    print("pink hello");
                    if(jsondata.Globals.GetCurrSubTopic_8Options()[3] != null && jsondata.Globals.GetCurrSubTopic_8Options()[3] != "" && jsondata.Globals.GetCurrSubTopic_8Options()[3] 
                      != "icon1.jpg" && jsondata.Globals.GetCurrSubTopic_8Options()[3] != "icon2.jpg") 
                    {

                      if(!finalJson.contains(method(jsondata.Globals.GetCurrSubTopic_8Options()[3])))
                            {
                           jsondata.Globals.SetCurrSubSelected(method(jsondata.Globals.GetCurrSubTopic_8Options()[3])); App_Start_Lemida(context);;
 }
                    else
                            { 
                                showDialog(context: context,
                    builder: (BuildContext context)
                    {
                    //  return  Transform(transform: Matrix4.translationValues(posX-250, posY-300, 0.0), 
                        
                    //   child: getDialog(jsondata.Globals.GetCurrSubTopic_8Options()[3],context)  
                    //   );
                   
                    return getDialog(jsondata.Globals.GetCurrSubTopic_8Options()[3],context) ;
                    }
                    );}
                    }
                  },
                  onTapDown: (TapDownDetails details) => _onTapDown(details),
                  child: Column(
                  children: <Widget>[
                   Container(
                    
                        width: MediaQuery.of(context).size.width/3,
                        height: MediaQuery.of(context).size.width/3,
                        child: Material(
                          child: getWidget(jsondata.Globals.GetCurrSubTopic_8Options()[3]),
                          shape: CircleBorder(
                            
                          ),
                          color: Colors.white,
                        ),

                      ),
                      Text(GetName(jsondata.Globals.GetCurrSubTopic_8Options()[3]),textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20))
                  ]
)
                ),
                    // spacer to move scond icon from side
                    Spacer(flex: 2),
                ]
                
              ),
              //spacer to move icon up
           SizedBox(height: _screenHeight/30),
           //   Spacer(flex:10),
              //ROW 3

              new Row(
                children: <Widget>[
                  //spacer to move first from side
                Spacer(flex: 2),  

                //First icon
                    GestureDetector(
                  onTap: ()
                  {
                    print("hello");
                      if(jsondata.Globals.GetCurrSubTopic_8Options()[4] != null && jsondata.Globals.GetCurrSubTopic_8Options()[4] != "" && jsondata.Globals.GetCurrSubTopic_8Options()[4] 
                      != "icon1.jpg" && jsondata.Globals.GetCurrSubTopic_8Options()[4] != "icon2.jpg") 
                    {

                       if(!finalJson.contains(method(jsondata.Globals.GetCurrSubTopic_8Options()[4])))
                            {
                           jsondata.Globals.SetCurrSubSelected(method(jsondata.Globals.GetCurrSubTopic_8Options()[4])); App_Start_Lemida(context);;
                            }
                    else
                            { 
                                showDialog(context: context,
                    builder: (BuildContext context)
                    {
                    //  return  Transform(transform: Matrix4.translationValues(posX-250, posY-300, 0.0), 
                        
                    //   child: getDialog(jsondata.Globals.GetCurrSubTopic_8Options()[4],context) 
                    //   );
                  
                    return getDialog(jsondata.Globals.GetCurrSubTopic_8Options()[4],context) ;
                    }
                    );}
                    }
                  },onTapDown: (TapDownDetails details) => _onTapDown(details),
                  child: Column(
                  children: <Widget>[
                   Container(
                    
                        width: MediaQuery.of(context).size.width/3,
                        height: MediaQuery.of(context).size.width/3,
                        child: Material(
                          child: getWidget(jsondata.Globals.GetCurrSubTopic_8Options()[4]),
                          shape: CircleBorder(
                            
                          ),
                          color: Colors.white,
                        ),

                      ),
                      Text(GetName(jsondata.Globals.GetCurrSubTopic_8Options()[4]),textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20))
                  ]
)
                ),
                    //space to move first icon from second
                    Spacer(flex: 3,),
                //second icon
                    GestureDetector(
                  onTap: ()
                  {

                    print("pink hello");
                      if(jsondata.Globals.GetCurrSubTopic_8Options()[5] != null && jsondata.Globals.GetCurrSubTopic_8Options()[5] != "" && jsondata.Globals.GetCurrSubTopic_8Options()[5] != "icon1.jpg" && jsondata.Globals.GetCurrSubTopic_8Options()[5] != "icon2.jpg") //jsondata.Globals.GetCurrSubTopic_8Options()[5])
                    {
                            if(!finalJson.contains(method(jsondata.Globals.GetCurrSubTopic_8Options()[5])))
                            {
                             jsondata.Globals.SetCurrSubSelected(method(jsondata.Globals.GetCurrSubTopic_8Options()[5])); App_Start_Lemida(context);;
                            }
                      
                    else
                            { 
                                showDialog(context: context,
                    builder: (BuildContext context)
                    {
                    //  return  Transform(transform: Matrix4.translationValues(posX-250, posY-300, 0.0), 
                        
                    //   child: getDialog(jsondata.Globals.GetCurrSubTopic_8Options()[5],context) 
                    //   );
                  
                    return getDialog(jsondata.Globals.GetCurrSubTopic_8Options()[5],context);
                     }
                    );}
                    }
                  },
                  onTapDown: (TapDownDetails details) => _onTapDown(details),
                  child: Column(
                  children: <Widget>[
                   Container(
                    
                        width: MediaQuery.of(context).size.width/3,
                        height: MediaQuery.of(context).size.width/3,
                        child: Material(
                          child: getWidget(jsondata.Globals.GetCurrSubTopic_8Options()[5]),
                          shape: CircleBorder(
                            
                          ),
                          color: Colors.white,
                        ),

                      ),
                      Text(GetName(jsondata.Globals.GetCurrSubTopic_8Options()[5]),textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20))
                  ]
)
                ),
                    // spacer to move scond icon from side
                    Spacer(flex: 2),
                ]
                
              ),
              //spacer to move icon up
            SizedBox(height: _screenHeight/30),
            //  Spacer(flex:30),
             ]
                )
                )
                ]
              ),// : Container(),
        //    }






///end8

///option9
              if(!jsonLoader.Globals.GetCurrSubTopic_9Options().isEmpty) //{
                Column(

              children: <Widget>[
                
                Expanded(
                child: ListView(//ListView(
                     shrinkWrap: true,
                      padding: EdgeInsets.all(5.0),
             children: <Widget>[
                  //spacer to move from top
              SizedBox(height: _screenHeight/30),
              //    Spacer(flex: 10),
              //Row 1
              new Row(
                children: <Widget>[
                  //spacer to move first from side
                Spacer(flex: 3),  

                //First icon
                    GestureDetector(
                  onTap: ()
                  {
                    print("hello");
                    if(jsondata.Globals.GetCurrSubTopic_9Options()[0] != null && jsondata.Globals.GetCurrSubTopic_9Options()[0] != "" && jsondata.Globals.GetCurrSubTopic_9Options()[0] 
                      != "icon1.jpg" && jsondata.Globals.GetCurrSubTopic_9Options()[0] != "icon2.jpg") 
                    {

                       if(!finalJson.contains(method(jsondata.Globals.GetCurrSubTopic_9Options()[0])))
                            {
                           jsondata.Globals.SetCurrSubSelected(method(jsondata.Globals.GetCurrSubTopic_9Options()[0])); App_Start_Lemida(context);;
 }
                    else
                            { 
                                showDialog(context: context,
                    builder: (BuildContext context)
                    {
                    //  return  Transform(transform: Matrix4.translationValues(posX-250, posY-300, 0.0), 
                        
                    //   child: getDialog(jsondata.Globals.GetCurrSubTopic_9Options()[0], context) 
                    //   );
                  
                      return getDialog(jsondata.Globals.GetCurrSubTopic_9Options()[0], context) ;
                    }
                    );}
                    }
                  },
                  onTapDown: (TapDownDetails details) => _onTapDown(details),
                  child: Column(
                  children: <Widget>[
                   Container(
                    
                        width: MediaQuery.of(context).size.width/3,
                        height: MediaQuery.of(context).size.width/3,
                        child: Material(
                          child: getWidget(jsondata.Globals.GetCurrSubTopic_9Options()[0]),
                          shape: CircleBorder(
                            
                          ),
                          color: Colors.white,
                        ),

                      ),
                      Text(GetName(jsondata.Globals.GetCurrSubTopic_9Options()[0]),textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 13))
                  ]
)
                ),
                    //space to move first icon from second
                    Spacer(flex: 3,),
                //second icon
                    GestureDetector(
                  onTap: ()
                  {

                    print("pink hello");
                    if(jsondata.Globals.GetCurrSubTopic_9Options()[1] != null && jsondata.Globals.GetCurrSubTopic_9Options()[1] != "" && jsondata.Globals.GetCurrSubTopic_9Options()[1] 
                      != "icon1.jpg" && jsondata.Globals.GetCurrSubTopic_9Options()[1] != "icon2.jpg") 
                    {
                       if(!finalJson.contains(method(jsondata.Globals.GetCurrSubTopic_9Options()[1])))
                              {
                           jsondata.Globals.SetCurrSubSelected(method(jsondata.Globals.GetCurrSubTopic_9Options()[1])); App_Start_Lemida(context);;
 }
                    else
                            { 
                                showDialog(context: context,
                    builder: (BuildContext context)
                    {
                    //  return  Transform(transform: Matrix4.translationValues(posX-250, posY-300, 0.0), 
                        
                    //   child: getDialog(jsondata.Globals.GetCurrSubTopic_9Options()[1],context)  
                    //   );
                      
                      
                    
                      return getDialog(jsondata.Globals.GetCurrSubTopic_9Options()[1],context)  ;
                      
                    }
                    
                    );
                            }
                    }
                  },
                  onTapDown: (TapDownDetails details) => _onTapDown(details),
                  child: Column(
                  children: <Widget>[
                   Container(
                    
                        width: MediaQuery.of(context).size.width/3,
                        height: MediaQuery.of(context).size.width/3,
                        child: Material(
                          child: getWidget(jsondata.Globals.GetCurrSubTopic_9Options()[1]),
                          shape: CircleBorder(
                            
                          ),
                          color: Colors.white,
                        ),

                      ),
                      Text(GetName(jsondata.Globals.GetCurrSubTopic_9Options()[1]),textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 13))
                  ]
)
                ),
                    // spacer to move scond icon from side
                    Spacer(flex: 2),
                ]
                
              ),
              //need be space between each row
              SizedBox(height: _screenHeight/30),
              //Spacer(flex: 10,),
              //ROW 2
                new Row(
                children: <Widget>[
                  //spacer to move first from side
                Spacer(flex: 2),  

                //First icon
                    GestureDetector(
                  onTap: ()
                  {
                    print("hello");
                    if(jsondata.Globals.GetCurrSubTopic_9Options()[2] != null && jsondata.Globals.GetCurrSubTopic_9Options()[2] != "" && jsondata.Globals.GetCurrSubTopic_9Options()[2] 
                      != "icon1.jpg" && jsondata.Globals.GetCurrSubTopic_9Options()[2] != "icon2.jpg") 
                    {
                       if(!finalJson.contains(method(jsondata.Globals.GetCurrSubTopic_9Options()[2])))
                            {
                           jsondata.Globals.SetCurrSubSelected(method(jsondata.Globals.GetCurrSubTopic_9Options()[2])); App_Start_Lemida(context);;
 }
                    else
                            { 
                                showDialog(context: context,
                    builder: (BuildContext context)
                    {
                    //  return  Transform(transform: Matrix4.translationValues(posX-250, posY-300, 0.0), 
                        
                    //   child: getDialog(jsondata.Globals.GetCurrSubTopic_9Options()[2],context)  
                  
                    return getDialog(jsondata.Globals.GetCurrSubTopic_9Options()[2],context)  ;
                    //   );
                    }
                    );}
                    }
                  },onTapDown: (TapDownDetails details) => _onTapDown(details),
                  child: Column(
                  children: <Widget>[
                   Container(
                    
                        width: MediaQuery.of(context).size.width/3,
                        height: MediaQuery.of(context).size.width/3,
                        child: Material(
                          child: getWidget(jsondata.Globals.GetCurrSubTopic_9Options()[2]),
                          shape: CircleBorder(
                            
                          ),
                    //      color: Colors.white,
                        ),

                      ),
                      Text(GetName(jsondata.Globals.GetCurrSubTopic_9Options()[2]),textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 13))
                  ]
)
                ),
                    //space to move first icon from second
                    Spacer(flex: 3,),
                //second icon
                    GestureDetector(
                  onTap: ()
                  {

                    print("pink hello");
                    if(jsondata.Globals.GetCurrSubTopic_9Options()[3] != null && jsondata.Globals.GetCurrSubTopic_9Options()[3] != "" && jsondata.Globals.GetCurrSubTopic_9Options()[3] 
                      != "icon1.jpg" && jsondata.Globals.GetCurrSubTopic_9Options()[3] != "icon2.jpg") 
                    {
                      if(!finalJson.contains(method(jsondata.Globals.GetCurrSubTopic_9Options()[3])))
                            {
                           jsondata.Globals.SetCurrSubSelected(method(jsondata.Globals.GetCurrSubTopic_9Options()[3])); App_Start_Lemida(context);;
 }
                    else
                            { 
                                showDialog(context: context,
                    builder: (BuildContext context)
                    {
                    //  return  Transform(transform: Matrix4.translationValues(posX-250, posY-300, 0.0), 
                        
                    //   child: getDialog(jsondata.Globals.GetCurrSubTopic_9Options()[3],context)  
                    //   );
                   
                    return getDialog(jsondata.Globals.GetCurrSubTopic_9Options()[3],context) ;
                    }
                    );}
                    }
                  },
                  onTapDown: (TapDownDetails details) => _onTapDown(details),
                  child: Column(
                  children: <Widget>[
                   Container(
                    
                        width: MediaQuery.of(context).size.width/3,
                        height: MediaQuery.of(context).size.width/3,
                        child: Material(
                          child: getWidget(jsondata.Globals.GetCurrSubTopic_9Options()[3]),
                          shape: CircleBorder(
                            
                          ),
                   //       color: Colors.white,
                        ),

                      ),
                      Text(GetName(jsondata.Globals.GetCurrSubTopic_9Options()[3]),textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 13))
                  ]
)
                ),
                    // spacer to move scond icon from side
                    Spacer(flex: 2),
                ]
                
              ),
              //spacer to move icon up
             SizedBox(height: _screenHeight/30),
             // Spacer(flex:10),
              //ROW 3

              new Row(
                children: <Widget>[
                  //spacer to move first from side
                Spacer(flex: 2),  

                //First icon
                    GestureDetector(
                  onTap: ()
                  {
                    print("hello");
                      if(jsondata.Globals.GetCurrSubTopic_9Options()[4] != null && jsondata.Globals.GetCurrSubTopic_9Options()[4] != "" && jsondata.Globals.GetCurrSubTopic_9Options()[4] 
                      != "icon1.jpg" && jsondata.Globals.GetCurrSubTopic_9Options()[4] != "icon2.jpg") 
                    {
                       if(!finalJson.contains(method(jsondata.Globals.GetCurrSubTopic_9Options()[4]))) //jsondata.Globals.GetCurrSubTopic_9Options()[5]
                            {
                           jsondata.Globals.SetCurrSubSelected(method(jsondata.Globals.GetCurrSubTopic_9Options()[4])); App_Start_Lemida(context);;
 }
                    else
                            { 
                                showDialog(context: context,
                    builder: (BuildContext context)
                    {
                    //  return  Transform(transform: Matrix4.translationValues(posX-250, posY-300, 0.0), 
                        
                    //   child: getDialog(jsondata.Globals.GetCurrSubTopic_9Options()[4],context) 
                    //   );
                  
                    return getDialog(jsondata.Globals.GetCurrSubTopic_9Options()[4],context) ;
                    }
                    );
                            }
                    }
                  },onTapDown: (TapDownDetails details) => _onTapDown(details),
                  child: Column(
                  children: <Widget>[
                   Container(
                    
                        width: MediaQuery.of(context).size.width/3,
                        height: MediaQuery.of(context).size.width/3,
                        child: Material(
                          child: getWidget(jsondata.Globals.GetCurrSubTopic_9Options()[4]),
                          shape: CircleBorder(
                            
                          ),
                 //         color: Colors.white,
                        ),

                      ),
                      Text(GetName(jsondata.Globals.GetCurrSubTopic_9Options()[4]),textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 13))
                  ]
)
                ),
                    //space to move first icon from second
                    Spacer(flex: 3,),
                //second icon
                    GestureDetector(
                  onTap: ()
                  {

                    print("pink hello");
                      if(jsondata.Globals.GetCurrSubTopic_9Options()[5] != null && jsondata.Globals.GetCurrSubTopic_9Options()[5] != "" && jsondata.Globals.GetCurrSubTopic_9Options()[5] != "icon1.jpg" && jsondata.Globals.GetCurrSubTopic_9Options()[5] != "icon2.jpg") //jsondata.Globals.GetCurrSubTopic_9Options()[5])
                    {

                      if(!finalJson.contains(method(jsondata.Globals.GetCurrSubTopic_9Options()[5])))
                            {
                           jsondata.Globals.SetCurrSubSelected(method(jsondata.Globals.GetCurrSubTopic_9Options()[5])); App_Start_Lemida(context);;
 }
                    else
                            { 
                                showDialog(context: context,
                    builder: (BuildContext context)
                    {
                    //  return  Transform(transform: Matrix4.translationValues(posX-250, posY-300, 0.0), 
                        
                    //   child: getDialog(jsondata.Globals.GetCurrSubTopic_9Options()[5],context) 
                    //   );
                   
                    return getDialog(jsondata.Globals.GetCurrSubTopic_9Options()[5],context);
                     }
                    );}
                    }
                  },
                  onTapDown: (TapDownDetails details) => _onTapDown(details),
                  child: Column(
                  children: <Widget>[
                   Container(
                    
                        width: MediaQuery.of(context).size.width/3,
                        height: MediaQuery.of(context).size.width/3,
                        child: Material(
                          child: getWidget(jsondata.Globals.GetCurrSubTopic_9Options()[5]),
                          shape: CircleBorder(
                            
                          ),
                  //        color: Colors.white,
                        ),

                      ),
                      Text(GetName(jsondata.Globals.GetCurrSubTopic_9Options()[5]),textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 13))
                  ]
)
                ),
                    // spacer to move scond icon from side
                    Spacer(flex: 2),
                ]
                
              ),
              //spacer to move icon up
           SizedBox(height: _screenHeight/30),
           //   Spacer(flex:30),
             ]
                )
                )
                ]
              ),// : Container(),
        //    }
///end9


///10
              if(!jsonLoader.Globals.GetCurrSubTopic_10Options().isEmpty) //{
                 Column(
                        
                          children: <Widget>
                          [
                              
                            Expanded(
                            
                              child: Align(
                              
                              alignment: Alignment.centerRight,
                            
                              child: Container(
                              //  color: Colors.green,
                                height: MediaQuery.of(context).size.height,///3 + 10,
                                padding: new EdgeInsets.all(5),
                                child: Column(children: <Widget>[
                                  
                                  SizedBox(height: 10),
                                  
                                 Align
                               (
                                 alignment: Alignment.centerRight,
                                        child: Text(' מספר טלפון של משרד הרב: 2608',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 22),textAlign: TextAlign.right,overflow: TextOverflow.ellipsis, maxLines: 5,),
                                        //Text(' מספר טלפון של משרד הרב: 2608',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 22),textAlign: TextAlign.right,overflow: TextOverflow.ellipsis, maxLines: 5,),

                                 //   SizedBox(height: 10),
                               ),
                                    GestureDetector(
                                      onTap: ()
                                        {
                                          print("copied 2608");
                                          Clipboard.setData(new ClipboardData(text: "2608")); //phone numebr
                                        },


                                        child: Align
                                           (
                                          alignment: Alignment.centerRight,
                                                  child: Text(" העתק מספר",style: TextStyle(color: Color(int.parse("#add5fb".substring(1, 7), radix: 16) + 0xFF000000),fontWeight: FontWeight.w400,fontSize: 18),textAlign: TextAlign.right,overflow: TextOverflow.ellipsis,),

                                            )
                                    ),
                                     SizedBox(height: 15),
                                    Align(
                                        alignment: Alignment.centerRight,
                                  
                                        child: Text(' מספר טלפון של המשקים: 2609',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 22),textAlign: TextAlign.right,overflow: TextOverflow.ellipsis, maxLines: 5,),

                                    ),

                                GestureDetector(
                                      onTap: ()
                                        {
                                          print("copied 2608");
                                          Clipboard.setData(new ClipboardData(text: "2608")); //phone numebr
                                        },


                                        child: Align
                                           (
                                          alignment: Alignment.centerRight,
                                                  child: Text(" העתק מספר",style: TextStyle(color: Color(int.parse("#add5fb".substring(1, 7), radix: 16) + 0xFF000000),fontWeight: FontWeight.w400,fontSize: 18),textAlign: TextAlign.right,overflow: TextOverflow.ellipsis,),

                                            )
                                    ),
                                     SizedBox(height: 15),
                                    Align(
                                        alignment: Alignment.centerRight,
                                  
                                        child: Text(' מספר טלפון של אחראי כשרות ודת: 2644',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 22),textAlign: TextAlign.right,overflow: TextOverflow.ellipsis, maxLines: 5,),

                                    ),
                                    GestureDetector(
                                      onTap: ()
                                        {
                                          print("copied 2644");
                                          Clipboard.setData(new ClipboardData(text: "2644")); //phone numebr
                                        },


                                        child: Align
                                           (
                                          alignment: Alignment.centerRight,
                                                  child: Text(" העתק מספר",style: TextStyle(color: Color(int.parse("#add5fb".substring(1, 7), radix: 16) + 0xFF000000),fontWeight: FontWeight.w400,fontSize: 18),textAlign: TextAlign.right,overflow: TextOverflow.ellipsis,),

                                            )
                                    ),

                                    SizedBox(height: 15),
                                    Align(
                                        alignment: Alignment.centerRight,
                                  
                                        child: Text(' רבנות קריית ההדרכה זמינים בכל העת במבנה המפקדה 206 משרדים 12-13-14',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 22),textAlign: TextAlign.right,overflow: TextOverflow.ellipsis, maxLines: 5,),

                                    ),
                            ///    SizedBox(height: 20),DSFDFגכד
                                //     Text(' מספר טלפון של משקים: 2609 \n',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 22),textAlign: TextAlign.right,overflow: TextOverflow.ellipsis, maxLines: 5,),
                                 //   SizedBox(height: 10),
                                    

                                ],) 
                               

                                ),
                              )
                              
                            ),


                           
                           // Spacer(),
                            // Align(
                              
                            //   alignment: Alignment.centerRight,
                            
                            //   child: Container(
                            //     padding: new EdgeInsets.all(20),
                            //     child: Text(' רפי:רב"ט דור שגיב',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 22),textAlign: TextAlign.right,overflow: TextOverflow.ellipsis, maxLines: 5,),
                              

                            //     ),//Text(' רמד טי"ל: רס"ן מיגל ליויתן \n תכנות: טוראי תומי פוליאקוב \n עיצוב גרפי:רב"ט דור שגיב',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 22),textAlign: TextAlign.right,overflow: TextOverflow.ellipsis, maxLines: 5,)
                              
                            //   ),
         //         Spacer(flex: 1,),
                          ],

                    //    ),

//               children: <Widget>[fdgfdgd
                
//                 Expanded(
//                 child: ListView(//ListView(
//                      shrinkWrap: true,
//                       padding: EdgeInsets.all(5.0),
//              children: <Widget>[
//                   //spacer to move from top
//            SizedBox(height: _screenHeight/30),
//            //       Spacer(flex: 10),
//               //Row 1
              
//                 new Row(
//                 children: <Widget>[
//                   //spacer to move first from side
//                 Spacer(flex: 2),  

//                 //First icon
//                     GestureDetector(
//                   onTap: ()
//                   {
//                     print("hello");
//                     if(jsondata.Globals.GetCurrSubTopic_10Options()[0] != null && jsondata.Globals.GetCurrSubTopic_10Options()[0] != "" && jsondata.Globals.GetCurrSubTopic_10Options()[0] 
//                       != "icon1.jpg" && jsondata.Globals.GetCurrSubTopic_10Options()[0] != "icon2.jpg") 
//                     {
//                        if(!finalJson.contains(method(jsondata.Globals.GetCurrSubTopic_10Options()[0])))
//                             {
//                            jsondata.Globals.SetCurrSubSelected(method(jsondata.Globals.GetCurrSubTopic_10Options()[0])); App_Start_Lemida(context);;
//  }
//                     else
//                             { 
//                                 showDialog(context: context,
//                     builder: (BuildContext context)
//                     {
//                     //  return  Transform(transform: Matrix4.translationValues(posX-250, posY-300, 0.0), 
                        
//                     //   child: getDialog(jsondata.Globals.GetCurrSubTopic_10Options()[0], context) 
//                     //   );
                  
//                       return getDialog(jsondata.Globals.GetCurrSubTopic_10Options()[0], context) ;
//                     }
//                     );
//                             }
//                     }
//                   },
//                   onTapDown: (TapDownDetails details) => _onTapDown(details),
//                   child: Column(
//                   children: <Widget>[
//                    Container(
                    
//                         width: MediaQuery.of(context).size.width/3,
//                         height: MediaQuery.of(context).size.width/3,
//                         child: Material(
//                           child: getWidget(jsondata.Globals.GetCurrSubTopic_10Options()[0]),
//                           shape: CircleBorder(
                            
//                           ),
//                           color: Colors.white,
//                         ),

//                       ),
//                       Text(GetName(jsondata.Globals.GetCurrSubTopic_10Options()[0]),textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20))
//                   ]
// )
//                 ),
//                     //space to move first icon from second
//                     Spacer(flex: 3,),
//                 //second icon
//                     GestureDetector(
//                   onTap: ()
//                   {

//                     print("pink hello");
//                     if(jsondata.Globals.GetCurrSubTopic_10Options()[1] != null && jsondata.Globals.GetCurrSubTopic_10Options()[1] != "" && jsondata.Globals.GetCurrSubTopic_10Options()[1] 
//                       != "icon1.jpg" && jsondata.Globals.GetCurrSubTopic_10Options()[1] != "icon2.jpg") 
//                     {
//                       if(!finalJson.contains(method(jsondata.Globals.GetCurrSubTopic_10Options()[1])))
//                             {
//                            jsondata.Globals.SetCurrSubSelected(method(jsondata.Globals.GetCurrSubTopic_10Options()[1])); App_Start_Lemida(context);;
//  }
//                     else
//                             { 
//                                 showDialog(context: context,
//                     builder: (BuildContext context)
//                     {
//                     //  return  Transform(transform: Matrix4.translationValues(posX-250, posY-300, 0.0), 
                        
//                     //   child: getDialog(jsondata.Globals.GetCurrSubTopic_10Options()[1],context)  
//                     //   );
                   
//                     return getDialog(jsondata.Globals.GetCurrSubTopic_10Options()[1],context)  ;
//                     }
//                     );}
//                     }
//                   },
//                   onTapDown: (TapDownDetails details) => _onTapDown(details),
//                   child: Column(
//                   children: <Widget>[
//                    Container(
                    
//                         width: MediaQuery.of(context).size.width/3,
//                         height: MediaQuery.of(context).size.width/3,
//                         child: Material(
//                           child: getWidget(jsondata.Globals.GetCurrSubTopic_10Options()[1]),
//                           shape: CircleBorder(
                            
//                           ),
//                           color: Colors.white,
//                         ),

//                       ),
//                       Text(GetName(jsondata.Globals.GetCurrSubTopic_10Options()[1]),textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20))
//                   ]
// )
//                 ),
//                     // spacer to move scond icon from side
//                     Spacer(flex: 2),
//                 ]
                
//               ),
//               //need be space between each row
//           SizedBox(height: _screenHeight/30),
//           //    Spacer(flex: 10,),
//               //ROW 2
//                 new Row(
//                 children: <Widget>[
//                   //spacer to move first from side
//                 Spacer(flex: 2),  

//                 //First icon
//                     GestureDetector(
//                   onTap: ()
//                   {
//                     print("hello");
//                     if(jsondata.Globals.GetCurrSubTopic_10Options()[2] != null && jsondata.Globals.GetCurrSubTopic_10Options()[2] != "" && jsondata.Globals.GetCurrSubTopic_10Options()[2] 
//                       != "icon1.jpg" && jsondata.Globals.GetCurrSubTopic_10Options()[2] != "icon2.jpg") 
//                     {
//                        if(!finalJson.contains(method(jsondata.Globals.GetCurrSubTopic_10Options()[2])))
//                           {
//                            jsondata.Globals.SetCurrSubSelected(method(jsondata.Globals.GetCurrSubTopic_10Options()[2])); App_Start_Lemida(context);;
//                           }
//                     else
//                             { 
//                                 showDialog(context: context,
//                     builder: (BuildContext context)
//                     {
//                     //  return  Transform(transform: Matrix4.translationValues(posX-250, posY-300, 0.0), 
                        
//                     //   child: getDialog(jsondata.Globals.GetCurrSubTopic_10Options()[2],context)  
                  
//                  //  }
//                     return getDialog(jsondata.Globals.GetCurrSubTopic_10Options()[2],context)  ;
//                     //   );
//                     }
//                     );}
//                     }
//                   },onTapDown: (TapDownDetails details) => _onTapDown(details),
//                   child: Column(
//                   children: <Widget>[
//                    Container(
                    
//                         width: MediaQuery.of(context).size.width/3,
//                         height: MediaQuery.of(context).size.width/3,
//                         child: Material(
//                           child: getWidget(jsondata.Globals.GetCurrSubTopic_10Options()[2]),
//                           shape: CircleBorder(
                            
//                           ),
//                           color: Colors.white,
//                         ),

//                       ),
//                       Text(GetName(jsondata.Globals.GetCurrSubTopic_10Options()[2]),textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20))
//                   ]
// )
//                 ),
//                     //space to move first icon from second
//                     Spacer(flex: 3,),
//                 //second icon
//                     GestureDetector(
//                   onTap: ()
//                   {

//                     print("pink hello");
//                     if(jsondata.Globals.GetCurrSubTopic_10Options()[3] != null && jsondata.Globals.GetCurrSubTopic_10Options()[3] != "" && jsondata.Globals.GetCurrSubTopic_10Options()[3] 
//                       != "icon1.jpg" && jsondata.Globals.GetCurrSubTopic_10Options()[3] != "icon2.jpg") 
//                     {

//                       if(!finalJson.contains(method(jsondata.Globals.GetCurrSubTopic_10Options()[3])))
//                          {
//                            jsondata.Globals.SetCurrSubSelected(method(jsondata.Globals.GetCurrSubTopic_10Options()[3])); App_Start_Lemida(context);;
//                           }
//                     else
//                             { 
//                                 showDialog(context: context,
//                       builder: (BuildContext context)
//                       {
//                       //  return  Transform(transform: Matrix4.translationValues(posX-250, posY-300, 0.0), 
                          
//                       //   child: getDialog(jsondata.Globals.GetCurrSubTopic_10Options()[3],context)  
//                       //   );
                         
//                           return getDialog(jsondata.Globals.GetCurrSubTopic_10Options()[3],context) ;
//                       }
//                     );
//                             }
//                     }
//                   },
//                   onTapDown: (TapDownDetails details) => _onTapDown(details),
//                   child: Column(
//                   children: <Widget>[
//                    Container(
                    
//                         width: MediaQuery.of(context).size.width/3,
//                         height: MediaQuery.of(context).size.width/3,
//                         child: Material(
//                           child: getWidget(jsondata.Globals.GetCurrSubTopic_10Options()[3]),
//                           shape: CircleBorder(
                            
//                           ),
//                           color: Colors.white,
//                         ),

//                       ),
//                       Text(GetName(jsondata.Globals.GetCurrSubTopic_10Options()[3]),textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20))
//                   ]
// )
//                 ),
//                     // spacer to move scond icon from side
//                     Spacer(flex: 2),
//                 ]
                
//               ),
//               //spacer to move icon up
//            SizedBox(height: _screenHeight/30),
          
//            //   Spacer(flex:10),
//               //ROW 3

//               new Row(
//                 children: <Widget>[
//                   //spacer to move first from side
//                 Spacer(flex: 2),  

//                 //First icon
//                     GestureDetector(
//                   onTap: ()
//                   {
//                     print("hello");
//                       if(jsondata.Globals.GetCurrSubTopic_10Options()[4] != null && jsondata.Globals.GetCurrSubTopic_10Options()[4] != "" && jsondata.Globals.GetCurrSubTopic_10Options()[4] 
//                       != "icon1.jpg" && jsondata.Globals.GetCurrSubTopic_10Options()[4] != "icon2.jpg") 
//                     {
//                        if(!finalJson.contains(method(jsondata.Globals.GetCurrSubTopic_10Options()[4])))
//                             {
//                             jsondata.Globals.SetCurrSubSelected(method(jsondata.Globals.GetCurrSubTopic_10Options()[4])); App_Start_Lemida(context);;
//                             }
//                       else
//                             { 
//                                 showDialog(context: context,
//                       builder: (BuildContext context)
//                         {
//                         //  return  Transform(transform: Matrix4.translationValues(posX-250, posY-300, 0.0), 
                            
//                         //   child: getDialog(jsondata.Globals.GetCurrSubTopic_10Options()[4],context) 
//                         //   );
                        
//                           return getDialog(jsondata.Globals.GetCurrSubTopic_10Options()[4],context) ;
//                         }
//                       );
//                             }
//                     }
//                   },onTapDown: (TapDownDetails details) => _onTapDown(details),
//                   child: Column(
//                   children: <Widget>[
//                    Container(
                    
//                         width: MediaQuery.of(context).size.width/3,
//                         height: MediaQuery.of(context).size.width/3,
//                         child: Material(
//                           child: getWidget(jsondata.Globals.GetCurrSubTopic_10Options()[4]),
//                           shape: CircleBorder(
                            
//                           ),
//                           color: Colors.white,
//                         ),

//                       ),
//                       Text(GetName(jsondata.Globals.GetCurrSubTopic_10Options()[4]),textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20))
//                   ]
// )
//                 ),
                
//                     //space to move first icon from second
//                     Spacer(flex: 3,),
//                 //second icon
//                     GestureDetector(
//                   onTap: ()
//                   {

//                     print("pink hello");
//                       if(jsondata.Globals.GetCurrSubTopic_10Options()[5] != null && jsondata.Globals.GetCurrSubTopic_10Options()[5] != "" && jsondata.Globals.GetCurrSubTopic_10Options()[5] != "icon1.jpg" && jsondata.Globals.GetCurrSubTopic_10Options()[5] != "icon2.jpg") //jsondata.Globals.GetCurrSubTopic_10Options()[5])
//                     {

//                       if(!finalJson.contains(method(jsondata.Globals.GetCurrSubTopic_10Options()[5])))
//                           {
//                             //jsondata.Globals.SetCurrSubSelected(method(str));
//                             //SchedulerBinding.instance.addPostFrameCallback((_) => setState(() { jsondata.Globals.SetCurrSubSelected(method(jsondata.Globals.GetCurrSubTopic_10Options()[5])); App_Start_Lemida(context);;
//                                jsondata.Globals.SetCurrSubSelected(method(jsondata.Globals.GetCurrSubTopic_10Options()[5])); App_Start_Lemida(context);
//                           }
//                       else
//                             { 
//                                 showDialog(context: context,
//                     builder: (BuildContext context)
//                       {
//                       //  return  Transform(transform: Matrix4.translationValues(posX-250, posY-300, 0.0), 
                          
//                       //   child: getDialog(jsondata.Globals.GetCurrSubTopic_10Options()[5],context) 
//                         //   );
                       
//                         return getDialog(jsondata.Globals.GetCurrSubTopic_10Options()[5],context);
                        
//                       }
//                     );
//                             }
//                   }
//                   },
//                   onTapDown: (TapDownDetails details) => _onTapDown(details),
//                   child: Column(
//                   children: <Widget>[
//                    Container(
                    
//                         width: MediaQuery.of(context).size.width/3,
//                         height: MediaQuery.of(context).size.width/3,
//                         child: Material(
//                           child: getWidget(jsondata.Globals.GetCurrSubTopic_10Options()[5]),
//                           shape: CircleBorder(),
//                           color: Colors.white,
//                         ),

//                       ),
//                       Text(GetName(jsondata.Globals.GetCurrSubTopic_10Options()[5]),textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20))
//                   ]
// )
                     
//                 ),
//                     // spacer to move scond icon from side
//                     Spacer(flex: 2),
//                 ]
                
//               ),
//               //spacer to move icon up
           
//            SizedBox(height: _screenHeight/30),
//            //   Spacer(flex:30),
//              ]
//                 )
//                 )
//                 ]
              ),// : Container(),
        //    }






///end10
              
            ],
              )
        ),
      )
    );
  }

  void BackHomeBtn(BuildContext ctx)
  {
    jsondata.Globals.Clean_();
    //Navigator.push(ctx,MaterialPageRoute(builder: (context) => main_page.MyHomePage()),);
        Navigator.push(ctx,MaterialPageRoute(builder: (context) => main_page.MyHomePage()));//startPage.SecondRoute()));
  }
  void App_Start_Lemida(BuildContext ctx)
  {
    
    Navigator.push(ctx,MaterialPageRoute(builder: (context) => lilmod_page.Route()));
  }
  void App_Start_tirgul(BuildContext ctx)
  {
    main_tirgul_page.Route().NMisson(ctx);
  }
  //get icon as btn
  Widget getWidget(String path) 
  {
    if(path != null && path != "" && path != "icon1.jpg" && path != "icon2.jpg")
    {
      return Container(
        
       // color: Colors.green,
        
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              
             // SizedBox(height: MediaQuery.of(context).size.width/3,),
             
        //    Spacer(),
           // SizedBox(height: 20,),
            //  Text(GetName(path),textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20))
           Center(
           child: Container(
            //  color: Colors.pink,
            //width: _screenWidth/4.5,
            //height:  _screenWidth/4
             child: Image(fit: BoxFit.contain ,alignment: Alignment.center ,height:  _screenWidth/4,width: _screenWidth/4,image: AssetImage("assets/"+GetPath(path))),
            )
             // color: Colors.pink,
             //child: Image(fit: BoxFit.fill,alignment: Alignment.center,height: _screenHeight/10 ,width: _screenWidth/8,image: AssetImage("assets/"+GetPath(path))),
            )

            ],
        ),
       // child: Image(image: null),
        //shape: CircleBorder(),
      //  Image ii = decodeJpg(new Io.File('test.jpg')),
      //  decoration: BoxDecoration(shape: BoxShape.circle, image: DecorationImage(image: AssetImage("assets/"+GetPath(path)))),//ResizeImage(AssetImage("assets/"+GetPath(path)), width: 20, height: 20))),
//border: Border.all() ,        //  child: Column(
        //     children: <Widget>[
        //      // SizedBox(height: ,),
        //       Text("da")
        //     ],
        // )
        //child: Text("data"),
      );//Image(image: AssetImage("assets/"+path));
    } 

  }
  //get data json
  //  Future<bool> InJson(String str,BuildContext ctx) async//, var el)
  //  {
  //      var jsonData = json.decode(await DefaultAssetBundle.of(ctx).loadString("assets/DATA.json"));
  //      if(!jsonData.toString().contains(str))
  //     {
  //         return Future<bool>.value(true);
  //     }
  //     return Future<bool>.value(false);
  //  }

   //
   Future<String> LoadJson(BuildContext ctx) async//, var el)
   {
       var jsonData = json.decode(await DefaultAssetBundle.of(ctx).loadString("assets/DATA.json"));
       print("DONE LOADING JSON");
       return jsonData.toString();
   }
   ///
  
  //show yellow dialog
  Widget getDialog(String str, BuildContext ctx) 
   {
    if(str != null && str != "" && str != "icon1.jpg" && str != "icon2.jpg")
    {
     // bool jsonData = false;
     // final future = InJson(method(str) + "_questions",ctx);
     // future.then((h) => jsonData = h); //print(h.toString() + "-------------------------------------------- ")
    //  var a = jsonData.toString();
      //(method(str)
      //  if(jsonData) 
      // {
      //    jsondata.Globals.SetCurrSubSelected(method(str));
      // //   App_Start_Lemida(ctx);
      //    return null;
      // }
    
     return SimpleDialog(
                    
                  contentPadding: EdgeInsets.all(0.0),
                  //ADD SHAPE to dialog
                  shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(26.5))
              ),
                       children: <Widget>[

                            Container( 
                              width: 100,
                              height: 145,

                              decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage("lib/options_choose_page_need/pop_up_y.png"),
                              fit: BoxFit.fill
                              )
                              ),
                               child: Column(children: <Widget>[
                                 //spacer to move from top
                                  Spacer(flex: 10),
                                  //lemida
                                 new Row(
                                   children: <Widget>[
                                     Spacer(flex: 5),

                                     //lemida click
                                     InkWell(
                              child: Align(
                                alignment: Alignment.center,
                                 child: Text("             למידה            ", style: TextStyle(fontSize: 21,color: Colors.white,fontWeight: FontWeight.w700),),
                                //onTap: () {print("value of your text");},
                              ),
                              onTap: () 
                              {
                                print("Lemida");
                                jsondata.Globals.SetCurrSubSelected(method(str));
                                App_Start_Lemida(ctx);
                              },
                            ),
                                     Spacer(flex: 5),
                                   ],
                                 ),
                                Spacer(flex:10),
                                //tirgul
                                 new Row(
                                   children: <Widget>[
                                     Spacer(flex: 5),
                                     //tirgul click
                                     InkWell(
                              child: Align(
                                alignment: Alignment.center,
                                 child: Text("            תרגול            ", style: TextStyle(fontSize: 21,fontWeight: FontWeight.w700,color: Color(int.parse("#ffc715".substring(1, 7), radix: 16) + 0xFF000000)),), //ffc715
                                //onTap: () {print("value of your text");},
                              ),
                              onTap: () 
                              {
                                print("Tirgul");
                                jsondata.Globals.SetCurrSubSelected(method(str));
                                //move to tirgul page
                                main_tirgul_page.Route().NMisson(ctx);

                              },
                            ),
                                     Spacer(flex: 5),
                                   ],
                                 ),

                                 Spacer(flex: 12),

                               ],),
                             ),
                       ]
                      );
    }
  }
  //get sub
  String method(String str) 
  {
    if (str != null && str.length > 0) {
     // str = str.substring(0, str.length - 4);
     var el = str.split(".");
     return el[0];
    }
    return str[0];
  }
  //get name given to sub
  String GetName(String str)
  {
    
    if (str != null && str.length > 0) {
     // str = str.substring(0, str.length - 4);
     var el = str.split(".");
     if(el[2] != null || el[2] != "")
     {
      return el[2];
     }
    }
    return "";
    
  }
}
//get path of file
String GetPath(String str)
{
  if (str != null && str.length > 0) {
     // str = str.substring(0, str.length - 4);
     var el = str.split(".");
     return el[0] +"." + el[1];
    }
   // print(a[0] +"." + str[1]);
    return "";
}
class Choice {
  const Choice({this.title, this.icon});

  final String title;
  final IconData icon;
}

_onTapDown(TapDownDetails details) {
    var x = details.globalPosition.dx;
    var y = details.globalPosition.dy;
    posX = x;
    posY = y;
    print("tap down " + x.toString() + ", " + y.toString());
  }
  