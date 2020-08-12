import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;

import 'dart:convert';

import 'package:flutter/material.dart';
import "dart:math";
import 'start_page.dart';


class Globals{
  static String currSubSelected;
  // static var sackBTN_b1 = "";
  // static var sackBTN_b2 = "";
  // static var sackBTN_b3 = "";
  // String sackBTN_b4 = "";
  //Selected options
  //String selectedTopic;
  static int numTopic;

  static int numQuestion =0;
  static int rightAns =0;
  //topic names
 static String _topic1Name = ""; 
 static String _topic2Name = "";
  static String _topic3Name = "";
  static String _topic4Name = "";
  //sub topic names (max 2 options) + subtopic options (max 8)
 static var _subTopic1Name1;
 static var _subTopic1Name2;
  static var _subTopic1Name3;
  static var _subTopic1Name4;
  static var _subTopic1Name5;
  static var _subTopic1Name6;
  static var _subTopic1Name7;
  static var _subTopic1Name8;
  static var _subTopic1Name9;
  static var _subTopic1Name10;

 static var _subTopic1_1Options= [];
 static var _subTopic1_2Options= [];
  static var _subTopic1_3Options= [];
 static var _subTopic1_4Options= [];
 static var _subTopic1_5Options= [];
 static var _subTopic1_6Options= [];
 static var _subTopic1_7Options= [];
 static var _subTopic1_8Options= [];
 static var _subTopic1_9Options= [];
 static var _subTopic1_10Options= [];

 static var _subTopic2Name1;
 static var _subTopic2Name2;
   static var _subTopic2Name3;
  static var _subTopic2Name4;
  static var _subTopic2Name5;
  static var _subTopic2Name6;
  static var _subTopic2Name7;
  static var _subTopic2Name8;
  static var _subTopic2Name9;
  static var _subTopic2Name10;
 static var _subTopic2_1Options= [];
 static var _subTopic2_2Options= [];
  static var _subTopic2_3Options= [];
 static var _subTopic2_4Options= [];
 static var _subTopic2_5Options= [];
 static var _subTopic2_6Options= [];
 static var _subTopic2_7Options= [];
 static var _subTopic2_8Options= [];
 static var _subTopic2_9Options= [];
 static var _subTopic2_10Options= [];

 static var _subTopic3Name1;
 static var _subTopic3Name2;
   static var _subTopic3Name3;
  static var _subTopic3Name4;
  static var _subTopic3Name5;
  static var _subTopic3Name6;
  static var _subTopic3Name7;
  static var _subTopic3Name8;
  static var _subTopic3Name9;
  static var _subTopic3Name10;
 static var _subTopic3_1Options= [];
 static var _subTopic3_2Options= [];
  static var _subTopic3_3Options= [];
 static var _subTopic3_4Options= [];
 static var _subTopic3_5Options= [];
 static var _subTopic3_6Options= [];
 static var _subTopic3_7Options= [];
 static var _subTopic3_8Options= [];
 static var _subTopic3_9Options= [];
 static var _subTopic3_10Options= [];

 static var _subTopic4Name1;
 static var _subTopic4Name2;
   static var _subTopic4Name3;
  static var _subTopic4Name4;
  static var _subTopic4Name5;
  static var _subTopic4Name6;
  static var _subTopic4Name7;
  static var _subTopic4Name8;
  static var _subTopic4Name9;
  static var _subTopic4Name10;
 static var _subTopic4_1Options= [];
 static var _subTopic4_2Options= [];
 static var _subTopic4_3Options= [];
 static var _subTopic4_4Options= [];
 static var _subTopic4_5Options= [];
 static var _subTopic4_6Options= [];
 static var _subTopic4_7Options= [];
 static var _subTopic4_8Options= [];
 static var _subTopic4_9Options= [];
 static var _subTopic4_10Options= [];
 /////////////////////////////
static String _topicName = "";
  //sub topic names (max 10 options) + subtopic options (max 8)
static var _subTopicName1;
static var _subTopicName3;
static var _subTopicName2;
static var _subTopicName4;
static var _subTopicName5;
static var _subTopicName6;
static var _subTopicName7;
static var _subTopicName8;
static var _subTopicName9;
static var _subTopicName10;
static var _subOptions1= [];
static var _subOptions2= [];
static var _subOptions3= [];
static var _subOptions4= [];
static var _subOptions5= [];
static var _subOptions6= [];
static var _subOptions7= [];
static var _subOptions8= [];
static var _subOptions9= [];
static var _subOptions10= [];


//topics len
static int lenTopic1 =0;
static int lenTopic2 =0;
static int lenTopic3 =0;
static int lenTopic4 =0;
static int _lenCurrTopic =0;
//if alredy load bool

static bool topic1Load = false;
static bool topic2Load = false;
static bool topic3Load = false;
static bool topic4Load = false;

static var _subTopicsNames = [];

