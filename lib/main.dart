import 'package:english_learn_app/constant.dart';
import 'package:english_learn_app/pages/grammar/grammar_title.dart';
import 'package:english_learn_app/pages/home_screen.dart';
import 'package:english_learn_app/widgets/grammar_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xFFFC7D05),
        textTheme: TextTheme(
          bodyText2: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      home:const Home(),
    );
  }
}
