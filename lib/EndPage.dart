import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:q_app_new/main.dart' as _main;
import 'start_page.dart' as start_page;
import 'package:q_app_new/options_choose.dart' as letsfun;
import 'Globals.dart' as globals;
//pgs

const logo = "assets/donepic.PNG";

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   
      return Scaffold(

      body: Stack(
        
        children: <Widget>[
          Container(
            
              decoration: BoxDecoration(image: DecorationImage(
                image: AssetImage('lib/Start_page_need/Start_background.png'),fit: BoxFit.fill)),
                
            ),
            new Container(
                   child: Column(
                    children: <Widget>[
                      
                      Expanded(
                      
                        child: Align(
                        alignment: Alignment.center,
                        
                        // child: Text('רמד טי"ל: רס"ן מיגל \n תכנות: טוראי תומי פ \n עיצוב גרפי: דור',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 22),textAlign: TextAlign.right,overflow: TextOverflow.ellipsis, maxLines: 5,)
                      //child: Image.asset(logo,height: 300,width: 300,),
                      child: GestureDetector
                        (
                          onTap: () {
                           //  Navigator.push(context,MaterialPageRoute(builder: (context) => _main.MyHomePage()));
                           //jsondata.Globals.Clean_();
                           globals.Globals.Clean_();
                             Navigator.push(context,MaterialPageRoute(builder: (context) => start_page.SecondRoute())); //letsfun.Routes()));
                            },
                            child:  Stack(
                              children: <Widget>[
                              Image.asset(logo,height: 300,width: 300,), 
                              ]
                              
                            )
                            ,

                        ),
                        
                        )
                      ),
                      //add Text to show x / y
                                Align(
                                alignment: Alignment.bottomCenter,
                                 child: Text(globals.Globals.GetRightAns().toString() + " / " + globals.Globals.GetNumQuestion().toString(), style: TextStyle(fontSize: 25,fontWeight: FontWeight.w700,)), //ffc715
                                ),
                                 SizedBox(height: 10)
                    ],
                   )
                  ),
        ]
      )
      );
  }
}