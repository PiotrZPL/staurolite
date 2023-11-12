import 'htmlwidget.dart';

class Paragraph extends HtmlWidget {
  Paragraph({
    properties,
    style,
    id,
    title,
    this.text,
  }) : super(properties: properties, style: style, id: id, title: title);

  final String? text;

  @override
  String toHTML() {
    var output = "<p ";
    if (properties != null) {
      output += """class="$properties" """;
    }
    if (style != null) {
      output += """style="$style" """;
    }
    if (id != null) {
      output += """id="$id" """;
    }
    if (title != null) {
      output += """title="$title" """;
    }
    output = "${output.trim()}>";
    if (text != null) {
      output += text!;
    }
    output += "</p>";
    return output;
  }
}
