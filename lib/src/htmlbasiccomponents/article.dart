import 'htmlwidget.dart';

//To be properly implemented

class Article extends HtmlWidget{
  Article({
    properties,
    style,
    id,
    title,
    this.widgets,
    this.onClick,
    this.text
  }) : super(properties: properties, style: style, id: id, title: title);

  final List<HtmlWidget?>? widgets;
  final String? onClick;
  final String? text;

  String toHTML() {
    var output = "<article ";
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
    if (text != null) {
      output = output.trim() + text!;
    }
    return output + "</article>";
  }
}
