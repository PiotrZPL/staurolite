import 'htmlwidget.dart';

//To be properly implemented

class Main extends HtmlWidget{
  Main({
    widget_class,
    style,
    id,
    title,
    this.widgets,
    this.onClick,
    this.text
  }) : super(widget_class: widget_class, style: style, id: id, title: title);

  final List<HtmlWidget?>? widgets;
  final String? onClick;
  final String? text;

  String toHTML() {
    var output = "<main ";
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
    return output + "</main>";
  }
}
