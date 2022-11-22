import 'htmlwidget.dart';

class Header extends HtmlWidget{
  Header({
    widget_class,
    style,
    id,
    this.widgets
  }) : super(widget_class: widget_class, style: style, id: id);

  final List<HtmlWidget?>? widgets;

  String toHTML() {
    var output = "<header>";
    if (widgets != null) {
      widgets!.forEach((element) {
        if (element != null) {
          output += "\n" + element.toHTML();
        }
      });
    }
    return output + "\n</header>";
  }
}
