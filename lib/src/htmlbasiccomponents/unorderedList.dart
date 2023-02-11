import 'htmlwidget.dart';

class UnorderedList extends HtmlWidget{
  UnorderedList({
    properties,
    style,
    id,
    title,
    this.onClick,
    this.widgets
  }) : super(properties: properties, style: style, id: id, title: title);

  final List<HtmlWidget?>? widgets;
  final String? onClick;

  String toHTML() {
    var output = "<ul ";
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
    return output + "\n</ul>";
  }
}
