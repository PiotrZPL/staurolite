import 'htmlwidget.dart';

class Nav extends HtmlWidget{
  Nav({
    properties,
    style,
    id,
    this.children
  }) : super(properties: properties, style: style, id: id);

  final List<HtmlWidget?>? children;

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
    if (children != null) {
      children!.forEach((element) {
        if (element != null) {
          output += "\n" + element.toHTML();
        }
      });
    }
    return output + "\n</nav>";
  }
}
