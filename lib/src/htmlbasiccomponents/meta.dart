import 'htmlwidget.dart';

class Meta extends HtmlWidget {
  Meta({
    this.charset,
    this.content,
    // ignore: non_constant_identifier_names
    this.http_equiv,
    this.name,
    this.property,
  });

  final String? charset;
  final String? content;
  // ignore: non_constant_identifier_names
  final String? http_equiv;
  final String? name;
  final String? property;

  @override
  String toHTML() {
    String output = "<meta ";
    if (charset != null) {
      output += """charset="$charset" """;
    }
    if (name != null) {
      output += """name="$name" """;
    }
    if (http_equiv != null) {
      output += """http-equiv="$http_equiv" """;
    }
    if (property != null) {
      output += """property="$property" """;
    }
    if (content != null) {
      output += """content="$content" """;
    }
    return "${output.trim()}>";
  }
}
