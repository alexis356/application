import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';


class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

  final controller = WebViewController()
  ..setJavaScriptMode(JavaScriptMode.unrestricted)
  ..loadRequest(Uri.parse('http://fanaleappuntamenti.kesug.com'));

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        body: WebViewWidget(controller: controller),
      );
  }
}
