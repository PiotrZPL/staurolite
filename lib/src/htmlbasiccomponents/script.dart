import 'htmlwidget.dart';

class Script extends HtmlWidget {
  Script({
    properties,
    style,
    id,
    title,
    this.script,
    this.async,
    this.crossorigin,
    this.defer,
    this.integrity,
    this.nomodule,
    this.referrerpolicy,
    this.src,
    this.type
  }) : super(properties: properties, style: style, id: id, title: title);

  final String? script;
  final bool? async;
  final String? crossorigin;
  final bool? defer;
  final String? integrity;
  final String? nomodule;
  final String? referrerpolicy;
  final String? src;
  final String? type;

  @override
  String toHTML() {
    var output = "<script ";
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
    if (async != null && async == true) {
      output += """async """;
    }
    if (crossorigin != null) {
      output += """crossorigin="$crossorigin" """;
    }
    if (defer != null && defer == true) {
      output += """defer """;
    }
    if (integrity != null) {
      output += """integrity="$integrity" """;
    }
    if (nomodule != null) {
      output += """nomodule="$nomodule" """;
    }
    if (referrerpolicy != null) {
      output += """referrerpolicy="$referrerpolicy" """;
    }
    if (src != null) {
      output += """src="$src" """;
    }
    if (type != null) {
      output += """type="$type" """;
    }
    output = "${output.trim()}>";
    if (script != null) {
      output += script!;
    }
    output += "</script>";
    return output;
  }
}
