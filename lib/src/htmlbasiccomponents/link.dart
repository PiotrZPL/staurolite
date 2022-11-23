import 'htmlwidget.dart';

class Link extends HtmlWidget {
  Link({
    this.crossorigin,
    this.href,
    this.hreflang,
    this.media,
    this. referrerpolicy,
    this.rel,
    this.sizes,
    this.title,
    this.type
    });

  final String? crossorigin;
  final String? href;
  final String? hreflang;
  final String? media;
  final String? referrerpolicy;
  final String? rel;
  final String? sizes;
  final String? title;
  final String? type;

  @override
  String toHTML() {
    String output = "<link ";
    if (crossorigin != null) {
      output += """crossorigin="$crossorigin" """;
    }
    if (href != null) {
      output += """href="$href" """;
    }
    if (hreflang != null) {
      output += """hreflang="$hreflang" """;
    }
    if (media != null) {
      output += """media="$media" """;
    }
    if (referrerpolicy != null) {
      output += """referrerpolicy="$referrerpolicy" """;
    }
    if (rel != null) {
      output += """rel="$rel" """;
    }
    if (sizes != null) {
      output += """sizes="$sizes" """;
    }
    if (title != null) {
      output += """title="$title" """;
    }
    if (type != null) {
      output += """type="$type" """;
    }
    return output.trim() + ">";
  }
}
