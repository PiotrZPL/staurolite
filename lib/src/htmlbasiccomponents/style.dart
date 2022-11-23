import 'htmlwidget.dart';

class Style extends HtmlWidget {
  Style({
    this.css,
  });

  final String? css;

  @override
  String toHTML() {
    return """<style>$css</style>""";
  }
}
