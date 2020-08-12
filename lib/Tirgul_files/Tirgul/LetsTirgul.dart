//color yellow - color: Color(int.parse("#ffc715".substring(1, 7), radix: 16) + 0xFF000000)

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:q_app_new/Globals.dart';
import 'package:q_app_new/Tirgul_files/Tirgul/NextBtn.dart';
import '../../Backbtn.dart';
import 'package:q_app_new/Tirgul_files/Tirgul/main.dart' as maint;
import 'package:q_app_new/Tirgul_files/Tirgul/Btns.dart' as Btns;
import 'package:q_app_new/options_choose.dart' as letsfun;

import 'package:q_app_new/Tirgul_files/Tirgul/_Select1.dart';
import '../Tirgul/_Select2.dart';
import '../Tirgul/_Select3.dart';
import '../Tirgul/_Select4.dart';
import '../../signalDraw.dart';
//pgs

String _gray =    'lib/Tirgul_files/Tirgul/__graynext.png';    ///'lib/Tirgul_files/Tirgul/graynext.svg';
String _yello =  'lib/Tirgul_files/Tirgul/__next.png';     ///'lib/Tirgul_files/Tirgul/next.svg';
//ans type
var _tick =      'lib/Tirgul_files/Tirgul/__tick.png';   ///'lib/Tirgul_files/Tirgul/_tick.svg';
var _cross =   'lib/Tirgul_files/Tirgul/__cross.png';     ///'lib/Tirgul_files/Tirgul/_cross.svg';

var netural = 'lib/Tirgul_files/Tirgul/Select_btn_black.svg';

//BTN TO GO BACK
final String backBTN = 'lib/Start_page_need/Back_btn.svg';

final String signalD = 'lib/Start_page_need/signal.svg';

//var n = maint.list;
bool correctans = false;

bool nah = false;
class SecondRoute extends StatefulWidget{

  _SecondRoute createState() => _SecondRoute(maint.q,maint.ans,maint.allans);
  
}
class _SecondRoute extends State<SecondRoute>{
  var  q;
  var ans;
  var allans;
  
