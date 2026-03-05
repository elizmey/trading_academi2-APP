import 'dart:html';
import 'dart:ui_web' as ui;
import 'package:flutter/material.dart';

void main() {
  ui.platformViewRegistry.registerViewFactory(
    'webview',
    (int viewId) {
      IFrameElement iframe = IFrameElement();
      iframe.src = "http://localhost:5000"; // tu web Flask
      iframe.style.border = 'none';
      return iframe;
    },
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: HtmlElementView(viewType: 'webview'),
      ),
    );
  }
}