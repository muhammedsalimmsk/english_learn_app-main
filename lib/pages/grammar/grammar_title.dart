import 'package:english_learn_app/constant.dart';
import 'package:english_learn_app/models/Heading.dart';
import 'package:english_learn_app/models/content_class.dart';
import 'package:english_learn_app/pages/home_screen.dart';
import 'package:english_learn_app/pages/pdf_viewer_page.dart';
import 'package:english_learn_app/widgets/HeaderPage.dart';
import 'package:english_learn_app/widgets/SubHeading.dart';
import 'package:english_learn_app/widgets/box_page.dart';
import 'package:english_learn_app/widgets/grammar_list.dart';
import 'package:flutter/material.dart';

import '../../models/course_class.dart';


class GrammarTitle extends StatefulWidget {
  const GrammarTitle({
    super.key,
  });

  @override
  State<GrammarTitle> createState() => _GrammarTitleState();
}

final Content _content = Content();

class _GrammarTitleState extends State<GrammarTitle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor:primry,
        title: const Text(
          "Grammar",
          style: TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        centerTitle: true,
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3

        ),
        itemCount: subHeaders.length,
        itemBuilder: (BuildContext context, int index) {
          return SubHeaderWidget(
              buttonText: subHeaders[index],
              routePage: PDFViewer(pdfAssetPath: pdfPath[index],title: subHeaders[index],),
              image: "assets/images/books.png");
        },
      ),
    );
  }
}
