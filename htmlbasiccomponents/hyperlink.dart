import 'htmlwidget.dart';

class Hyperlink extends HtmlWidget {
  Hyperlink({
    this.text,
    this.href,
    this.onClick,
    widget_class,
    style,
    id,
  }) : super(widget_class: widget_class, style: style, id: id);

  final String? text;
  final String? href;
  final String? onClick;

  @override
  String toHTML() {
    var output = "<a ";
    if (href != null) {
      output += """href="$href" """;
    }
    if (onClick != null) {
      output += """onClick="$onClick" """;
    }
    if (widget_class != null) {
      output += """class="$widget_class" """;
    }
    if (style != null) {
      output += """style="$style" """;
    }
    if (id != null) {
      output += """id="$id" """;
    }
    output = output.trim() + ">$text</a>";
    return output;
  }
}
