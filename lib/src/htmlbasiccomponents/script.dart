import 'htmlwidget.dart';

class Script extends HtmlWidget {
  Script({
    widget_class,
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
  }) : super(widget_class: widget_class, style: style, id: id, title: title);

  final String? script;
  final String? async;
  final String? crossorigin;
  final String? defer;
  final String? integrity;
  final String? nomodule;
  final String? referrerpolicy;
  final String? src;
  final String? type;

  @override
  String toHTML() {
    var output = "<script ";
    if (widget_class != null) {
      output += """class="$widget_class" """;
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
    if (async != null) {
      output += """async="$async" """;
    }
    if (crossorigin != null) {
      output += """crossorigin="$crossorigin" """;
    }
    if (defer != null) {
      output += """defer="$defer" """;
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
    output = output.trim() + ">";
    if (script != null) {
      output += script!;
    }
    output += "</script>";
    return output;
  }
}
