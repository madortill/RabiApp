import 'package:flutter/material.dart';
import "start_page.dart" as start_page;
import "About.dart" as About_page;
import 'options_choose.dart' as letsfun;

import 'package:flutter_svg/flutter_svg.dart';

const white_logo = "lib/home_page_need/startlogo.png";//"lib/home_page_need/white_logo_q.svg";
const musagim_logo = "lib/home_page_need/startlogomusg.png";
const musagim_logo2 = "assets/startpagelogo.png";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var materialApp = MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            backgroundColor: Colors.lightGreen
          ),
           home: MyHomePage(),
        );
        return materialApp;
  }

}

class MyHomePage extends StatelessWidget {

//build home page
  Widget build(BuildContext ctx) {
    MaterialApp(
      debugShowCheckedModeBanner: false
       ); 
    return Scaffold(
      
        body: Stack(
          
          fit: StackFit.expand,
          
          children: <Widget>[
            
            Container(
              decoration: BoxDecoration(image: DecorationImage(
                image: AssetImage('lib/home_page_need/background.png'),fit: BoxFit.fill)),
            ),
            // new Column(
              
            //     children: <Widget>[
            //       Expanded(
            //       child: Align(
            //           alignment: Alignment.topCenter,
            //       child: SizedBox(height: 50,),
            //       )
            //       ),
            //     ],
            // ),
            SizedBox(height: 10,),
            new Column(
              
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 25,),
                Expanded(
                  
                  child: Container(
                    
                    child: Align(
                      
                      alignment: Alignment.topCenter,
                      // child: Text('Hello',style: new TextStyle(fontFamily: 'Alef-Bold',fontSize: 32)),
                      child: Image.asset(white_logo,height: 200,width: 200,),
                      
                    )

                  ),
                  
                  ),
                  SizedBox(height: 20,),
            Column(
                children: <Widget>[
                   Image.asset(musagim_logo2,height: 250,width: 250,),
         //          Center(child: Text("f")),
                ],
            ),
            Spacer(),
  

            new GestureDetector
                        (
                          onTap: () {
                                btnPressStart(ctx);
                            },//C:\projects\newApp\q_app_new\assets\toStart.png
                            child: Image.asset("assets/toStart.png")//, height: 100,width: 100)
                          //child: Container(child: ,),
                        ),
                        new SizedBox(height: 10,),


                /////btn for about
                // new FlatButton(key: null, onPressed: () =>  btnPressAbout(ctx), 
                // child: 
                //   Text(
                //     "אודות",
                //       style: new TextStyle(fontSize:27.0,
                //       color: const Color(0xFF000000),
                //       fontWeight: FontWeight.w400,
                //       fontFamily: "Alef"),
                //     )
                // ),

                new GestureDetector
                        (
                          onTap: () {
                                btnPressAbout(ctx);
                            },
                            child: Image.asset("assets/about.png")//,height: 30,width: 30)
                        )
              ]
            )



          ],
        )
    ,);
   }
   void btnPressStart(BuildContext ctx)
   {
     Navigator.push(ctx,MaterialPageRoute(builder: (context) => start_page.SecondRoute()),);
   }
   void btnPressAbout(BuildContext ctx)
   {
     Navigator.push(ctx,MaterialPageRoute(builder: (context) => About_page.AboutRoute()),);
   }
}

  //   return Stack(
  //       children: <Widget>
  //       [
  //         Image.asset(
  //           "lib/home_page_need/background.png",
  //           height: MediaQuery.of(ctx).size.height,
  //           width: MediaQuery.of(ctx).size.width,
  //           fit: BoxFit.cover,
  //         ),
  //         Scaffold(
  //           body: Center
  //           (
  //             // Image.asset
  //             // ("lib/home_page_need/background.png",height: 
  //             // MediaQuery.of(ctx).size.height,width: MediaQuery.of(ctx).size.width,
  //             // fit: BoxFit.cover,
  //             // ),
  //             child: FlatButton
  //             (
  //               onPressed: ()
  //               {
  //                 // Navigate to about page
  //                 Navigator.push(ctx,MaterialPageRoute(builder: (context) => start_page.SecondRoute()),);
  //               },
  //                 child: Text("גגכד",style: new TextStyle(fontFamily: 'Alef-Bold',fontSize: 32)),
  //               ),
  //             )
  //             )
  //       ],
  //     );