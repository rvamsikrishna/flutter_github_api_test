import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class CommitDetails extends StatelessWidget {
  final String url;

  const CommitDetails({Key key, @required this.url}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Commit'),
      ),
      body: WebView(
        initialUrl: url,
      ),
    );
  }
}
