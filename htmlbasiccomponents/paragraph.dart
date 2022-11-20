import 'htmlwidget.dart';

class Paragraph extends HtmlWidget {
  Paragraph({
    this.text,
  });

  final String? text;

  @override
  String toHTML() {
    return """<p>$text</p>""";
  }
}
