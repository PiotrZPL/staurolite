import 'dart:convert';

import 'htmlbasiccomponents/htmlbasiccomponents.dart';

class Website {
  const Website({
    required this.listOfHtml,
  });

  final List<HtmlDoc> listOfHtml;

  List<HtmlDoc> build() {
    return listOfHtml;
  }
}
