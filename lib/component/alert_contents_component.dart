import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:flutter/gestures.dart';

class AlertContentsComponent extends StatelessWidget {
  final String contentType;

  const AlertContentsComponent({super.key, required this.contentType});

  void _copyToClipboard(BuildContext context, String text) {
    Clipboard.setData(ClipboardData(text: text));
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Copied!'),
      ),
    );
  }

  Future<void> _openUrlInNewTab(String url) async {
    if (await canLaunchUrlString(url)) {
      await launchUrlString(
        url,
      );
    } else {
      throw 'Cannot open $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    switch (contentType) {
      case "mail":
        return Container(
          child: Row(
            children: [
              Expanded(
                child: Text(
                  "jyyoo0530@gmail.com",
                ),
              ),
              IconButton(
                icon: Icon(Icons.copy),
                onPressed: () =>
                    _copyToClipboard(context, 'jyyoo0530@gmail.com'),
              ),
            ],
          ),
        );
      case "phone":
        return Container(
          child: Row(
            children: [
              Expanded(
                child: Text(
                  "010-3881-1097",
                ),
              ),
              IconButton(
                icon: Icon(Icons.copy),
                onPressed: () =>
                    _copyToClipboard(context, 'jyyoo0530@gmail.com'),
              ),
            ],
          ),
        );
      case "sns":
        return Container(
          child: Row(
            children: [
              Expanded(
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                          text: "Click here to access the SNS Profile",
                          recognizer: TapGestureRecognizer()
                            ..onTap = () async {
                              await _openUrlInNewTab(
                                  "https://www.linkedin.com/in/jeeyoungyoo/");
                            }),
                    ],
                  ),
                ),
              ),
              IconButton(
                icon: Icon(Icons.copy),
                onPressed: () =>
                    _copyToClipboard(context, 'https://www.linkedin.com/in/jeeyoungyoo/'),
              ),
            ],
          ),
        );
      default:
        return Text("Warning: Not Applicable ContentType");
    }
  }
}
