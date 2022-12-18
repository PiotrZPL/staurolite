import 'body.dart';
import 'head.dart';

class HtmlDoc {
  const HtmlDoc({
    required this.head,
    required this.body,
    this.lang,
    required this.path,
    this.description,
    this.publishDate,
  });

  final Head head;
  final Body body;
  final String? lang;
  final String path;
  final String? description;
  final String? publishDate;

  String toHTML() {
    return """<!DOCTYPE html>
<html${lang!=null ? " lang=\"$lang\" " : ""}>
${head.toHTML()}
${body.toHTML()}
</html> """;
  }
}
