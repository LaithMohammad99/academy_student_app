import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ArabicPage extends StatefulWidget {
  const ArabicPage({Key? key}) : super(key: key);

  @override
  State<ArabicPage> createState() => _ArabicPageState();
}
final Uri _url = Uri.parse('https://youtu.be/s0g4ty29Xgg');
Future<void> _launchUrl() async {
  if (!await launchUrl(_url)) throw 'Could not launch $_url';
}
class _ArabicPageState extends State<ArabicPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Container(child: MaterialButton(onPressed: _launchUrl ,child: Text('Go youTube'),),)),);
  }
}
