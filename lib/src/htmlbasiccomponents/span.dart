import 'htmlwidget.dart';

class Span extends HtmlWidget{
  Span({
    properties,
    style,
    id,
    this.widgets,
    this.text
  }) : super(properties: properties, style: style, id: id);

  final List<HtmlWidget?>? widgets;
  final String? text;

  String toHTML() {
    var output = "<span ";
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
    return output + "$text</span>";
  }
}
