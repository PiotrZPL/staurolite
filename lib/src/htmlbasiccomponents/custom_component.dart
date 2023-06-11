import 'htmlwidget.dart';

class CustomComponent extends HtmlWidget{
  CustomComponent({
    required this.html
  }) : super();

  final String html;

  @override
  String toHTML() {
    return html;
  }
}
