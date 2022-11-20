import 'htmlwidget.dart';

class Body {
  const Body({
    this.widgets,
  });

  final List<HtmlWidget?>? widgets;

  String toHTML() {
    var output = "<body>";
    if (widgets != null) {
      widgets!.forEach((element) {
        if (element != null) {
          output += element.toHTML();
        }
      });
    }
    return output + "</body>";
  }
}
