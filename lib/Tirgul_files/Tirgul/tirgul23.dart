import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:q_app_new/Tirgul_files/Tirgul/NextBtn.dart';
import '../../Backbtn.dart';
import 'package:q_app_new/Tirgul_files/Tirgul/main.dart' as maint;
import 'package:q_app_new/Tirgul_files/Tirgul/Btns.dart' as Btns;

import 'package:q_app_new/Tirgul_files/Tirgul/_Select1.dart';
import '../Tirgul/_Select2.dart';
import '../Tirgul/_Select3.dart';
import '../Tirgul/_Select4.dart';
import '../../signalDraw.dart';
//pgs

String _gray = 'lib/Tirgul_files/Tirgul/graynext.svg';
String _yello = 'lib/Tirgul_files/Tirgul/next.svg';
//ans type
var _tick = 'lib/Tirgul_files/Tirgul/_tick.svg';
var _cross = 'lib/Tirgul_files/Tirgul/_cross.svg';
var netural = 'lib/Tirgul_files/Tirgul/Select_btn_black.svg';

//BTN TO GO BACK
final String backBTN = 'lib/Start_page_need/Back_btn.svg';

final String signalD = 'lib/Start_page_need/signal.svg';

//var n = maint.list;
bool correctans = false;

// class SecondRoute extends StatefulWidget{

//   //_SecondRoute createState() => _SecondRoute(maint.list);
// }
class _SecondRoute extends State<StatefulWidget>{
  var  list;
 _SecondRoute(this.list);
  @override
  Widget build(BuildContext context) {
   print(list);
      return Scaffold(

      body: Stack(
        
        children: <Widget>[
          Container(
            
              decoration: BoxDecoration(image: DecorationImage(
                image: AssetImage('lib/Tirgul_files/Tirgul/Yellowbackground.png'),fit: BoxFit.fill)),
                
            ),
             Column(
              children: <Widget>[
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                     Spacer(flex:3),
                    Align(
                      alignment: Alignment.topCenter,
                       child: Container(
                         constraints: new BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width - 84),
        child:  Text('איזה חלק בנשק משמש לתיקון הסטיות למעלה או למטה?' ,style: TextStyle(fontSize: 20,color: Colors.white) ,textAlign: TextAlign.center,)
                      )
                    ),
                    Spacer(flex:2),
                    Align(
                    alignment: Alignment.center,
                        child: GestureDetector
                        (
                          onTap: () {
                            setState(() {
                              
                            });
                            Navigator.pop(context);
                            },
                            //  svg as btn
                             child: Container
                             (
                               child: Align
                               (
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
                    ),
                    // Spacer(flex: 5),
                ],
                    ),
                  //  Spacer(flex:1),
                    
               //raw Q1
                   new Row(
                     
                     mainAxisAlignment: MainAxisAlignment.end,
            
                     children: <Widget>[
                       Spacer(flex: 500),
                       
                       //BTN SELECT
                       Align(
                         
                        child: GestureDetector
                        (
                          
                          onTap: () {
                           print("PRINTPRINT");
                           setState(() 
                              {
                              
                            //sackBTN_b1 =_tick;
                              Btns.Globals.SetBtn1(_cross);
                              
                          
                              });
                            },
                            //  svg as btn
                             
                             child: Container
                             (
                               
                               
                               child: Align
                               (
                                 alignment: Alignment.center,
                                 child: SackBTN_b1
                                 (
                                   
                                   bbtn: Row
                                   (
                                    
                                     children: <Widget>
                                     [
                                       Align(
                                         alignment: Alignment.center,
                                         ),
                                      ],
                                    )
                                  ),
                              )
                            ),
                        ),
                    ),
                    Spacer(flex:600,),
                       ///Text
                       Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                         constraints: new BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width - 84),
        child:  Text('תוף צידוד',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 24,color: Color(int.parse("#414141".substring(1, 7), radix: 16) + 0xFF000000)),),
                          )   ),
                       
                        Spacer(flex: 800,)
                     ],
                   ),
                   Spacer(flex: 10),
                  //raw Q2
                    Row(
                     mainAxisAlignment: MainAxisAlignment.end,
                     children: <Widget>[
                       Spacer(flex: 65),
                       //BTN SELECT
                       Align(
                         
                        child: GestureDetector
                        (
                          onTap: () {
                          setState(() {
                            Btns.Globals.SetBtn2(_cross);
                           });
                            },
                            //  svg as btn
                             
                             child: Container
                             (
                               
                               child: Align
                               (
                                 alignment: Alignment.center,
                                 
                                 child: SackBTN_b2
                                 (
                                   
                                   bbtn: Row
                                   (
                                    
                                     children: <Widget>
                                     [
                                       Align(
                                         alignment: Alignment.center,
                                         ),
                                      ],
                                    )
                                  ),
                              )
                            ),
                        ),
                    ),
                    Spacer(flex:220,),
                       ///Text
                       Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                         constraints: new BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width - 84),
        child:  Text("כוונת אחורית",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 24,color: Color(int.parse("#414141".substring(1, 7), radix: 16) + 0xFF000000)),),
                        )
                       ),
                       