  // static Future<void> GetData(String type)
  // async {
  //    var jsonData = json.decode(await DefaultAssetBundle.of(this).loadString("assets/DATA.json"));
  // }

 // static Future<String> loadAsset() async {
    static dynamic loadAsset() async 
    {
   var futureEle = await rootBundle.loadString('assets/AllTopics.json');
   var rawData = await json.decode(futureEle);
   return rawData;
  
    }

    static dynamic loadlemida() async 
    {
   var futureEle = await rootBundle.loadString('assets/LilmodTest.json');
   var rawData = await json.decode(futureEle);
   return rawData;
  
    }
    //set topic names
    // static SetTopicNames(String name)
    // {

    // }
    static SetTopic1Name(String name)
    {
      _topic1Name = name;
    }
    static SetTopic2Name(String name)
    {
       _topic2Name = name;
    }
    static SetTopic3Name(String name)
    {
       _topic3Name = name;
    }
    static SetTopic4Name(String name)
    {
       _topic4Name = name;
    }                                   
    //get topic names
    static String GetTopic1Name()
    {
      return _topic1Name;
    }
    static String GetTopic2Name()
    {
      return _topic2Name;
    }
    static String GetTopic3Name()
    {
      return _topic3Name;
    }
    static String GetTopic4Name()
    {
      return _topic4Name;
    } 

     //set subtopic names
    static SetSubTopic1Name1(String name)
    {
      _subTopic1Name1 = name;
    }
    static SetSubTopic1Name2(String name)
    {
      _subTopic1Name2 = name;
    }
    static SetSubTopic1Name3(String name)
    {
      _subTopic1Name3 = name;
    }
    static SetSubTopic1Name4(String name)
    {
      _subTopic1Name4 = name;
    }
    static SetSubTopic1Name5(String name)
    {
      _subTopic1Name5 = name;
    }
    static SetSubTopic1Name6(String name)
    {
      _subTopic1Name6 = name;
    }
    static SetSubTopic1Name7(String name)
    {
      _subTopic1Name7 = name;
    }
    static SetSubTopic1Name8(String name)
    {
      _subTopic1Name8 = name;
    }
    static SetSubTopic1Name9(String name)
    {
      _subTopic1Name9 = name;
    }
    static SetSubTopic1Name10(String name)
    {
      _subTopic1Name10 = name;
    }

