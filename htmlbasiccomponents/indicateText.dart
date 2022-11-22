import 'htmlwidget.dart';

class IndicateText extends HtmlWidget{
  IndicateText({
    widget_class,
    style,
    id,
    title,
    this.onClick,
  }) : super(widget_class: widget_class, style: style, id: id, title: title);

  final String? onClick;

  String toHTML() {
    var output = "<i ";
    if (widget_class != null) {
      output += """class="$widget_class" """;
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
    return output + "</i>";
  }
}
