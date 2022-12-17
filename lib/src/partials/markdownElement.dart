import '../htmlbasiccomponents/htmlwidget.dart';
import '../htmlbasiccomponents/htmlbasiccomponents.dart';
import 'package:markdown/markdown.dart';

class MarkdownElement extends HtmlWidget {
  MarkdownElement({
    required this.markdown
  });

  final String markdown;

  @override
  String toHTML() {
    return """<div>${markdownToHtml(markdown)}</div>""";
  }
}