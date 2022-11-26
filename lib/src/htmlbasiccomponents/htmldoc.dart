import 'body.dart';
import 'head.dart';

class HtmlDoc {
  const HtmlDoc({
    required this.head,
    required this.body,
    required this.path
  });

  final Head head;
  final Body body;
  final String path;

  String toHTML() {
    return """<!DOCTYPE html>
<html>
${head.toHTML()}
${body.toHTML()}
</html> """;
  }
}
