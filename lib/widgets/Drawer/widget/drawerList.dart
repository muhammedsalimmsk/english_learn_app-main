import 'package:flutter/material.dart';
class DrawerList extends StatelessWidget {
  const DrawerList({Key? key,required this.text,required this.icon,required this.onTap}) : super(key: key);
  final String text;
  final IconData icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding:const EdgeInsets.symmetric(horizontal: 20,vertical: 2),
      leading:Icon(icon,color: Colors.black,),
      title:Text(text,style:const TextStyle(fontSize: 21,fontWeight: FontWeight.bold,)),
      onTap: onTap,);
  }
}