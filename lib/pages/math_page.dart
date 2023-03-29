import 'package:flutter/material.dart';

class MathPage extends StatefulWidget {
  const MathPage({Key? key}) : super(key: key);

  @override
  State<MathPage> createState() => _MathPageState();
}

class _MathPageState extends State<MathPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Text('math'),
        ),
      ),
    );
  }
}