    //2
    static SetSubTopic2Name1(String name)
    {
       _subTopic2Name1 = name;
    }
    static SetSubTopic2Name2(String name)
    {
       _subTopic2Name2 = name;
    }
    static SetSubTopic2Name3(String name)
    {
      _subTopic2Name3 = name;
    }
    static SetSubTopic2Name4(String name)
    {
      _subTopic2Name4 = name;
    }
    static SetSubTopic2Name5(String name)
    {
      _subTopic2Name5 = name;
    }
    static SetSubTopic2Name6(String name)
    {
      _subTopic2Name6 = name;
    }
    static SetSubTopic2Name7(String name)
    {
      _subTopic2Name7 = name;
    }
    static SetSubTopic2Name8(String name)
    {
      _subTopic2Name8 = name;
    }
    static SetSubTopic2Name9(String name)
    {
      _subTopic2Name9 = name;
    }
    static SetSubTopic2Name10(String name)
    {
      _subTopic2Name10 = name;
    }
  //3
    static SetSubTopic3Name1(String  name)
    {
       _subTopic3Name1 = name;
    }
    static SetSubTopic3Name2(String  name)
    {
       _subTopic3Name2 = name;
    }
    static SetSubTopic3Name3(String name)
    {
      _subTopic3Name3 = name;
    }
    static SetSubTopic3Name4(String name)
    {
      _subTopic3Name4 = name;
    }
    static SetSubTopic3Name5(String name)
    {
      _subTopic3Name5 = name;
    }
    static SetSubTopic3Name6(String name)
    {
      _subTopic3Name6 = name;
    }
    static SetSubTopic3Name7(String name)
    {
      _subTopic3Name7 = name;
    }
    static SetSubTopic3Name8(String name)
    {
      _subTopic3Name8 = name;
    }
    static SetSubTopic3Name9(String name)
    {
      _subTopic3Name9 = name;
    }
    static SetSubTopic3Name10(String name)
    {
      _subTopic3Name10 = name;
    }
//4
    static SetSubTopic4Name1(String  name)
    {
       _subTopic4Name1 = name;
    }
    static SetSubTopic4Name2(String  name)
    {
       _subTopic4Name2 = name;
    } 
    static SetSubTopic4Name3(String name)
    {
      _subTopic4Name3 = name;
    }
    static SetSubTopic4Name4(String name)
    {
      _subTopic4Name4 = name;
    }
    static SetSubTopic4Name5(String name)
    {
      _subTopic4Name5 = name;
    }
    static SetSubTopic4Name6(String name)
    {
      _subTopic4Name6 = name;
    }
    static SetSubTopic4Name7(String name)
    {
      _subTopic4Name7 = name;
    }
    static SetSubTopic4Name8(String name)
    {
      _subTopic4Name8 = name;
    }
    static SetSubTopic4Name9(String name)
    {
      _subTopic4Name9 = name;
    }
    static SetSubTopic4Name10(String name)
    {
      _subTopic1Name10 = name;
    }                                  
    //get subtopic names
    static String GetSubTopic1Name1()
    {
      return _subTopic1Name1;
    }
    static String GetSubTopic1Name2()
    {
      return _subTopic1Name2;
    }
    static String GetSubTopic1Name3()
    {
      return _subTopic1Name3;
    }
    static String GetSubTopic1Name4()
    {
      return _subTopic1Name4;
    }
    static String GetSubTopic1Name5()
    {
      return _subTopic1Name5;
    }
    static String GetSubTopic1Name6()
    {
      return _subTopic1Name6;
    }
    static String GetSubTopic1Name7()
    {
      return _subTopic1Name7;
    }
    static String GetSubTopic1Name8()
    {
      return _subTopic1Name8;
    }
    static String GetSubTopic1Name9()
    {
      return _subTopic1Name9;
    }
    static String GetSubTopic1Name10()
    {
      return _subTopic1Name10;
    }
    //2
    static String GetSubTopic2Name1()
    {
      return _subTopic2Name1;
    }
   static  String GetSubTopic2Name2()
    {
      return _subTopic2Name2;
    }
  
    static String GetsubTopic2Name3()
    {
      return _subTopic2Name3;
    }
    static String GetsubTopic2Name4()
    {
      return _subTopic2Name4;
    }
    static String GetsubTopic2Name5()
    {
      return _subTopic2Name5;
    }
    static String GetsubTopic2Name6()
    {
      return _subTopic2Name6;
    }
    static String GetsubTopic2Name7()
    {
      return _subTopic2Name7;
    }
    static String GetsubTopic2Name8()
    {
      return _subTopic2Name8;
    }
    static String GetsubTopic2Name9()
    {
      return _subTopic2Name9;
    }
    static String GetsubTopic2Name10()
    {
      return _subTopic2Name10;
    }
//3
    static String GetSubTopic3Name1()
    {
      return _subTopic3Name1;
    }
   static  String GetSubTopic3Name2()
    {
      return _subTopic3Name2;
    }
        static String GetsubTopic3Name1()
    {
      return _subTopic3Name1;
    }
    
