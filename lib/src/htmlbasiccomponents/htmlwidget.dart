class HtmlWidget {
  HtmlWidget({
    this.properties,
    this.style,
    this.id,
    this.title,

    // Window event attributes
    this.onafterprint,
    this.onbeforeprint,
    this.onbeforeunload,
    this.onerror,
    this.onhashchange,
    this.onload,
    this.onmessage,
    this.onoffline,
    this.ononline,
    this.onpagehide,
    this.onpageshow,
    this.onpopstate,
    this.onresize,
    this.onstorage,
    this.onunload
  });

  final String? properties;
  final String? style;
  final String? id;
  final String? title;

  // Window event attributes
  final String? onafterprint;
  final String? onbeforeprint;
  final String? onbeforeunload;
  final String? onerror;
  final String? onhashchange;
  final String? onload;
  final String? onmessage;
  final String? onoffline;
  final String? ononline;
  final String? onpagehide;
  final String? onpageshow;
  final String? onpopstate;
  final String? onresize;
  final String? onstorage;
  final String? onunload;

  String toHTML() {
    return "OK";
  }
}
