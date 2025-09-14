import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class IRSPaymentWebView extends StatefulWidget {
  const IRSPaymentWebView({Key? key}) : super(key: key);

  @override
  State<IRSPaymentWebView> createState() => _IRSPaymentWebViewState();
}

class _IRSPaymentWebViewState extends State<IRSPaymentWebView> {
  late final WebViewController _controller;

  @override
  void initState() {
    super.initState();
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse('https://www.irs.gov/payments'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('IRS Payments'),
      ),
      body: WebViewWidget(controller: _controller),
    );
  }
}
