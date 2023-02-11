import 'htmlwidget.dart';

class ThematicBreak extends HtmlWidget{
  ThematicBreak({
    properties,
    style,
    id,
    title,
    this.onClick,
  }) : super(properties: properties, style: style, id: id, title: title);

  final String? onClick;

  String toHTML() {
    var output = "<hr ";
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
    if (onClick != null) {
      output += """onClick="$onClick" """;
    }
    output = output.trim() + ">";
    return output + "\n</hr>";
  }
}
