import 'htmlwidget.dart';

class Heading extends HtmlWidget {
  Heading({
    this.text,
    this.level = 1,
    this.children,
    properties,
    style,
    id,
  }) : super(properties: properties, style: style, id: id);

  final String? text;
  int level;
  final List<HtmlWidget?>? children;

  @override
  String toHTML() {
    var output = "<h${level.toString()} ";
    if (properties != null) {
      output += """class="$properties" """;
    }
    if (style != null) {
      output += """style="$style" """;
    }
    if (id != null) {
      output += """id="$id" """;
    }
    output = "${output.trim()}>";
    if (children != null) {
      for (var element in children!) {
        if (element != null) {
          output += "\n${element.toHTML()}";
        }
      }
    }
    if (text != null) {
      output = output.trim() + text!.replaceAll("\n", "<br>");
    }
    output += "\n</h${level.toString()}>";
    return output;
  }
}
