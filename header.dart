import 'htmlwidget.dart';

class Header {
  const Header({this.widgets});

  final List<HtmlWidget?>? widgets;

  String toHTML() {
    var output = "<header>";
    if (widgets != null) {
      widgets!.forEach((element) {
        if (element != null) {
          output += element.toHTML();
        }
      });
    }
    return output + "</header>";
  }
}
