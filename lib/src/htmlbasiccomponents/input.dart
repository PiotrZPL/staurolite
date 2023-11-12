import "htmlwidget.dart";

class Input extends HtmlWidget {
  Input({
    properties,
    style,
    id,
    title,
    this.children,
    this.onClick,
    this.text,
    this.accept,
    this.alt,
    this.autocomplete,
    this.autofocus,
    this.checked,
    this.dirname,
    this.disabled,
    this.form,
    this.formaction,
    this.formenctype,
    this.formmethod,
    this.formnovalidate,
    this.formtarget,
    this.height,
    this.list,
    this.max,
    this.maxlength,
    this.pattern,
    this.placeholder,
    this.readonly,
    this.required,
    this.size,
    this.src,
    this.step,
    this.type,
    this.value,
    this.width,
  }) : super(properties: properties, style: style, id: id, title: title);

  final List<HtmlWidget?>? children;
  final String? onClick;
  final String? text;

  final String? accept;
  final String? alt;
  final String? autocomplete;
  final String? autofocus;
  final String? checked;
  final String? dirname;
  final String? disabled;
  final String? form;
  final String? formaction;
  final String? formenctype;
  final String? formmethod;
  final String? formnovalidate;
  final String? formtarget;
  final String? height;
  final String? list;
  final String? max;
  final String? maxlength;
  final String? pattern;
  final String? placeholder;
  final String? readonly;
  final String? required;
  final String? size;
  final String? src;
  final String? step;
  final String? type;
  final String? value;
  final String? width;

  @override
  String toHTML() {
    var output = "<input ";
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
    if (type != null) {
      output += """type="$type" """;
    }
    if (placeholder != null) {
      output += """placeholder="$placeholder" """;
    }
    output = "${output.trim()}>";
    if (children != null) {
      for (var element in children!) {
        if (element != null) {
          output += "\n${element.toHTML()}";
        }
      }
    }
    if (text != null) {
      output = output.trim() + text!;
    }
    return "$output</input>";
  }
}