    static String GetsubTopic3Name3()
    {
      return _subTopic3Name3;
    }
    static String GetsubTopic3Name4()
    {
      return _subTopic3Name4;
    }
    static String GetsubTopic3Name5()
    {
      return _subTopic3Name5;
    }
    static String GetsubTopic3Name6()
    {
      return _subTopic3Name6;
    }
    static String GetsubTopic3Name7()
    {
      return _subTopic3Name7;
    }
    static String GetsubTopic3Name8()
    {
      return _subTopic3Name8;
    }
    static String GetsubTopic3Name9()
    {
      return _subTopic3Name9;
    }
    static String GetsubTopic3Name10()
    {
      return _subTopic3Name10;
    }
//4
   static  String GetSubTopic4Name1()
    {
      return _subTopic4Name1;
    } 
   static  String GetSubTopic4Name2()
    {
      return _subTopic4Name2;
    }
        static String GetsubTopic4Name1()
    {
      return _subTopic4Name1;
    }
    static String GetsubTopic4Name3()
    {
      return _subTopic4Name3;
    }
    static String GetsubTopic4Name4()
    {
      return _subTopic4Name4;
    }
    static String GetsubTopic4Name5()
    {
      return _subTopic4Name5;
    }
    static String GetsubTopic4Name6()
    {
      return _subTopic4Name6;
    }
    static String GetsubTopic4Name7()
    {
      return _subTopic4Name7;
    }
    static String GetsubTopic4Name8()
    {
      return _subTopic4Name8;
    }
    static String GetsubTopic4Name9()
    {
      return _subTopic4Name9;
    }
    static String GetsubTopic4Name10()
    {
      return _subTopic4Name10;
    }



