import 'htmlwidget.dart';

class Div extends HtmlWidget{
  Div({
    widget_class,
    style,
    id,
    this.widgets
  }) : super(widget_class: widget_class, style: style, id: id);

  final List<HtmlWidget?>? widgets;

  String toHTML() {
    var output = "<div ";
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
    return output + "\n</div>";
  }
}
