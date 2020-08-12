import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:q_app_new/EndPage.dart' as TheEnd;
//import 'assets/DATA.json' as jsonfile;
import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;
import 'package:q_app_new/Globals.dart';

import "dart:math";

import 'LetsTirgul.dart' as startFun;
//import 'tirgul4.dart' as t4;

//var list = [];//,t2.SecondRoute(),t3.SecondRoute(),t4.SecondRoute()]; t1.SecondRoute()
   var q;
   var ans;
   var allans;

class Route extends StatelessWidget {
 
  //static var q;
  //static var ans;
  //static var allans;
  
 // var list = [];
  @override
  Widget build(BuildContext context) {
        // final _random = new Random();
        // var element = list[_random.nextInt(list.length)];
        // list.removeWhere((item) => item == element);
        // print(list);
  }
    void NMisson(BuildContext ctx) async//, var el)
   {
       var jsonData = json.decode(await DefaultAssetBundle.of(ctx).loadString("assets/DATA.json"));
      // print(jsonData['tironut_questions']);
      // for(var a in jsonData['tironut_questions'])
       for(var a in jsonData[Globals.currSubSelected + "_questions"])
       {
         q = a['question'];
         ans = a['answer'];
         allans = a['answers'];
         Globals.AddNumQuestion();
        await Navigator.push(ctx,MaterialPageRoute(builder: (context) => startFun.SecondRoute() ), ); 
         print(q);
         print(ans);
         print(allans);
       }
       Navigator.push(ctx,MaterialPageRoute(builder: (context) => TheEnd.SecondRoute() ),);
       q = null;
       ans = null;
       allans = null;
    }

      void LoadJsonData()
   {
      var a = loadAsset();
   }
   Future<String> loadAsset() async
    {
      return await rootBundle.loadString('assets/DATA.json');
    }
}