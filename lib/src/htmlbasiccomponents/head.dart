import 'htmlwidget.dart';

class Head {
  const Head({this.children, this.title});

  final List<HtmlWidget?>? children;
  final String? title;

  String toHTML() {
    var output = "<head>";
    output += "\n<title>$title</title>";
    if (children != null) {
      for (var element in children!) {
        if (element != null) {
          output += "\n${element.toHTML()}";
        }
      }
    }
    return "$output\n</head>";
  }
}
