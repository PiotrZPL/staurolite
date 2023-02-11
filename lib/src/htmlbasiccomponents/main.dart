import 'htmlwidget.dart';

//To be properly implemented

class Main extends HtmlWidget{
  Main({
    properties,
    style,
    id,
    title,
    this.children,
    this.onClick,
    this.text
  }) : super(properties: properties, style: style, id: id, title: title);

  final List<HtmlWidget?>? children;
  final String? onClick;
  final String? text;

  String toHTML() {
    var output = "<main ";
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
    if (text != null) {
      output = output.trim() + text!;
    }
    return output + "</main>";
  }
}
