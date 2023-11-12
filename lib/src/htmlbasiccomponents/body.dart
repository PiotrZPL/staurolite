import 'htmlwidget.dart';

class Body extends HtmlWidget {
  Body({
    this.children,
    properties,
    style,
    id,
    title,

    // Window event attributes
    onafterprint,
    onbeforeprint,
    onbeforeunload,
    onerror,
    onhashchange,
    onload,
    onmessage,
    onoffline,
    ononline,
    onpagehide,
    onpageshow,
    onpopstate,
    onresize,
    onstorage,
    onunload
  }) : super(
    properties: properties,
    style: style,
    id: id,
    title: title,

    // Window event attributes
    onafterprint: onafterprint,
    onbeforeprint: onbeforeprint,
    onbeforeunload: onbeforeunload,
    onerror: onerror,
    onhashchange: onhashchange,
    onload: onload,
    onmessage: onmessage,
    onoffline: onoffline,
    ononline: ononline,
    onpagehide: onpagehide,
    onpageshow: onpageshow,
    onpopstate: onpopstate,
    onresize: onresize,
    onstorage: onstorage,
    onunload: onunload
  );

  final List<HtmlWidget?>? children;

  @override
  String toHTML() {
    String output = "<body ";
    if (properties != null) {
      output += """class="$properties" """;
    }

    // Window event attributes
    if (onafterprint != null) {
      output += """onafterprint="$onafterprint" """;
    }
    if (onbeforeprint != null) {
      output += """onbeforeprint="$onbeforeprint" """;
    }
    if (onbeforeunload != null) {
      output += """onbeforeunload="$onbeforeunload" """;
    }
    if (onerror != null) {
      output += """onerror="$onerror" """;
    }
    if (onhashchange != null) {
      output += """onhashchange="$onhashchange" """;
    }
    if (onload != null) {
      output += """onload="$onload" """;
    }
    if (onmessage != null) {
      output += """onmessage="$onmessage" """;
    }
    if (onoffline != null) {
      output += """onoffline="$onoffline" """;
    }
    if (ononline != null) {
      output += """ononline="$ononline" """;
    }
    if (onpagehide != null) {
      output += """onpagehide="$onpagehide" """;
    }
    if (onpageshow != null) {
      output += """onpageshow="$onpageshow" """;
    }
    if (onpopstate != null) {
      output += """onpopstate="$onpopstate" """;
    }
    if (onresize != null) {
      output += """onresize="$onresize" """;
    }
    if (onstorage != null) {
      output += """onstorage="$onstorage" """;
    }
    if (onunload != null) {
      output += """onunload="$onunload" """;
    }
    output = "${output.trim()}>";
    if (children != null) {
      for (var element in children!) {
        if (element != null) {
          output += "\n${element.toHTML()}";
        }
      }
    }
    return "$output\n</body>";
  }
}
