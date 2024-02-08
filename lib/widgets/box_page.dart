import 'package:english_learn_app/models/Heading.dart';
import 'package:english_learn_app/pages/grammar/grammar_title.dart';
import 'package:english_learn_app/widgets/HeaderPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class BoxPage extends StatelessWidget {
  const BoxPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
          itemCount: heading.length,
          itemBuilder: (context,index){
            print(index);
            return HeaderPage(
                buttonText: heading[index],
                iconAssetPath:headingIcons[index],
                routePage:routeName[index]
            );
            }
        )
      );
  }
}
