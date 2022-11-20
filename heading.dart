import 'htmlwidget.dart';

class Heading extends HtmlWidget {
  Heading({
    this.text,
    this.level = 1,
  });

  final String? text;
  int level;

  @override
  String toHTML() {
    return """<h${level.toString()}>$text</h${level.toString()}>""";
  }
}