      //set subtopic options
    static SetSubTopic1_1Options(List<dynamic> options)
    {
      _subTopic1_1Options = options;
    }
    static SetSubTopic1_2Options(List<dynamic> options)
    {
      _subTopic1_2Options = options;
    }
    static SetSubTopic1_3Options(List<dynamic> options)
    {
      _subTopic1_3Options = options;
    }
    static SetSubTopic1_4Options(List<dynamic> options)
    {
      _subTopic1_4Options = options;
    }
    static SetSubTopic1_5Options(List<dynamic> options)
    {
      _subTopic1_5Options = options;
    }
    static SetSubTopic1_6Options(List<dynamic> options)
    {
      _subTopic1_6Options = options;
    }
    static SetSubTopic1_7Options(List<dynamic> options)
    {
      _subTopic1_7Options = options;
    }
    static SetSubTopic1_8Options(List<dynamic> options)
    {
      _subTopic1_8Options = options;
    }
    static SetSubTopic1_9Options(List<dynamic> options)
    {
      _subTopic1_9Options = options;
    }
    static SetSubTopic1_10Options(List<dynamic> options)
    {
      _subTopic1_10Options = options;
    }
////2
    static SetSubTopic2_1Options(List<dynamic>  options)
    {
       _subTopic2_1Options = options;
    }
    static SetSubTopic2_2Options(List<dynamic>  options)
    {
      _subTopic2_2Options = options;
    }
        static SetSubTopic2_3Options(List<dynamic> options)
    {
      _subTopic2_3Options = options;
    }
    static SetSubTopic2_4Options(List<dynamic> options)
    {
      _subTopic2_4Options = options;
    }
    static SetSubTopic2_5Options(List<dynamic> options)
    {
      _subTopic2_5Options = options;
    }
    static SetSubTopic2_6Options(List<dynamic> options)
    {
      _subTopic2_6Options = options;
    }
    static SetSubTopic2_7Options(List<dynamic> options)
    {
      _subTopic2_7Options = options;
    }
    static SetSubTopic2_8Options(List<dynamic> options)
    {
      _subTopic2_8Options = options;
    }
    static SetSubTopic2_9Options(List<dynamic> options)
    {
      _subTopic2_9Options = options;
    }
    static SetSubTopic2_10Options(List<dynamic> options)
    {
      _subTopic2_10Options = options;
    }
///3
    static SetSubTopic3_1Options(List<dynamic>  options)
    {
       _subTopic3_1Options = options;
    }
    static SetSubTopic3_2Options(List<dynamic>  options)
    {
       _subTopic3_2Options = options;
    }
        static SetSubTopic3_3Options(List<dynamic> options)
    {
      _subTopic3_3Options = options;
    }
    static SetSubTopic3_4Options(List<dynamic> options)
    {
      _subTopic3_4Options = options;
    }
    static SetSubTopic3_5Options(List<dynamic> options)
    {
      _subTopic3_5Options = options;
    }
    static SetSubTopic3_6Options(List<dynamic> options)
    {
      _subTopic3_6Options = options;
    }
    static SetSubTopic3_7Options(List<dynamic> options)
    {
      _subTopic3_7Options = options;
    }
    static SetSubTopic3_8Options(List<dynamic> options)
    {
      _subTopic3_8Options = options;
    }
    static SetSubTopic3_9Options(List<dynamic> options)
    {
      _subTopic3_9Options = options;
    }
    static SetSubTopic3_10Options(List<dynamic> options)
    {
      _subTopic3_10Options = options;
    }
//4
    static SetSubTopic4_1Options(List<dynamic>  options)
    {
       _subTopic4_1Options = options;
    }  
    static SetSubTopic4_2Options(List<dynamic>  options)
    {
       _subTopic4_2Options = options;
    } 
        static SetSubTopic4_3Options(List<dynamic> options)
    {
      _subTopic4_3Options = options;
    }
    static SetSubTopic4_4Options(List<dynamic> options)
    {
      _subTopic4_4Options = options;
    }
    static SetSubTopic4_5Options(List<dynamic> options)
    {
      _subTopic4_5Options = options;
    }
    static SetSubTopic4_6Options(List<dynamic> options)
    {
      _subTopic4_6Options = options;
    }
    static SetSubTopic4_7Options(List<dynamic> options)
    {
      _subTopic4_7Options = options;
    }
    static SetSubTopic4_8Options(List<dynamic> options)
    {
      _subTopic4_8Options = options;
    }
    static SetSubTopic4_9Options(List<dynamic> options)
    {
      _subTopic4_9Options = options;
    }
    static SetSubTopic4_10Options(List<dynamic> options)
    {
      _subTopic4_10Options = options;
    }                                 
    //get subtopic names
    static  List<dynamic> GetSubTopic1_1Options()
    {
      return _subTopic1_1Options;
    }
   static  List<dynamic> GetSubTopic1_2Options()
    {
      return _subTopic1_2Options;
    }
     static  List<dynamic> GetSubTopic1_3Options()
    {
      return _subTopic1_3Options;
    }
    static  List<dynamic> GetSubTopic1_4Options()
    {
      return _subTopic1_4Options;
    }
    static  List<dynamic> GetSubTopic1_5Options()
    {
      return _subTopic1_5Options;
    }
    static  List<dynamic> GetSubTopic1_6Options()
    {
      return _subTopic1_6Options;
    }
    static  List<dynamic> GetSubTopic1_7Options()
    {
      return _subTopic1_7Options;
    }
    static  List<dynamic> GetSubTopic1_8Options()
    {
      return _subTopic1_8Options;
    }
    static  List<dynamic> GetSubTopic1_9Options()
    {
      return _subTopic1_9Options;
    }
    static  List<dynamic> GetSubTopic1_10Options()
    {
      return _subTopic1_10Options;
    }
    //2
   static  List<dynamic> GetSubTopic2_1Options()
    {
      return _subTopic2_1Options;
    }
   static   List<dynamic> GetSubTopic2_2Options()
    {
      return _subTopic2_2Options;
    }
      static  List<dynamic> GetSubTopic2_3Options()
    {
      return _subTopic2_3Options;
    }
    static  List<dynamic> GetSubTopic2_4Options()
    {
      return _subTopic2_4Options;
    }
    static  List<dynamic> GetSubTopic2_5Options()
    {
      return _subTopic2_5Options;
    }
    static  List<dynamic> GetSubTopic2_6Options()
    {
      return _subTopic2_6Options;
    }
    static  List<dynamic> GetSubTopic2_7Options()
    {
      return _subTopic2_7Options;
    }
    static  List<dynamic> GetSubTopic2_8Options()
    {
      return _subTopic2_8Options;
    }
    static  List<dynamic> GetSubTopic2_9Options()
    {
      return _subTopic2_9Options;
    }
    static  List<dynamic> GetSubTopic2_10Options()
    {
      return _subTopic2_10Options;
    }
    //////3
   static  List<dynamic> GetSubTopic3_1Options()
    {
      return _subTopic3_1Options;
    }
  static   List<dynamic> GetSubTopic3_2Options()
    {
      return _subTopic3_2Options;
    }
      static  List<dynamic> GetSubTopic3_3Options()
    {
      return _subTopic3_3Options;
    }
    static  List<dynamic> GetSubTopic3_4Options()
    {
      return _subTopic3_4Options;
    }
    static  List<dynamic> GetSubTopic3_5Options()
    {
      return _subTopic3_5Options;
    }
    static  List<dynamic> GetSubTopic3_6Options()
    {
      return _subTopic3_6Options;
    }
    static  List<dynamic> GetSubTopic3_7Options()
    {
      return _subTopic3_7Options;
    }
    static  List<dynamic> GetSubTopic3_8Options()
    {
      return _subTopic3_8Options;
    }
    static  List<dynamic> GetSubTopic3_9Options()
    {
      return _subTopic3_9Options;
    }
    static  List<dynamic> GetSubTopic3_10Options()
    {
      return _subTopic3_10Options;
    }
    ////4
   static  List<dynamic> GetSubTopic4_1Options()
    {
      return _subTopic4_1Options;
    }
 static    List<dynamic> GetSubTopic4_2Options()
    {
      return _subTopic4_2Options;
    }
      static  List<dynamic> GetSubTopic4_3Options()
    {
      return _subTopic4_3Options;
    }
    static  List<dynamic> GetSubTopic4_4Options()
    {
      return _subTopic4_4Options;
    }
    static  List<dynamic> GetSubTopic4_5Options()
    {
      return _subTopic4_5Options;
    }
    static  List<dynamic> GetSubTopic4_6Options()
    {
      return _subTopic4_6Options;
    }
    static  List<dynamic> GetSubTopic4_7Options()
    {
      return _subTopic4_7Options;
    }
    static  List<dynamic> GetSubTopic4_8Options()
    {
      return _subTopic4_8Options;
    }
    static  List<dynamic> GetSubTopic4_9Options()
    {
      return _subTopic4_9Options;
    }
    static  List<dynamic> GetSubTopic4_10Options()
    {
      return _subTopic4_10Options;
    }

