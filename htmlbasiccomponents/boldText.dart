import 'htmlwidget.dart';

class BoldText extends HtmlWidget {
  BoldText({
    this.text,
  });

  final String? text;

  @override
  String toHTML() {
    return """<b>$text</b>""";
  }
}
