import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

import '../../resources/app_urls.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late InAppWebViewController controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: InAppWebView(
          initialUrlRequest: URLRequest(url: WebUri(AppUrls.baseUrl)),
          initialSettings: InAppWebViewSettings(
            javaScriptCanOpenWindowsAutomatically: true,
            supportMultipleWindows: true,
          ),
          onWebViewCreated: (controller) => this.controller = controller,
        ),
      ),
    );
  }
}
