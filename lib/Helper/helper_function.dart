import 'package:flutter/material.dart';

void nextScreen(context,page){

  Navigator.push(context, MaterialPageRoute(builder: (context) => page));
}
void nextScreenPop(context,page){
  Navigator.pop(context,MaterialPageRoute(builder: (context)=>page));
}
void nextScreenpoppush(context,page){
  Navigator.popAndPushNamed(context, page);
}

void nextScreenReplace(context,page){
  Navigator.pushReplacement(
      context, MaterialPageRoute(builder: (context) => page));
}