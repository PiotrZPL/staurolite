import 'htmlwidget.dart';

class Hyperlink extends HtmlWidget {
  Hyperlink({
    this.text,
    this.href,
    this.onClick,
    this.widgets,
    widget_class,
    style,
    id,
  }) : super(widget_class: widget_class, style: style, id: id);

  final String? text;
  final String? href;
  final String? onClick;
  final List<HtmlWidget?>? widgets;

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
    output = output.trim() + ">";
    if (widgets != null) {
      widgets!.forEach((element) {
        if (element != null) {
          output += "\n" + element.toHTML();
        }
      });
    }
    if (text != null) {
      output += text!;
    }
    output += "</a>";
    return output;
  }
}
