class HtmlWidget {
  HtmlWidget({
    this.widget_class,
    this.style,
    this.id,
  });

  final String? widget_class;
  final String? style;
  final String? id;

  String toHTML() {
    return "OK";
  }
}
