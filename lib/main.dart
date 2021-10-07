import 'package:codetech/view/AcademicCalender.dart';
import 'package:codetech/view/AcademicContactView.dart';
import 'package:codetech/view/Home.dart';
import 'package:codetech/view/Settings.dart';
import 'package:codetech/view/Splash.dart';
import 'package:codetech/view/clubs.dart';
import 'package:codetech/view/maps.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';


void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.white,
    statusBarIconBrightness: Brightness.dark,));

  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    home: Clubs(),
  ));
}





