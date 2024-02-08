
import 'package:flutter/material.dart';

class GrammarList extends StatelessWidget {
  final String name;
  const GrammarList({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      /*  height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(blurRadius: 0.4, spreadRadius: 0.5),
        ],
      ) */
      child: Text(name),
    );
  }
}
