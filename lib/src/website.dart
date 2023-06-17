import 'htmlbasiccomponents/htmlbasiccomponents.dart';

class Website {
  const Website({
    required this.listOfHtml,
    required this.baseUrl
  });

  final List<HtmlDoc> listOfHtml;
  final String baseUrl;

  List<HtmlDoc> build() {
    return listOfHtml;
  }
}