 _SecondRoute(this.q,this.ans,this.allans);
  @override
  Widget build(BuildContext context) {
   //print(list);
      return Scaffold(

      body: Stack(
        
        children: <Widget>[
          
          Container(
              decoration: BoxDecoration(image: DecorationImage(
              //  image: AssetImage('lib/Tirgul_files/Tirgul/Yellowbackground.png'),fit: BoxFit.fill)),
                image: AssetImage('assets/YelloBack.png'),fit: BoxFit.fill)),
            ),
            Column(
               
              children: <Widget>[
                //move page down
        
                SizedBox(height: 19,),
                Spacer(),
               Row(
                 
                 mainAxisAlignment: MainAxisAlignment.center,
                 
                children: <Widget>[

        //KOTERET
       // SizedBox(height: 15,),
                    // Spacer(flex:),
                    Align(
                      
                      alignment: Alignment.topCenter,
                      
                       child: Container(
                         //paint in green
                     //    color: Colors.green,
                                //  SizedBox(height: 10,),

                                          constraints: new BoxConstraints(
                                            maxHeight: MediaQuery.of(context).size.height/12,
                            maxWidth: MediaQuery.of(context).size.width - 58),
                          child:  Text(q.toString() ,style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20,color: Colors.white) ,textAlign: TextAlign.right,)
                      )
                    ),
                  //  Spacer(flex:1),
                    //btn BACK
                    Align(
                    alignment: Alignment.center,
                        child: GestureDetector
                        (
                          onTap: () {
                                setState(() {});
                           //     Navigator.pop(context);
                               // q = null;
                               // ans = null;
                               // allans = null;
                                

                                Navigator.push(context,MaterialPageRoute(builder: (context) => letsfun.Routes()),);
                                 nah = false;
                               // Globals.CleanNumQuestion();
                                Globals.CleanNumQuestion();
                        //          correctans = false;
                                  Btns.Globals.ResetBtns();
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
                ],
              ),
                   Spacer(flex: 10), 
               //raw Q1
                   Spacer(),
                   new Row(
                     
                     mainAxisAlignment: MainAxisAlignment.center,
                    
                     children: <Widget>[
                 
                      Spacer(),
                       
                       //BTN SELECT
                       Container(
                        
                        width: MediaQuery.of(context).size.width  / 8,
                    //    color: Colors.cyan,
                        child: GestureDetector
                        (
                          
                          onTap: () {
                           print("Raw Q1");
                              setState(() 
                              {
                                try {
                                  
                                
                                  if(  allans[0].toString() == ans)
                                  {
                                    Btns.Globals.SetBtn1(_tick);
                                    Btns.Globals.SetBtnNext(_yello);
                                    correctans = true;
                                    if(!nah)
                                    {
                                      Globals.AddRightAns();
                                    }
                                  }
                                  else
                                  {
                                    nah = true;
                                    Btns.Globals.SetBtn1(_cross);
                                  }
                                  
                          } catch (e) {
                                }
                              });
                            },
                            //  svg as btn
                             
                             child: Container
                             (
                               
                               alignment: Alignment.centerLeft,
                               
                               child: Align
                               (
                                 alignment: Alignment.centerLeft,
                                 child: SackBTN_b1
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
                 //  Spacer(),
                      //Text
                       Container(
                        alignment: Alignment.centerRight,
                        // child: Container(
                        //  // color: Colors.black,
                        //   //space between
                        //   width: MediaQuery.of(context).size.width - MediaQuery.of(context).size.width/5,//MediaQuery.of(context).size.width - 84,
                        // //  color: Colors.green,
                        //  // height: MediaQuery.of(context).size.height/4,
                        //  constraints: new BoxConstraints(
                              
                        //       maxWidth: MediaQuery.of(context).size.width - MediaQuery.of(context).size.width/5),//84),
                              
                            //  child:  Text(allans[0].toString(),textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 22,color: Color(int.parse("#414141".substring(1, 7), radix: 16) + 0xFF000000)),),
                          child: GestureDetector
                        (
                          onTap: () {
                          setState(() {
                            try {
                              
                           
                            if(  allans[0].toString() == ans)
                              {
                                Btns.Globals.SetBtn1(_tick);
                                Btns.Globals.SetBtnNext(_yello);
                                correctans = true;
                                if(!nah)
                                    {
                                      Globals.AddRightAns();
                                    }
                              }
                              else
                              {
                                nah = true;
                                Btns.Globals.SetBtn1(_cross);
                              }
                               } catch (e) {
                            }
                           });
                            },
                            //  svg as btn
                             
                             child: Container(
                          color: Color(int.parse("#f5f5f5".substring(1, 7), radix: 16) + 0xFF000000),
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
                                 
                                child:  Text(allans[0].toString(),textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 22,color: Color(int.parse("#414141".substring(1, 7), radix: 16) + 0xFF000000)),),
                               )
                             )
                             ),
                        ),
                       ),
               //               )
               //             ),
                //             ),
                 //            ),
                   //     ),
                 //    ]),
                          
                          //------------
                       //   ) , 
                    //   ),
                        Spacer(),
                        
                   
                     ],
                   ),
                   //spacer between raws
                  Spacer(flex: 20),
                // Spacer(flex: 6),
                  
                  
                  
                  
                  //raw Q2
                   new Row(
                     mainAxisAlignment: MainAxisAlignment.end,
                     children: <Widget>[
                       Spacer(),
                       //BTN SELECT
                        Container(
                          
                        width: MediaQuery.of(context).size.width  / 8,
                        // color: Colors.cyan,
                         
                        child: GestureDetector
                        (
                          onTap: () {
                          setState(() {
                            try {
                              
                           
                            if(  allans[1].toString() == ans)
                              {
                                Btns.Globals.SetBtn2(_tick);
                                Btns.Globals.SetBtnNext(_yello);
                                correctans = true;
                                if(!nah)
                                    {
                                      Globals.AddRightAns();
                                    }
                              }
                              else
                              {
                                nah = true;
                                Btns.Globals.SetBtn2(_cross);
                              }
                               } catch (e) {
                            }
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
                //    Spacer(),
                       ///Text
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
                          setState(() {
                            try {
                              
                           
                            if(  allans[1].toString() == ans)
                              {
                                Btns.Globals.SetBtn2(_tick);
                                Btns.Globals.SetBtnNext(_yello);
                                correctans = true;
                                if(!nah)
                                    {
                                      Globals.AddRightAns();
                                    }
                              }
                              else
                              {
                                nah = true;
                                Btns.Globals.SetBtn2(_cross);
                              }
                               } catch (e) {
                            }
                           });
                            },
                            //  svg as btn
                             
                             child: Container(
                               color: Color(int.parse("#f5f5f5".substring(1, 7), radix: 16) + 0xFF000000),

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
                                 
                                child:  Text(allans[1].toString(),textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 22,color: Color(int.parse("#414141".substring(1, 7), radix: 16) + 0xFF000000)),),
                               )
                             )
                             ),
                        ),
                        
                        //--------
                   //     )
                       ),
                       
                        Spacer()
                     ],
                   ),

                    Spacer(flex: 20),
                    //Spacer(),
                  // raw Q3
                   new Row(
                     mainAxisAlignment: MainAxisAlignment.end,
                     children: <Widget>[
                       Spacer(),
                       //BTN SELECT
                        Container(
                        width: MediaQuery.of(context).size.width  / 8,
                        // color: Colors.cyan,
                         
                        child: GestureDetector
                        (
                          onTap: () {
                              setState(() {
                                try {
                                  
                                  
                                if(  allans[2].toString() == ans)
                                {
                                  Btns.Globals.SetBtn3(_tick);
                                  Btns.Globals.SetBtnNext(_yello);
                                  correctans = true;
                                  if(!nah)
                                      {
                                        Globals.AddRightAns();
                                      }
                                }
                                else
                                {
                                  nah = true;
                                  Btns.Globals.SetBtn3(_cross);
                                }
                              } catch (e) {
                                }
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
                  //  Spacer(),
                       ///Text
                       Align(
                        alignment: Alignment.topLeft,
                        // child: Container(
                          
                        //   width: MediaQuery.of(context).size.width - 84,
                        //  constraints: new BoxConstraints(
                        //    maxWidth: MediaQuery.of(context).size.width - 84),
         
                          // child: Text(allans[2].toString(),textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 24,color: Color(int.parse("#414141".substring(1, 7), radix: 16) + 0xFF000000)),),
                        child: GestureDetector
                        (
                          onTap: () {
                          setState(() {
                            try {
                              
                           
                            if(  allans[2].toString() == ans)
                              {
                                Btns.Globals.SetBtn3(_tick);
                                Btns.Globals.SetBtnNext(_yello);
                                correctans = true;
                                if(!nah)
                                    {
                                      Globals.AddRightAns();
                                    }
                              }
                              else
                              {
                                nah = true;
                                Btns.Globals.SetBtn3(_cross);
                              }
                               } catch (e) {
                            }
                           });
                            },
                            //  svg as btn
                             
                             child: Container(
                                color: Color(int.parse("#f5f5f5".substring(1, 7), radix: 16) + 0xFF000000),

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
                                 
                                child:  Text(allans[2].toString(),textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 22,color: Color(int.parse("#414141".substring(1, 7), radix: 16) + 0xFF000000)),),
                               )
                             )
                             ),
                        ),
                        //----------
                     //   )
                       ),
                       
                        Spacer()
                     ],
                   ),
                    Spacer(flex: 20),

                    
                   //RAW Q4
                   new Row(
                     mainAxisAlignment: MainAxisAlignment.end,
                     children: <Widget>[
                       Spacer(),
                       //BTN SELECT
                        Container(
                        width: MediaQuery.of(context).size.width  / 8,
                        color: Color(int.parse("#f5f5f5".substring(1, 7), radix: 16) + 0xFF000000),

                         
                        child: GestureDetector
                        (
                          
                          onTap: () {
                            
                            setState(() {
                              try {
                                
                              
                                if(  allans[3].toString() == ans)
                                {
                                  Btns.Globals.SetBtn4(_tick);
                                  Btns.Globals.SetBtnNext(_yello);
                                  correctans = true;
                                  if(!nah)
                                      {
                                        Globals.AddRightAns();
                                      }
                                }
                                else
                                {
                                  nah = true;
                                  Btns.Globals.SetBtn4(_cross);
                                }
                              } catch (e) {
                              }
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
                //    Spacer(),
                       ///Text
                       Align(
                        alignment: Alignment.topLeft,
                        // child: Container(
                          
                        //   width: MediaQuery.of(context).size.width - 84,
                        //  constraints: new BoxConstraints(
                        //   maxWidth: MediaQuery.of(context).size.width - 84),
                       // child:  Text(allans[3].toString(),textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 24,color: Color(int.parse("#414141".substring(1, 7), radix: 16) + 0xFF000000)),),
                        child: GestureDetector
                        (
                          onTap: () {
                          setState(() {
                            try {
                              
                           
                            if(  allans[3].toString() == ans)
                              {
                                Btns.Globals.SetBtn4(_tick);
                                Btns.Globals.SetBtnNext(_yello);
                                correctans = true;
                                if(!nah)
                                    {
                                      Globals.AddRightAns();
                                    }
                              }
                              else
                              {
                                nah = true;
                                Btns.Globals.SetBtn4(_cross);
                              }
                               } catch (e) {
                            }
                           });
                            },
                            //  svg as btn
                             
                             child: Container(
                               color: Color(int.parse("#f5f5f5".substring(1, 7), radix: 16) + 0xFF000000),

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
                                 
                                child:  Text(allans[3].toString(),textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 22,color: Color(int.parse("#414141".substring(1, 7), radix: 16) + 0xFF000000)),),
                               )
                             )
                             ),
                        ),
                        
                        //-------
                   //     )
                       ),
                       
                        Spacer()
                        
                     ],
                   ),

                  Spacer(flex: 20),
                  Spacer(flex: 95),


                //next btn
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
                                //  Globals.AddRightAns();
                                  nah = false;
                                  correctans = false;
                                  Btns.Globals.ResetBtns();
                                 // q = null;
                                  
                                  Navigator.pop(context);
                                //maint.Route().NMisson(context);
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
            ),
       

      //  ),
       
           // ,),
        //          Expanded(
        //   flex: 2, // 20%
        //   child: Container(color: Colors.red),
        // ),
       
              ]
       
            ),
     );
  }

}