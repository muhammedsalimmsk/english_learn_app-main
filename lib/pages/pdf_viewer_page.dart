import 'package:english_learn_app/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show ByteData, rootBundle;
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';


class PDFViewer extends StatelessWidget {
  final String pdfAssetPath;
  final String title;

  const PDFViewer({super.key, required this.pdfAssetPath,required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primry,
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        title: Text(title,
        style: const TextStyle(
        color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),),
      ),
      body: SfPdfViewer.asset(
          pdfAssetPath,
      initialZoomLevel: 1,
      maxZoomLevel: 3,
      canShowScrollStatus: true,

      canShowScrollHead: true,),
    );
  }
}