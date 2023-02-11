import 'htmlwidget.dart';

class Footer extends HtmlWidget{
  Footer({
    properties,
    style,
    id,
    title,
    this.children,
    this.onClick
  }) : super(properties: properties, style: style, id: id, title: title);

  final List<HtmlWidget?>? children;
  final String? onClick;

  String toHTML() {
    var output = "<footer ";
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
    if (children != null) {
      children!.forEach((element) {
        if (element != null) {
          output += "\n" + element.toHTML();
        }
      });
    }
    return output + "\n</footer>";
  }
}
