import 'htmlwidget.dart';

class Header extends HtmlWidget{
  Header({
    properties,
    style,
    id,
    this.widgets
  }) : super(properties: properties, style: style, id: id);

  final List<HtmlWidget?>? widgets;

  String toHTML() {
    var output = "<header ";
    if (properties != null) {
      output += """class="$properties" """;
    }
    output = output.trim() + ">";
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
