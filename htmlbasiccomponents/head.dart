import 'htmlwidget.dart';

class Head {
  const Head({this.widgets, this.title});

  final List<HtmlWidget?>? widgets;
  final String? title;

  String toHTML() {
    var output = "<head>";
    output += "<title>$title</title>";
    if (widgets != null) {
      widgets!.forEach((element) {
        if (element != null) {
          output += element.toHTML();
        }
      });
    }
    return output + "</head>";
  }
}
