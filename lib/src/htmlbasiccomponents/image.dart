import 'htmlwidget.dart';

class Image extends HtmlWidget{
  Image({
    properties,
    style,
    id,
    title,
    this.onClick,
    this.alt,
    this.crossorigin,
    this.height,
    this.ismap,
    this.loading,
    this.longdesc,
    this.referrerpolicy,
    this.sizes,
    this.src,
    this.srcset,
    this.usemap,
    this.width
  }) : super(properties: properties, style: style, id: id, title: title);

  final String? onClick;
  final String? alt;
  final String? crossorigin;
  final String? height;
  final String? ismap;
  final String? loading;
  final String? longdesc;
  final String? referrerpolicy;
  final String? sizes;
  final String? src;
  final String? srcset;
  final String? usemap;
  final String? width;

  @override
  String toHTML() {
    var output = "<img ";
    if (properties != null) {
      output += """class="$properties" """;
    }
    if (style != null) {
      output += """style="$style" """;
    }
    if (id != null) {
      output += """id="$id" """;
    }
    if (title != null) {
      output += """title="$title" """;
    }
    if (onClick != null) {
      output += """onClick="$onClick" """;
    }
    if (alt != null) {
      output += """alt="$alt" """;
    }
    if (crossorigin != null) {
      output += """crossorigin="$crossorigin" """;
    }
    if (height != null) {
      output += """height="$height" """;
    }
    if (ismap != null) {
      output += """ismap="$ismap" """;
    }
    if (loading != null) {
      output += """loading="$loading" """;
    }
    if (longdesc != null) {
      output += """longdesc="$longdesc" """;
    }
    if (referrerpolicy != null) {
      output += """referrerpolicy="$referrerpolicy" """;
    }
    if (sizes != null) {
      output += """sizes="$sizes" """;
    }
    if (src != null) {
      output += """src="$src" """;
    }
    if (srcset != null) {
      output += """srcset="$srcset" """;
    }
    if (usemap != null) {
      output += """usemap="$usemap" """;
    }
    if (width != null) {
      output += """width="$width" """;
    }
    output = "${output.trim()}>";
    return output;
  }
}
