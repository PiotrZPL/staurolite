import 'htmlwidget.dart';

class Header extends HtmlWidget{
  Header({
    properties,
    style,
    id,
    this.children
  }) : super(properties: properties, style: style, id: id);

  final List<HtmlWidget?>? children;

  @override
  String toHTML() {
    var output = "<header ";
    if (properties != null) {
      output += """class="$properties" """;
    }
    output = "${output.trim()}>";
    if (children != null) {
      for (var element in children!) {
        if (element != null) {
          output += "\n${element.toHTML()}";
        }
      }
    }
    return "$output\n</header>";
  }
}
