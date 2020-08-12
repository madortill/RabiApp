import 'package:flutter/material.dart';
import "dart:math";


var _tick = 'lib/Tirgul_files/Tirgul/__tick.png'; //'lib/Tirgul_files/Tirgul/_tick.svg';
var _cross = 'lib/Tirgul_files/Tirgul/__cross.png';//'lib/Tirgul_files/Tirgul/_cross.svg';
var netural = 'lib/Tirgul_files/Tirgul/Select_btn_black.svg';


String sackBTN_b1 = netural;
String sackBTN_b2 = netural;
String sackBTN_b3 = netural;
String sackBTN_b4 = netural;
String _gray = 'lib/Tirgul_files/Tirgul/__graynext.png';//'lib/Tirgul_files/Tirgul/graynext.svg';
String _yello = 'lib/Tirgul_files/Tirgul/__next.png';//'lib/Tirgul_files/Tirgul/next.svg';
String nextBtn = _gray;

class Globals{
  // static var sackBTN_b1 = "";
  // static var sackBTN_b2 = "";
  // static var sackBTN_b3 = "";
  // String sackBTN_b4 = "";
  static void SetBtnNext(String type)
  {
      nextBtn = type;
  }
 
  static void ResetBtns()
  {
      sackBTN_b1 = netural;
      sackBTN_b2 = netural;
      sackBTN_b3 = netural;
      sackBTN_b4 = netural;
      nextBtn = _gray;
  }
  static void SetBtn1(String type)
  {
      sackBTN_b1 = type;
  }
  static void SetBtn2(String type)
  {
    sackBTN_b2 = type;
  }
  static void SetBtn3(String type)
  {
    sackBTN_b3 = type;
  }
  static void SetBtn4(String type)
  {
    sackBTN_b4 = type;
  }
  static String GetBtn1()
  {
    return sackBTN_b1;
  }
 static  String GetBtn2()
  {
    return sackBTN_b2;
  }
  static String GetBtn3()
  {
    return sackBTN_b3;
  }
  static String GetBtn4()
  {
    return sackBTN_b4;
  }

}