import 'body.dart';
import 'head.dart';

class HtmlDoc {
  const HtmlDoc({
    required this.head,
    required this.body,
  });

  final Head head;
  final Body body;

  String toHTML() {
    return """<!DOCTYPE html>
<html>
${head.toHTML()}
${body.toHTML()}
</html> """;
  }
}