    //set topicNUm
    static SetTopicNum(int number)
    {
      numTopic = number;
      SelectedChoice();
    }
    static int GetTopicNum()
    {
      return numTopic;
    }
    static Clean_()
    {
      //subs options
      _subOptions1 = [];
      _subOptions2 = [];
      _subOptions3 = [];
      _subOptions4= [];
      _subOptions5= [];
      _subOptions6= [];
      _subOptions7= [];
      _subOptions8= [];
      _subOptions9= [];
      _subOptions10= [];
      //topics name
      _subTopicName1 = null;
      _subTopicName2 = null;
      _subTopicName3 = null;
      _subTopicName4= null;
      _subTopicName5= null;
      _subTopicName6= null;
      _subTopicName7= null;
      _subTopicName8= null;
      _subTopicName9= null;
      _subTopicName10= null;
      //topic lens
      _lenCurrTopic =0;

      rightAns = 0;
      numQuestion = 0;
      // lenTopic1 = 0;
      // lenTopic2 = 0;
      // lenTopic3 = 0;
      // lenTopic4 = 0;
      //bool already load
      //topic1Load = false;
      //topic2Load = false;
      //topic3Load = false;
      //topic4Load = false;
      

    }
    /////
    static SelectedChoice()
  {
    switch (numTopic) 
          {
      case  1 :
            _topicName = GetTopic1Name();
              //sub topic names (max 2 options) + subtopic options (max 8)
              _lenCurrTopic = GetTopic1Len();
            _subTopicName1 = GetSubTopic1Name1();
            _subTopicName2 = GetSubTopic1Name2();
             _subTopicName3 = GetSubTopic1Name3();
             _subTopicName4 = GetSubTopic1Name4();
             _subTopicName5 = GetSubTopic1Name5();
             _subTopicName6 = GetSubTopic1Name6();
             _subTopicName7 = GetSubTopic1Name7();
             _subTopicName8 = GetSubTopic1Name8();
             _subTopicName9 = GetSubTopic1Name9();
             _subTopicName10 = GetSubTopic1Name10();

            _subOptions1= GetSubTopic1_1Options();
            _subOptions2=GetSubTopic1_2Options();
            _subOptions3 = GetSubTopic1_3Options();

            _subOptions4 = GetSubTopic1_4Options();
            _subOptions5 = GetSubTopic1_5Options();
            _subOptions6 = GetSubTopic1_6Options();
            _subOptions7 = GetSubTopic1_7Options();
            _subOptions8 = GetSubTopic1_8Options();
            _subOptions9 = GetSubTopic1_9Options();
            _subOptions10 = GetSubTopic1_10Options();
          break;
      case  2:
            _lenCurrTopic = GetTopic2Len();
            _topicName = GetTopic2Name();
              //sub topic names (max 2 options) + subtopic options (max 8)
            _subTopicName1 = GetSubTopic2Name1();
            _subTopicName2 = GetSubTopic2Name2();
             _subTopicName3 = GetsubTopic2Name3();
             _subTopicName4 = GetsubTopic2Name4();
             _subTopicName5 = GetsubTopic2Name5();
             _subTopicName6 = GetsubTopic2Name6();
             _subTopicName7 = GetsubTopic2Name7();
             _subTopicName8 = GetsubTopic2Name8();
             _subTopicName9 = GetsubTopic2Name9();
             _subTopicName10 = GetsubTopic2Name10();

            _subOptions1= GetSubTopic2_1Options();
            _subOptions2=GetSubTopic2_2Options();

            _subOptions3 = GetSubTopic2_3Options();

            _subOptions4 = GetSubTopic2_4Options();
            _subOptions5 = GetSubTopic2_5Options();
            _subOptions6 = GetSubTopic2_6Options();
            _subOptions7 = GetSubTopic2_7Options();
            _subOptions8 = GetSubTopic2_8Options();
            _subOptions9 = GetSubTopic2_9Options();
            _subOptions10 = GetSubTopic2_10Options();

        break;
        case 3:
              _lenCurrTopic = GetTopic3Len();
              _topicName = GetTopic3Name();
                //sub topic names (max 2 options) + subtopic options (max 8)
              _subTopicName1 = GetSubTopic3Name1();
              _subTopicName2 = GetSubTopic3Name2();
              _subOptions1= GetSubTopic3_1Options();
              _subOptions2=GetSubTopic3_2Options();

              _subOptions3 = GetSubTopic3_3Options();

             _subTopicName3 = GetsubTopic3Name3();
             _subTopicName4 = GetsubTopic3Name4();
             _subTopicName5 = GetsubTopic3Name5();
             _subTopicName6 = GetsubTopic3Name6();
             _subTopicName7 = GetsubTopic3Name7();
             _subTopicName8 = GetsubTopic3Name8();
             _subTopicName9 = GetsubTopic3Name9();
             _subTopicName10 = GetsubTopic3Name10();

            _subOptions4 = GetSubTopic3_4Options();
            _subOptions5 = GetSubTopic3_5Options();
            _subOptions6 = GetSubTopic3_6Options();
            _subOptions7 = GetSubTopic3_7Options();
            _subOptions8 = GetSubTopic3_8Options();
            _subOptions9 = GetSubTopic3_9Options();
            _subOptions10 = GetSubTopic3_10Options();
          break;
          case 4:
              _lenCurrTopic = GetTopic4Len();
              _topicName = GetTopic4Name();
                //sub topic names (max 2 options) + subtopic options (max 8)
              _subTopicName1 = GetSubTopic4Name1();
              _subTopicName2 = GetSubTopic4Name2();
              _subOptions1= GetSubTopic4_1Options();
              _subOptions2=GetSubTopic4_2Options();

              _subOptions3 = GetSubTopic4_3Options();

              _subTopicName3 = GetsubTopic4Name3();
             _subTopicName4 = GetsubTopic4Name4();
             _subTopicName5 = GetsubTopic4Name5();
             _subTopicName6 = GetsubTopic4Name6();
             _subTopicName7 = GetsubTopic4Name7();
             _subTopicName8 = GetsubTopic4Name8();
             _subTopicName9 = GetsubTopic4Name9();
             _subTopicName10 = GetsubTopic4Name10();

            _subOptions4 = GetSubTopic4_4Options();
            _subOptions5 = GetSubTopic4_5Options();
            _subOptions6 = GetSubTopic4_6Options();
            _subOptions7 = GetSubTopic4_7Options();
            _subOptions8 = GetSubTopic4_8Options();
            _subOptions9 = GetSubTopic4_9Options();
            _subOptions10 = GetSubTopic4_10Options();
          break;
        }
  }
  static String GetcurrTopicName()
  {
    return _topicName;
  }
  static String GetcurrSubTopicName1()
  {
    return _subTopicName1;
  }
  static String GetcurrSubTopicName2()
  {
    return _subTopicName2;
  }
  static String GetcurrSubTopicName3()
  {
    return _subTopicName3;
  }
  static String GetcurrSubTopicName4()
  {
    return _subTopicName4;
  }
  static String GetcurrSubTopicName5()
  {
    return _subTopicName5;
  }
  static String GetcurrSubTopicName6()
  {
    return _subTopicName6;
  }
  static String GetcurrSubTopicName7()
  {
    return _subTopicName7;
  }
  static String GetcurrSubTopicName8()
  {
    return _subTopicName8;
  }
  static String GetcurrSubTopicName9()
  {
    return _subTopicName9;
  }
  static String GetcurrSubTopicName10()
  {
    return _subTopicName10;
  }
  static    List<dynamic> GetCurrSubTopic_1Options()
  {
    return _subOptions1;
  }
  static    List<dynamic> GetCurrSubTopic_2Options()
  {
    return _subOptions2;
  }
  static    List<dynamic> GetCurrSubTopic_3Options()
  {
    return _subOptions3;
  }
  static    List<dynamic> GetCurrSubTopic_4Options()
  {
    return _subOptions4;
  }
  static    List<dynamic> GetCurrSubTopic_5Options()
  {
    return _subOptions5;
  }
  static    List<dynamic> GetCurrSubTopic_6Options()
  {
    return _subOptions6;
  }
  static    List<dynamic> GetCurrSubTopic_7Options()
  {
    return _subOptions7;
  }
  static    List<dynamic> GetCurrSubTopic_8Options()
  {
    return _subOptions8;
  }
  static    List<dynamic> GetCurrSubTopic_9Options()
  {
    return _subOptions9;
  }
  static    List<dynamic> GetCurrSubTopic_10Options()
  {
    return _subOptions10;
  }

