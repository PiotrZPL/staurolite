import 'htmlwidget.dart';

class Heading extends HtmlWidget {
  Heading({
    this.text,
    this.level = 1,
    this.widgets,
    widget_class,
    style,
    id,
  }) : super(widget_class: widget_class, style: style, id: id);

  final String? text;
  int level;
  final List<HtmlWidget?>? widgets;

  @override
  String toHTML() {
    var output = "<h${level.toString()} ";
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
    output = output.trim() + "$text\n</h${level.toString()}>";
    return output;
  }
}
