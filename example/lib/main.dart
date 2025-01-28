import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:html' as html;

import 'package:flutter/services.dart';
import 'package:x_printer_thermal_web/x_printer_thermal_web.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _printer = XPrinterThermalWeb();

  void _onPrint() {
    var data = <String>[];
    data.add("<h1>This is a Header</h1>");
    for (var i = 0; i < 3; i++) {
      data.add("<p>Data-$i</p>");
    }
    _printer.printHtmlString(data: data);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Print Web'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _onPrint,
          child: const Text('Print'),
        ),
      ),
    );
  }
}
