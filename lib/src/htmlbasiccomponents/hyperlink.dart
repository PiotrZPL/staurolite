import 'htmlwidget.dart';

class Hyperlink extends HtmlWidget {
  Hyperlink({
    this.text,
    this.href,
    this.onClick,
    this.children,
    properties,
    style,
    id,
    ariaLabel,
  }) : super(
    properties: properties,
    style: style,
    id: id,
    ariaLabel: ariaLabel
  );

  final String? text;
  final String? href;
  final String? onClick;
  final List<HtmlWidget?>? children;

  @override
  String toHTML() {
    var output = "<a ";
    if (href != null) {
      output += """href="$href" """;
    }
    if (onClick != null) {
      output += """onClick="$onClick" """;
    }
    if (properties != null) {
      output += """class="$properties" """;
    }
    if (style != null) {
      output += """style="$style" """;
    }
    if (id != null) {
      output += """id="$id" """;
    }
    if (ariaLabel != null) {
      output += """aria-label="$ariaLabel" """;
    }
    output = "${output.trim()}>";
    if (children != null) {
      for (HtmlWidget? element in children!) {
        if (element != null) {
          output += "\n${element.toHTML()}";
        }
      }
    }
    if (text != null) {
      output += text!;
    }
    output += "</a>";
    return output;
  }
}
