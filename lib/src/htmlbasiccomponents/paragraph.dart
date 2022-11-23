import 'htmlwidget.dart';

class Paragraph extends HtmlWidget {
  Paragraph({
    widget_class,
    style,
    id,
    title,
    this.text,
  }) : super(widget_class: widget_class, style: style, id: id, title: title);

  final String? text;

  @override
  String toHTML() {
    var output = "<p ";
    if (widget_class != null) {
      output += """class="$widget_class" """;
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
    output = output.trim() + ">";
    if (text != null) {
      output += text!;
    }
    output += "</p>";
    return output;
  }
}
