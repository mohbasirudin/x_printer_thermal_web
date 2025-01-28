import 'dart:html' as html;

import 'package:flutter/foundation.dart';

class XPrinterThermalWeb {
  void printHtmlString({required List<String> data}) {
    try {
      var content = data.join("<br>");

      final styleElement = html.StyleElement();
      styleElement.text = '''
        @media print {
          @page {
            margin: 0;
            size: auto;
          }
          body {
            margin: 1.6cm;
          }
          /* Hide URL/Header/Footer */
          html {
            -webkit-print-color-adjust: exact;
          }
        }
      ''';

      final printContainer = html.DivElement()..id = 'print-content';

      printContainer.innerHtml = content;

      html.document.head?.append(styleElement);
      html.document.body?.append(printContainer);

      html.window.print();

      Future.delayed(
        const Duration(milliseconds: 100),
        () {
          styleElement.remove();
          printContainer.remove();
        },
      );
    } catch (e) {
      if (kDebugMode) {
        print("error print html string: $e");
      }
    }
  }
}
