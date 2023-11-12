import 'htmlwidget.dart';

class IndicateText extends HtmlWidget{
  IndicateText({
    properties,
    style,
    id,
    title,
    this.onClick,
  }) : super(properties: properties, style: style, id: id, title: title);

  final String? onClick;

  @override
  String toHTML() {
    var output = "<i ";
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
    output = "${output.trim()}>";
    return "$output</i>";
  }
}
