import 'dart:io';

import 'package:english_learn_app/pages/ComingSoon.dart';
import 'package:english_learn_app/pages/grammar/grammar_title.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

const heading=[
  "Grammar",
  "Stories",
  "Vocabularies",
  "Exit",
];
void exitFun(){
  SystemNavigator.pop();
}
final List routeName=[
  GrammarTitle(),
  ComingSoonPage(),
  ComingSoonPage(),
  "exit"
];
const headingIcons=[
"assets/images/grammar.png",
  "assets/images/story.png",
  "assets/images/vocabulary.png",
  "assets/images/exit.png"
];
const subHeaders=[
"Nouns",
"Pronouns",
"Adjectives",
"Verbs",
"Articles",
"Preposition",
"Clauses",
"Modals and Modality",
"Gerunds and Infinitives",
"Conditional",
"Relative Clauses",
"Report Speech",
"Subjunctive Moods",
"Punctuations",
"Determiners",
"Tags Questions",
"WH&Yes-No questions",
"Passive and Active voice",
];
const pdfPath=[
  "assets/Lessons/pdf/Nouns.pdf",
  "assets/Lessons/pdf/Pronouns.pdf",
  "assets/Lessons/pdf/Adjectives.pdf",
  "assets/Lessons/pdf/verbs.pdf",
  "assets/Lessons/pdf/Articles.pdf",
  "assets/Lessons/pdf/Preposition.pdf",
  "assets/Lessons/pdf/Clauses.pdf",
  "assets/Lessons/pdf/Modals and Modality.pdf",
  "assets/Lessons/pdf/Gerunds and infinitives.pdf",
  "assets/Lessons/pdf/Conditionals.pdf",
  "assets/Lessons/pdf/Relative clauses.pdf",
  "assets/Lessons/pdf/Report Speech.pdf",
  "assets/Lessons/pdf/Subjunctives.pdf",
  "assets/Lessons/pdf/Punctuation.pdf",
  "assets/Lessons/pdf/Determiners.pdf",
  "assets/Lessons/pdf/tag_question[1].pdf",
  "assets/Lessons/pdf/WH Questions and YES.pdf",
  "assets/Lessons/pdf/Active and Passive Voice.pdf",
];