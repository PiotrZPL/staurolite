import '../htmlbasiccomponents/htmlwidget.dart';
import '../htmlbasiccomponents/htmlbasiccomponents.dart';
import 'package:markdown/markdown.dart';
import 'package:highlight/highlight.dart' show highlight;
import 'package:html/parser.dart' as html_parser;
//import 'dart:js';


class MarkdownElement extends HtmlWidget {
  MarkdownElement({
    required this.markdown
  });

  final String markdown;

  @override
  String toHTML() {
    var toparse = markdownToHtml(markdown);
    var interpretation = html_parser.parse(toparse);
    var codeinstances = interpretation.querySelectorAll("code");
    for (var iii in codeinstances) {
      var thistext = iii.text;
      // print(thistext);
      var newtext = highlight.parse(thistext, language: iii.attributes["class"].toString().replaceAll("language-", "")).toHtml();
      // print(newtext);
      toparse = toparse.replaceAll(thistext, newtext);
      // print(toparse);
    }
    return """<div>$toparse</div>""";
  }
}