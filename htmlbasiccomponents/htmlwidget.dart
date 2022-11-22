class HtmlWidget {
  HtmlWidget({
    this.widget_class,
    this.style,
    this.id,
    this.title
  });

  final String? widget_class;
  final String? style;
  final String? id;
  final String? title;

  String toHTML() {
    return "OK";
  }
}
