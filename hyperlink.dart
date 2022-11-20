import 'htmlwidget.dart';

class Hyperlink extends HtmlWidget {
  Hyperlink({
    this.text,
    this.href,
  });

  final String? text;
  final String? href;

  @override
  String toHTML() {
    return """<a href="$href">$text</a>""";
  }
}
