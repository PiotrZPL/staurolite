import 'htmlwidget.dart';

class Body {
  const Body({
    this.widgets,
    this.widget_class
  });

  final List<HtmlWidget?>? widgets;
  final String? widget_class;

  String toHTML() {
    String output = "<body ";
    if (widget_class != null) {
      output += """class="$widget_class" """;
    }
    output = output.trim() + ">";
    if (widgets != null) {
      widgets!.forEach((element) {
        if (element != null) {
          output += "\n" + element.toHTML();
        }
      });
    }
    return output + "\n</body>";
  }
}
