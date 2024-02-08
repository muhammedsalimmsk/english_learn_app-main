import 'package:english_learn_app/constant.dart';
import 'package:flutter/material.dart';

class ComingSoonPage extends StatelessWidget {
  const ComingSoonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: primry,
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        title:const Text("Coming Soon",style: TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.bold),),
      ),
      body: Center(
        child: Text("Coming soon...",style: TextStyle(color: Colors.black,fontSize:50,fontWeight: FontWeight.bold),),
      ),
    );
  }
}
