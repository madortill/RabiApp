import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'aboutBack.dart';

const miflogo = "lib/About_page_need/mifkada.png";
const miflogo2 = "lib/About_page_need/Mifkada2.png";
const putlogo = "assets/putpic.png";
const logotil = "lib/About_page_need/tilLogo.png";
const logo = "assets/lomdinwithlogo.png";
const logo2 = "lib/About_page_need/aboutlogo.png";

final String backBTN = 'lib/About_page_need/back_btn_about.svg';
class AboutRoute extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
       MaterialApp(
      debugShowCheckedModeBanner: false
       );
       
          // debugShowCheckedModeBanner: false;
          return Scaffold(
            
            backgroundColor: Color(int.parse("#ffffff".substring(1, 7), radix: 16) + 0xFF000000),
            body: Stack(
              
                    fit: StackFit.expand,
                   
                    children: <Widget>
                    [
                      // Container(
                      //   decoration: BoxDecoration(image: DecorationImage(
                      //     image: AssetImage('lib/About_page_need/background.png'),fit: BoxFit.fill)),
                      // ),
                      SizedBox(height: 20,),
                            Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                                          children: <Widget>[
                                            Expanded(
                                              
                                            child: Align(
                                              alignment: Alignment.topRight,
                                              child:
                                              
                                            GestureDetector(
                                              
                                              onTap: () {
                                                Navigator.pop(context);
                                                },
                                                
                                                //  svg as btn
                                                    child: Container(
                                                      child: Align(
                                                      
                                                        alignment: Alignment.topRight,
                                                          child: AboutBackBTN(
                                                            bbtn: Column()
                                                          )
                                                      )
                                                        ),
                                                ),
                                            ),
                                            ),
                                          
                                          ]
                        ),
                        //SizedBox(height: 5,),
                        new Row(
                          children: <Widget>[
                            Expanded(
                              
                              child: Align(
                              alignment: Alignment.topCenter,
                        child: Image.asset(logo,height: 300,width: 300,),
                              )
                              ),
                          ],
                        ),
                        SizedBox(height: 20,),
                        new Column(
                        
                          children: <Widget>
                          [
                              
                            Expanded(
                            
                              child: Align(
                              
                              alignment: Alignment.centerRight,
                            
                              child: Container(
                              //  color: Colors.green,
                                height: MediaQuery.of(context).size.height/3 + 10,
                                padding: new EdgeInsets.all(15),
                                child: Column(children: <Widget>[
                                  
                                  SizedBox(height: 20),
                                  
                                     Text(' רמד טי"ל: רס"ן מיגל ליויתן \n תכנות: טוראי תומי פוליאקוב \n עיצוב גרפי:רב"ט דור שגיב',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 22),textAlign: TextAlign.right,overflow: TextOverflow.ellipsis, maxLines: 5,),
                                    SizedBox(height: 10),
                                    
                                    // GestureDetector(
                                    //   onTap: ()
                                    //     {
                                    //       print("object");
                                    //       Clipboard.setData(new ClipboardData(text: "ABC")); //whatsapp link
                                    //    //   Scaffold.of(context).showSnackBar(SnackBar(content: Text("c")));
                                          
                                          
                                    //     },
                                    //     child: Text("לחץ להעתק קישור לקבוצת וואטצאפ ",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 18),textAlign: TextAlign.right,overflow: TextOverflow.ellipsis,),

                                    // ),
                                ],) 
                              //  Text(' רמד טי"ל: רס"ן מיגל ליויתן \n תכנות: טוראי תומי פוליאקוב \n עיצוב גרפי:רב"ט דור שגיב',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 22),textAlign: TextAlign.right,overflow: TextOverflow.ellipsis, maxLines: 5,),
                                

                                ),//Text(' רמד טי"ל: רס"ן מיגל ליויתן \n תכנות: טוראי תומי פוליאקוב \n עיצוב גרפי:רב"ט דור שגיב',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 22),textAlign: TextAlign.right,overflow: TextOverflow.ellipsis, maxLines: 5,)
                              
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

                        ),
                      //   SizedBox(height: 20,),
                      //  new Column(
                      //     children: <Widget>[
                            
                      //      Align(alignment: Alignment.centerRight, child: Container(padding: new EdgeInsets.all(20), child: Text('HI',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 22),textAlign: TextAlign.right,overflow: TextOverflow.ellipsis, maxLines: 5,),),), 
                      //     ],
                      //   ),
                      // Spacer(),
                        new Row(
                          children: <Widget>[
                            Expanded(
                              child: Align(
                              alignment: Alignment.bottomRight,
                              child: Image.asset(logotil,height: 130,width: 130,),
                        
                              )
                              ),
                
                          ],
                        ),


                  new Row(
                    children: <Widget>[
                       Expanded(
                         child: Align(
                        alignment: Alignment.bottomCenter,
                   child: Image.asset(putlogo,height: 145,width: 100,),
                         )
                       )
                    ]
                  ),




                  new Row(
                    children: <Widget>[
                      
                       Expanded(
                         
                         child: Align(
                           
                        alignment: Alignment.bottomLeft,
                        
                        child: Container(
                           padding: EdgeInsets.all(20), 
                          child:  Image.asset(miflogo2,height: 100,width: 100,),
                        )
                         )
                       )
                    ]
                  )
                   
                  //        )
                  //       ),
                  //       // SizedBox(width: 10,),
                  //       // Text("data",)
                  //     //  Image.asset(logotil,height: 150,width: 300,),
                  //   ],
                  // ),








                    ] 
                  )
          );
          
            //    ]
            // ),
            // );
  }
}
void btnBackPress(BuildContext context)
{
  Navigator.pop(context);
}
void waClick()
async {
  var whats = "";
  Clipboard.setData(new ClipboardData(text: "Text"));
  //await canLunch(whats) ? launch(whats) : print("Error");
}
