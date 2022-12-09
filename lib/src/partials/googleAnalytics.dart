import '../htmlbasiccomponents/htmlbasiccomponents.dart';
import '../htmlbasiccomponents/htmlwidget.dart';

class GoogleAnalytics extends HtmlWidget {
  GoogleAnalytics({
    this.tagid
  });

  final String? tagid;

  @override
  String toHTML() {
    return """<!-- Google tag (gtag.js) -->
<script async src="https://www.googletagmanager.com/gtag/js?id=$tagid"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', '$tagid');
</script>""";
  }
}
