import 'htmlwidget.dart';

class Table extends HtmlWidget{
  Table({
    properties,
    style,
    id,
    title,
    this.widgets,
    this.onClick
  }) : super(properties: properties, style: style, id: id, title: title);

  final List<HtmlWidget?>? widgets;
  final String? onClick;

  String toHTML() {
    var output = "<table ";
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
    if (widgets != null) {
      widgets!.forEach((element) {
        if (element != null) {
          output += "\n" + element.toHTML();
        }
      });
    }
    return output + "\n</table>";
  }
}