  //sub topic names (max 2 options) + subtopic options (max 8)
  static  SetCurrSubSelected(String str)
  {
     currSubSelected = str;
  }

  static String GetCurrSubSelected()
  {
    return currSubSelected;
  }

  static int GetTopic1Len()
  {
    return lenTopic1;
  }
  static int GetTopic2Len()
  {
    return lenTopic2;
  }
  static int GetTopic3Len()
  {
    return lenTopic3;
  }
  static int GetTopic4Len()
  {
    return lenTopic4;
  }
  //set
   static  SetTopic1Len()
  {
     lenTopic1 = lenTopic1 + 1;
  }
  static  SetTopic2Len()
  {
    lenTopic2 = lenTopic2 + 1;
  }
  static  SetTopic3Len()
  {
     lenTopic3 = lenTopic3 + 1;
  }
  static  SetTopic4Len()
  {
    lenTopic4 = lenTopic4 + 1;
  }
  static int Get_lenCurrTopic()
  {
    return _lenCurrTopic;
  }
  //bool load
  static bool GetTopic1Loadbool()
  {
    return topic1Load;
  }
  static SetTopic1Loadbool(bool b)
  {
    topic1Load = b;
  }
  static bool GetTopic2Loadbool()
  {
    return topic2Load;
  }
  static SetTopic2Loadbool(bool b)
  {
    topic2Load = b;
  }
  static bool GetTopic3Loadbool()
  {
    return topic3Load;
  }
  static SetTopic3Loadbool(bool b)
  {
    topic3Load = b;
  }
  static bool GetTopic4Loadbool()
  {
    return topic4Load;
  }
  static SetTopic4Loadbool(bool b)
  {
    topic4Load = b;
  }
  //nums
  static AddNumQuestion()
  {
    numQuestion = numQuestion + 1;
  }
  static int GetNumQuestion()
  {
    return numQuestion;
  }
  static CleanNumQuestion()
  {
     numQuestion = 0;
  }
  static AddRightAns()
  {
    rightAns = rightAns + 1;
  }
  static int GetRightAns()
  {
    return rightAns;
  }
  // static int numQuestion;
  // static int rightAns;



}