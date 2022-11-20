import 'htmlwidget.dart';

class Nav extends HtmlWidget{
  Nav({
    widget_class,
    style,
    id,
    this.widgets
  }) : super(widget_class: widget_class, style: style, id: id);

  final List<HtmlWidget?>? widgets;

  String toHTML() {
    var output = """<nav class="$widget_class" style="$style" id="$id">""";
    if (widgets != null) {
      widgets!.forEach((element) {
        if (element != null) {
          output += element.toHTML();
        }
      });
    }
    return output + "</nav>";
  }
}