                        Spacer(flex: 100,)
                     ],
                   ),

                    Spacer(flex: 10),
                  //raw Q3
                   new Row(
                     mainAxisAlignment: MainAxisAlignment.end,
                     children: <Widget>[
                       Spacer(flex: 50),
                       //BTN SELECT
                       Align(
                         
                        child: GestureDetector
                        (
                          onTap: () {
                              setState(() {
                           Btns.Globals.SetBtn3(_cross);
                           });                           
                            },
                            //  svg as btn
                             
                             child: Container
                             (
                               
                               child: Align
                               (
                                 alignment: Alignment.center,
                                 
                                 child: SackBTN_b3
                                 (
                                   
                                   bbtn: Row
                                   (
                                    
                                     children: <Widget>
                                     [
                                       Align(
                                         alignment: Alignment.center,
                                         ),
                                      ],
                                    )
                                  ),
                              )
                            ),
                        ),
                    ),
                    Spacer(flex:230),
                       ///Text
                       Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                         constraints: new BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width - 84),
        child:  Text("שתי כוונות הברזל",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 24,color: Color(int.parse("#414141".substring(1, 7), radix: 16) + 0xFF000000)),),
                        )
                       ),
                       
                        Spacer(flex: 60,)
                     ],
                   ),
                    Spacer(flex: 10),


                   //RAW Q4
                   new Row(
                     mainAxisAlignment: MainAxisAlignment.end,
                     children: <Widget>[
                       Spacer(flex: 35),
                       //BTN SELECT
                       Align(
                         
                        child: GestureDetector
                        (
                          onTap: () {
                            setState(() {
                          Btns.Globals.SetBtn4(_tick);
                          Btns.Globals.SetBtnNext(_yello);
                             correctans = true;
                           });
                            },
                            //  svg as btn
                             
                             child: Container
                             (
                               
                               child: Align
                               (
                                 alignment: Alignment.center,
                                 
                                 child: SackBTN_b4
                                 (
                                   
                                   bbtn: Row
                                   (
                                    
                                     children: <Widget>
                                     [
                                       Align(
                                         alignment: Alignment.center,
                                         ),
                                      ],
                                    )
                                  ),
                              )
                            ),
                        ),
                    ),
                    Spacer(flex:200,),
                       ///Text
                       Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                         constraints: new BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width - 84),
        child:  Text('פין הלהב',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 24,color: Color(int.parse("#414141".substring(1, 7), radix: 16) + 0xFF000000)),),
                        )
                       ),
                       
                        Spacer(flex: 60,)
                        
                     ],
                   ),
                   Spacer(flex: 200),


                //nest btn
                new Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: <Widget>[
                    //   Spacer(flex: 35),
                       //BTN SELECT
                       Align(
                         
                        child: GestureDetector
                        (
                          onTap: () {
                          print('click btn');
                            if(correctans)
                              {
                                  Btns.Globals.ResetBtns();
                                maint.Route().NMisson(context);
                              }
                            },
                            //  svg as btn
                             
                             child: Container
                             (
                               
                               child: Align
                               (
                                 alignment: Alignment.center,
                                 
                                 child: NextBtn
                                 (
                                   
                                   bbtn: Row
                                   (
                                    
                                     children: <Widget>
                                     [
                                       Align(
                                         alignment: Alignment.center,
                                         ),
                                      ],
                                    )
                                  ),
                              )
                            ),
                        ),
                    ),
          
                     ],
                    
                   ),
                   Spacer(flex: 10,),
                ]   
            )
              ]
            ),
     );
  }

}