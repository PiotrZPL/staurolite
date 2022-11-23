import 'htmlwidget.dart';

class Span extends HtmlWidget{
  Span({
    widget_class,
    style,
    id,
    this.widgets,
    this.text
  }) : super(widget_class: widget_class, style: style, id: id);

  final List<HtmlWidget?>? widgets;
  final String? text;

  String toHTML() {
    var output = "<span ";
    if (widget_class != null) {
      output += """class="$widget_class" """;
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
