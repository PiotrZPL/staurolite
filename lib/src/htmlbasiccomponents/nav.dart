import 'htmlwidget.dart';

class Nav extends HtmlWidget{
  Nav({
    properties,
    style,
    id,
    this.widgets
  }) : super(properties: properties, style: style, id: id);

  final List<HtmlWidget?>? widgets;

  String toHTML() {
    var output = "<nav ";
    if (properties != null) {
      output += """class="$properties" """;
    }
    if (style != null) {
      output += """style="$style" """;
    }
    if (id != null) {
      output += """id="$id" """;
    }
    output = output.trim() + ">";
    if (widgets != null) {
      widgets!.forEach((element) {
        if (element != null) {
          output += "\n" + element.toHTML();
        }
      });
    }
    return output + "\n</nav>";
  }
}
