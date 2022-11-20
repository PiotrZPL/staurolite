import 'htmlbasiccomponents/htmlbasiccomponents.dart';

void main() {
  var myHyperlink = Hyperlink(text: "Piotr Lange", href: "piotrlange.de");
  var myParagraph = Paragraph(text: "OK");

  var myHTML = HtmlDoc(
    head: Head(
      title: "First Page", 
      widgets: [],
    ),
    body: Body(
      widgets: [
        myHyperlink,
        myParagraph,
        Heading(text: "HEADING")
      ]
    )
  );

  print(myHTML.toHTML());
}
