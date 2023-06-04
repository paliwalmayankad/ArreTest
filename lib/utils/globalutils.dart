import 'package:flutter/material.dart';

screenHeight(context){
  return MediaQuery.of(context).size.height;
}
screenWidth(context){
  return MediaQuery.of(context).size.width;
}
statusBarHeight(context){
  return MediaQuery.of(context).viewPadding.top;
}