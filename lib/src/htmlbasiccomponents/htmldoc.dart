import 'body.dart';
import 'head.dart';

class HtmlDoc {
  const HtmlDoc({
    required this.head,
    required this.body,
    this.lang,
    required this.path
  });

  final Head head;
  final Body body;
  final String? lang;
  final String path;

  String toHTML() {
    return """<!DOCTYPE html>
<html${lang!=null ? " $lang " : ""}>
${head.toHTML()}
${body.toHTML()}
</html> """;
  }
}
